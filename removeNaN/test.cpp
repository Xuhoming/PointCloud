#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/filters/filter.h>
#include <pcl/io/pcd_io.h>

using namespace std;
typedef pcl::PointXYZRGBA point;
typedef pcl::PointCloud<point> CloudType;

int main (int argc,char **argv)
{
        CloudType::Ptr cloud (new CloudType);
        CloudType::Ptr output (new CloudType);

        
        pcl::io::loadPCDFile(argv[1],*cloud);
        cout<<"size is:"<<cloud->size()<<endl;
        
        
        vector<int> indices;
        pcl::removeNaNFromPointCloud(*cloud,*output,indices);
        cout<<"output size:"<<output->size()<<endl;
        

        pcl::io::savePCDFile("1.pcd",*output);

        return 0;
}
