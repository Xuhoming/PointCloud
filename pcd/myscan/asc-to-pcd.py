#coding:utf-8
#import os
import time
from sys import argv
script ,filename = argv
print ("the input file name is:%r." %filename)

start = time.time()
print ("open the file...")
file = open(filename,"r+")

#all = file.read()
#print (all)

count = 0
#统计源文件的点数
for line in file:
    count=count+1
print ("size is %d" %count)
file.close()

#print ("Output file is:")
#output = open("out.pcd","w+")

f_prefix = filename.split('.')[0]
output_filename = '{prefix}.pcd'.format(prefix=f_prefix)
output = open(output_filename,"w+")

list = ['# .PCD v.5 - Point Cloud Data file format\n','VERSION .5\n','FIELDS x y z\n','SIZE 4 4 4\n','TYPE F F F\n','COUNT 1 1 1\n']


#for i in list:
 #   output.write(i)
output.writelines(list)
output.write('WIDTH ')
output.write(str(count))
output.write('\nHEIGHT ')
output.write(str(1))
output.write('\nPOINTS ')
output.write(str(count))
output.write('\nDATA ascii\n')
file1 = open(filename,"r")
all = file1.read()
output.write(all)
output.close()
file1.close()

end = time.time()
print ("run time is: ", end-start)
    

#def change_file(output):
#i,j = os.path.splitext(filename)#分割出文件名与扩展名
#os.rename(output.pcd,i+'.'+'pcd')

    
#change_file(output)
    


# .PCD v.5 - Point Cloud Data file format
#VERSION .5
#FIELDS x y z
#SIZE 4 4 4
#TYPE F F F
#COUNT 1 1 1
#WIDTH 53721
#HEIGHT 1
#POINTS 53721
#DATA ascii
