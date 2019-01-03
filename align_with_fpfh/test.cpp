#include <pcl/io/pcd_io.h>
#include <ctime>
#include <Eigen/Core>
#include <pcl/point_types.h>
#include <pcl/point_cloud.h>
#include <pcl/features/fpfh.h>
#include <pcl/registration/ia_ransac.h>
#include <pcl/features/normal_3d.h>
#include <pcl/kdtree/kdtree_flann.h>
#include <pcl/visualization/pcl_visualizer.h>
#include <boost/thread/thread.hpp>
#include <pcl/registration/icp.h>
#include <pcl/features/fpfh_omp.h> //包含fpfh加速计算的omp(多核并行计算)
#include <pcl/registration/correspondence_estimation.h>
#include <pcl/registration/correspondence_rejection_features.h> //特征的错误对应关系去除
#include <pcl/registration/correspondence_rejection_sample_consensus.h> //随机采样一致性去除
#include <pcl/filters/voxel_grid.h>
#include <pcl/filters/approximate_voxel_grid.h>
using namespace std;
typedef pcl::PointCloud<pcl::PointXYZ> pointcloud;
typedef pcl::PointCloud<pcl::Normal> pointnormal;
typedef pcl::PointCloud<pcl::FPFHSignature33> fpfhFeature;

fpfhFeature::Ptr compute_fpfh_feature(pointcloud::Ptr input_cloud,pcl::search::KdTree<pcl::PointXYZ>::Ptr tree)
{
        //法向量
        pointnormal::Ptr point_normal (new pointnormal);
        pcl::NormalEstimation<pcl::PointXYZ,pcl::Normal> est_normal;
        est_normal.setInputCloud(input_cloud);
        est_normal.setSearchMethod(tree);
        est_normal.setKSearch(10);
        est_normal.compute(*point_normal);
        //fpfh 估计
        fpfhFeature::Ptr fpfh (new fpfhFeature);
        //pcl::FPFHEstimation<pcl::PointXYZ,pcl::Normal,pcl::FPFHSignature33> est_target_fpfh;
        pcl::FPFHEstimationOMP<pcl::PointXYZ,pcl::Normal,pcl::FPFHSignature33> est_fpfh;
        est_fpfh.setNumberOfThreads(4); //指定4核计算
        // pcl::search::KdTree<pcl::PointXYZ>::Ptr tree4 (new pcl::search::KdTree<pcl::PointXYZ> ());
        est_fpfh.setInputCloud(input_cloud);
        est_fpfh.setInputNormals(point_normal);
        est_fpfh.setSearchMethod(tree);
        est_fpfh.setKSearch(10);
        est_fpfh.compute(*fpfh);

        return fpfh;
        
}



