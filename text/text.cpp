/*
#include <pcl/point_cloud.h>
#include <pcl/kdtree/kdtree_flann.h>
#include <iostream>
#include <vector>
#include <ctime>
#include <pcl/io/pcd_io.h>

int main (int argc, char **argv)
{
        pcl::PointCloud<pcl::PointXYZ>::Ptr in_cloud (new pcl::PointCloud<pcl::PointXYZ>);
        
        // pcl::PointCloud<pcl::PointXYZ>::Ptr in_cloud (new pcl::PointCloud<pcl::PointXYZ>);
        if (pcl::io::loadPCDFile<pcl::PointXYZ> ("mid.pcd", *in_cloud) == -1) //* load the file
        {
                PCL_ERROR ("Couldn't read file test_pcd.pcd \n");
                return (-1);
        }
        
        /* if (pcl::io::loadPCDFile<pcl::PointXYZ>("mid.pcd",*in_cloud) == -1)
        {
                PCL_ERROR("COULD NOT READ FILE mid.pcl \n");
                return (-1);
        } */
/*
        pcl::KdTreeFLANN<pcl::PointXYZ> kdtree; //创建KDtree
        kdtree.setInputCloud (in_cloud);
        pcl::PointXYZ searchPoint; //创建目标点，（搜索该点的近邻）
        searchPoint.x = 1;
        searchPoint.y = 2;
        searchPoint.z = 3;

        //查询近邻点的个数
        int k = 10; //近邻点的个数
        std::vector<int> pointIdxNKNSearch(k); //存储近邻点集的索引
        std::vector<float>pointNKNSquareDistance(k); //近邻点集的距离
        if (kdtree.nearestKSearch(searchPoint,k,pointIdxNKNSearch,pointNKNSquareDistance)>0)
        {
                for (size_t i = 0; i < pointIdxNKNSearch.size (); ++i)
                        std::cout << "    "  <<   in_cloud->points[ pointIdxNKNSearch[i] ].x 
                                  << " " << in_cloud->points[ pointIdxNKNSearch[i] ].y 
                                  << " " <<in_cloud->points[ pointIdxNKNSearch[i] ].z 
                                  << " (squared distance: " << pointNKNSquaredDistance[i] << ")" << std::endl;
        }

        //半径为r的近邻点
        float radius = 10.0;
        std::vector<int> pointIdxRadiusSearch;
        std::vector<float> pointRadiusSquareDistande;
        if ( kdtree.radiusSearch (searchPoint, radius, pointIdxRadiusSearch, pointRadiusSquaredDistance) > 0 )
        {
          for (size_t i = 0; i < pointIdxRadiusSearch.size (); ++i)
                  std::cout << "    "  <<   cloud->points[ pointIdxRadiusSearch[i] ].x 
                            << " " << cloud->points[ pointIdxRadiusSearch[i] ].y 
                            << " " << cloud->points[ pointIdxRadiusSearch[i] ].z 
                            << " (squared distance: " << pointRadiusSquaredDistance[i] << ")" << std::endl;
        }
        
        return 0;
}
*/

#include <iostream>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>

int
main (int argc, char** argv)
{
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>);

  if (pcl::io::loadPCDFile<pcl::PointXYZ> ("mid.pcd", *cloud) == -1) //* load the file
  {
    PCL_ERROR ("Couldn't read file test_pcd.pcd \n");
    return (-1);
  }
  std::cout << "Loaded "
            << cloud->width * cloud->height
            << " data points from test_pcd.pcd with the following fields: "
            << std::endl;
  for (size_t i = 0; i < cloud->points.size (); ++i)
    std::cout << "    " << cloud->points[i].x
              << " "    << cloud->points[i].y
              << " "    << cloud->points[i].z << std::endl;

  return (0);
}
