#include <iostream>
#include <pcl/console/parse.h>
#include <pcl/filters/extract_indices.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/sample_consensus/ransac.h>
#include <pcl/sample_consensus/sac_model_plane.h>
#include <pcl/sample_consensus/sac_model_sphere.h>
#include <pcl/visualization/pcl_visualizer.h>
#include <boost/thread/thread.hpp>
#include <pcl/sample_consensus/sac_model_line.h>
using namespace std;

int main(int argc,char **argv)
{
        pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>);
        pcl::PointCloud<pcl::PointXYZ>::Ptr final (new pcl::PointCloud<pcl::PointXYZ>);
        pcl::io::loadPCDFile(argv[1],*cloud);

        std::vector<int> inliers;  //存储局内点集合的点的索引的向量

        
        pcl::SampleConsensusModelLine<pcl::PointXYZ>::Ptr line (new pcl::SampleConsensusModelLine<pcl::PointXYZ> (cloud));
        pcl::ModelCoefficients::Ptr coefficients(new pcl::ModelCoefficients());
        pcl::RandomSampleConsensus<pcl::PointXYZ> ransac (line);
        ransac.setDistanceThreshold (10.1);    //距离小于0.01 的点称为局内点考虑
        ransac.computeModel();                   //执行随机参数估计

        Eigen::VectorXf coeff;
        ransac.getModelCoefficients(coeff);
        ransac.getInliers(inliers);


        cout<<"模型参数"<<coeff<<endl;

      
        
        // 复制估算模型的所有的局内点到final中
        //   pcl::copyPointCloud<pcl::PointXYZ>(*cloud, inliers, *final);
        
        // pcl::io::savePCDFile("result.pcd",*final);

        return 0;
}