int main (int argc, char **argv)
{
        if (argc < 3)
        {
                cout<<"please input two pointcloud"<<endl;
                return -1;
        }
        
        clock_t start,end,time;
        start  = clock();
        pointcloud::Ptr source (new pointcloud);
        pointcloud::Ptr target (new pointcloud);
        //  pcl::io::loadPCDFile("/home/yxg/pcl/pcd/mid.pcd",*source);
//           pcl::io::loadPCDFile("/home/yxg/pcl/pcd/right_t.pcd",*target);
        pcl::io::loadPCDFile(argv[1],*source);
        pcl::io::loadPCDFile(argv[2],*target);

        cout<<"源点云数据点是："<<source->size()<<endl;
        cout<<"目标点云数据点是："<<target->size()<<endl;
        /* 
        //     pcl::ApproximateVoxelGrid<pcl::PointXYZ> approximate_voxel_grid;
        pcl::VoxelGrid<pcl::PointXYZ> approximate_voxel_grid;
        approximate_voxel_grid.setLeafSize(0.5,0.5,0.5); //这里的数值越大，则精简的越厉害（剩下的数据少）
        pointcloud::Ptr source (new pointcloud);
        pointcloud::Ptr target (new pointcloud);
        
        approximate_voxel_grid.setInputCloud(source);
        approximate_voxel_grid.filter(*sample_source);
        cout << "source voxel grid  Filte cloud size is " << sample_source->size()<<endl;
        // pcl::io::savePCDFile("voxelgrid.pcd",*out);

        approximate_voxel_grid.setInputCloud(target);
        approximate_voxel_grid.filter(*sample_target);
        */
        
        
        
        pcl::search::KdTree<pcl::PointXYZ>::Ptr tree (new pcl::search::KdTree<pcl::PointXYZ> ());

        fpfhFeature::Ptr source_fpfh =  compute_fpfh_feature(source,tree);
        fpfhFeature::Ptr target_fpfh =  compute_fpfh_feature(target,tree);

        //   source_fpfh = compute_fpfh_feature(source,tree);
        //   target_fpfh = compute_fpfh_feature(target,tree);
        
        
        
        //计算源点云的法向量
        /*
        pointnormal::Ptr source_normal (new pointnormal);
        pcl::NormalEstimation<pcl::PointXYZ,pcl::Normal> norm_source;
        norm_source.setInputCloud(source);
        //norm_source.setInputCloud(sample_source);
        norm_source.setSearchMethod(tree1);
        norm_source.setKSearch(10);
        norm_source.compute(*source_normal);
        //计算源点云的fpfh特征估计
        //  source_fpfh = fpfhFeature::Ptr (new fpfhFeature);
        // pcl::search::KdTree<pcl::PointXYZ>::Ptr tree2 (new pcl::search::KdTree<pcl::PointXYZ> ());
        fpfhFeature::Ptr source_fpfh (new fpfhFeature);
        
        pcl::FPFHEstimationOMP<pcl::PointXYZ,pcl::Normal,pcl::FPFHSignature33> est_sour_fpfh;
        est_sour_fpfh.setNumberOfThreads(10);
        // pcl::FPFHEstimation<pcl::PointXYZ,pcl::Normal,pcl::FPFHSignature33> est_sour_fpfh;
        est_sour_fpfh.setInputCloud(source);
        est_sour_fpfh.setInputNormals(source_normal);
        est_sour_fpfh.setSearchMethod(tree1);
        est_sour_fpfh.setKSearch(10);
        est_sour_fpfh.compute(*source_fpfh);
        */

        //计算目标点的法向，fpfh特征
        /*
        pointnormal::Ptr target_normal (new pointnormal);
        pcl::NormalEstimation<pcl::PointXYZ,pcl::Normal> norm_target;
        //  pcl::search::KdTree<pcl::PointXYZ>::Ptr tree3 (new pcl::search::KdTree<pcl::PointXYZ> ());
        // norm_target.setInputCloud(sample_target);
        norm_target.setInputCloud(target);
        norm_target.setSearchMethod(tree1);
        norm_target.setKSearch(10);
        norm_target.compute(*target_normal);
        
        fpfhFeature::Ptr target_fpfh (new fpfhFeature);
        //pcl::FPFHEstimation<pcl::PointXYZ,pcl::Normal,pcl::FPFHSignature33> est_target_fpfh;
        pcl::FPFHEstimationOMP<pcl::PointXYZ,pcl::Normal,pcl::FPFHSignature33> est_target_fpfh;
        est_target_fpfh.setNumberOfThreads(10); 
        // pcl::search::KdTree<pcl::PointXYZ>::Ptr tree4 (new pcl::search::KdTree<pcl::PointXYZ> ());
        est_target_fpfh.setInputCloud(target);
        est_target_fpfh.setInputNormals(target_normal);
        est_target_fpfh.setSearchMethod(tree1);
        est_target_fpfh.setKSearch(10);
        est_target_fpfh.compute(*target_fpfh);
        */

#if 0
        //计算粗配中对应点
        pcl::registration::CorrespondenceEstimation<pcl::FPFHSignature33,pcl::FPFHSignature33> crude_cor_est;
        //  pcl::registration::CorrespondenceEstimation<pcl::PointXYZ,pcl::PointXYZ> crude_cor_est; 
        // pcl::Correspondences cru_correspondences;
        // pcl::CorrespondencesConstPtr cru_correspondences (new pcl::CorrespondencesConstPtr);

        boost::shared_ptr<pcl::Correspondences> cru_correspondences (new pcl::Correspondences);
        crude_cor_est.setInputSource(source_fpfh);
        crude_cor_est.setInputTarget(target_fpfh);
        //  crude_cor_est.determineCorrespondences(cru_correspondences);
        crude_cor_est.determineReciprocalCorrespondences(*cru_correspondences);
        cout<<"crude size is:"<<cru_correspondences->size()<<endl;
#endif
        //错误对应关系去除
        /* 
        pcl::registration::CorrespondenceRejectorFeatures rejector;
        //   rejector.setInputCorrespondences(cru_correspondences);
        rejector.setSourceFeature<pcl::FPFHSignature33>(source_fpfh,"fpfh_source");
        rejector.setTargetFeature<pcl::FPFHSignature33>(target_fpfh,"fpfh_target");
        rejector.setDistanceThreshold<pcl::FPFHSignature33>(100.0,"dist") ;
        pcl::DefaultPointRepresentation<pcl::FPFHSignature33>::ConstPtr PointRepPtr (new pcl::DefaultPointRepresentation<pcl::FPFHSignature33>) ;
       rejector.setFeatureRepresentation<pcl::FPFHSignature33>(PointRepPtr, "Rep") ;
       std::cout << "Valid : " << rejector.hasValidFeatures() << endl ; //This return 0 
        //  pcl::CorrespondencesConstPtr cru (new pcl::Correspondences);
        pcl::Correspondences cru; 
        //   rejector.applyRejection(cru);
        rejector.getCorrespondences(cru);
        cout<<"错误对应关系去除后 crude size is:"<<cru.size()<<endl;
        */

        /*
        pcl::registration::CorrespondenceRejectorSampleConsensus<pcl::PointXYZ> rejector;
        pcl::Correspondences cru;  
        rejector.setInputSource(source);
        rejector.setInputTarget(target);
        rejector.setInputCorrespondences(cru_correspondences);
        //rejector.setMaximumIterations(100);
        rejector.setInlierThreshold(100);
         cout<<"错误对应关系去除后 crude size is:"<<cru.size()<<endl;
        rejector.getCorrespondences(cru);
        cout<<"错误对应关系去除后 crude size is:"<<cru_correspondences->size()<<endl;
        */
        
        

        //对齐(占用了大部分运行时间)
        pcl::SampleConsensusInitialAlignment<pcl::PointXYZ, pcl::PointXYZ, pcl::FPFHSignature33> sac_ia;
        sac_ia.setInputSource(source);
        sac_ia.setSourceFeatures(source_fpfh);
        sac_ia.setInputTarget(target);
        sac_ia.setTargetFeatures(target_fpfh);
        pointcloud::Ptr align (new pointcloud);
        //  sac_ia.setNumberOfSamples(20);  //设置每次迭代计算中使用的样本数量（可省）,可节省时间
        sac_ia.setCorrespondenceRandomness(6); //设置计算协方差时选择多少近邻点，该值越大，协防差越精确，但是计算效率越低.(可省)
        sac_ia.align(*align); 
        end = clock();
        cout <<"calculate time is: "<< float (end-start)/CLOCKS_PER_SEC<<endl;
        
        

        float score = sac_ia.getFitnessScore();
        Eigen::Matrix4f transform = Eigen::Matrix4f::Identity();
        transform = sac_ia.getFinalTransformation();
        cout<<"粗配准"<<endl;
        cout<<"score is:  "<<score<<endl;
        cout<<"transform matrix is: \n" <<transform<<endl;

        
        //精配准
        pcl::IterativeClosestPoint<pcl::PointXYZ,pcl::PointXYZ> icp;
        icp.setInputSource(align);
        icp.setInputTarget(target);
        icp.setMaximumIterations(1000);
        icp.setTransformationEpsilon(1e-16);
        pointcloud ::Ptr final(new pointcloud);
        //  icp.setMaxCorrespondenceDistance(0.8);
        // icp.setEuclideanFitnessEpsilon(0.000001); //前后两次迭代误差的差值
        icp.align(*final);
        cout<<"icp score is:  "<<icp.getFitnessScore()<<endl;
        cout<<"icp transform matrix is:\n"<<icp.getFinalTransformation ()<<endl;
                


        //可视化
        boost::shared_ptr<pcl::visualization::PCLVisualizer> view (new pcl::visualization::PCLVisualizer("fpfh test"));
        int v1;
        int v2;
        int v3;
        
        view->createViewPort(0,0.0,0.33,1.0,v1);
        view->createViewPort(0.33,0.0,0.66,1.0,v2);
        view->createViewPort(0.66,0,1.0,1.0,v3);
        view->setBackgroundColor(255,255,255,v1);
        view->setBackgroundColor(255,255,255,v2);
        view->setBackgroundColor(255,255,255,v3);

        pcl::visualization::PointCloudColorHandlerCustom<pcl::PointXYZ> sources_cloud_color(source,250,0,0);
        view->addPointCloud(source,sources_cloud_color,"sources_cloud_v1",v1);
        pcl::visualization::PointCloudColorHandlerCustom<pcl::PointXYZ> target_cloud_color (target,0,250,0);
        view->addPointCloud(target,target_cloud_color,"target_cloud_v1",v1);
        view->setPointCloudRenderingProperties(pcl::visualization::PCL_VISUALIZER_POINT_SIZE,2,"sources_cloud_v1");

        pcl::visualization::PointCloudColorHandlerCustom<pcl::PointXYZ>aligend_cloud_color(align,255,0,0);
        view->addPointCloud(align,aligend_cloud_color,"aligend_cloud_v2",v2);
        view->addPointCloud(target,target_cloud_color,"target_cloud_v2",v2);
        view->setPointCloudRenderingProperties(pcl::visualization::PCL_VISUALIZER_POINT_SIZE,4,"aligend_cloud_v2");
        view->setPointCloudRenderingProperties(pcl::visualization::PCL_VISUALIZER_POINT_SIZE,2,"target_cloud_v2");

        pcl::visualization::PointCloudColorHandlerCustom<pcl::PointXYZ>final_cloud_color(final,255,0,0);
        view->addPointCloud(final,final_cloud_color,"final_cloud_v3",v3);
        view->addPointCloud(target,target_cloud_color,"target_cloud_v3",v3);
        view->setPointCloudRenderingProperties(pcl::visualization::PCL_VISUALIZER_POINT_SIZE,4,"final_cloud_v3");
        view->setPointCloudRenderingProperties(pcl::visualization::PCL_VISUALIZER_POINT_SIZE,2,"target_cloud_v3"); 
        

        
        //   view->addCorrespondences<pcl::PointXYZ>(source,target,*cru_correspondences,"correspondence",v1);//添加显示对应点对

        pcl::io::savePCDFile ("crou_output.pcd", *align);
        pcl::io::savePCDFile ("final_align.pcd", *final);
        
         while (!view->wasStopped())
        {
                // view->spin();
                view->spinOnce(100);
                boost::this_thread::sleep (boost::posix_time::microseconds (100000));
                  

        }
        
        
        return 0;

}
