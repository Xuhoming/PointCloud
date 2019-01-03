#include <pcl/visualization/cloud_viewer.h>
#include <iostream>
#include <pcl/io/io.h>
#include <pcl/io/pcd_io.h>

using namespace std;
int user_data;

void viewerOneOff(pcl::visualization::PCLVisualizer &viewer)
{
        viewer.setBackgroundColor(1.0,0.5,1.0);
        //添加一个球体。（为什么添加球体，有啥作用）
        pcl::PointXYZ o;
        o.x = 1.0;
        o.y = 0;
        o.z = 0;
        viewer.addSphere(o,2.5,"shpere",0); //第一个参数是球，第二个是半径，第四个参数设置为0，表示球体可见，为1不可见.
        cout << "i only run once " << endl;
}

void viewerPsycho(pcl::visualization::PCLVisualizer &viewer)
{
        static unsigned count = 0;
        stringstream ss;
        ss << "once per viewer loop" << count++;
        viewer.removeShape("text",0);
        viewer.addText(ss.str(),200,300,"text",0);

        user_data++;
}
int main (int argc,char **argv)
{
        pcl::PointCloud<pcl::PointXYZRGBA>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZRGBA>);
        pcl::io::loadPCDFile("0001_coarseicp.pcd",*cloud);
        pcl::visualization::CloudViewer viewer("cloud viewer");

        viewer.showCloud(cloud);

        //  viewer.runOnVisualizationThreadOnce(viewerOneOff);

        // viewer.runOnVisualizationThread(viewerPsycho);

        while (!viewer.wasStopped()){
                user_data++;
        }
        
        return 0;
}


