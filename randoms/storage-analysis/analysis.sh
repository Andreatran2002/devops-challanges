GREEN="\033[32m"
RESET="\033[0m"
print(){
    echo -e "$GREEN$1 $RESET"
}

for folder in output/*; do
    print "Processing $folder"

    print "--------------------------------"
    print "RANDOM READ 4K"
    IOPS=$(jq '.jobs[0].read.iops' $folder/rand_read4k.json)
    LATENCY=$(jq '.jobs[0].read.clat_ns.mean' $folder/rand_read4k.json | awk '{printf "%.2f", $1/1000000}')
    BANDWIDTH=$(jq '.jobs[0].read.bw_bytes' $folder/rand_read4k.json | awk '{printf "%.2f", $1/1024/1024}')
    echo "IOPS: $IOPS" 
    echo "LATENCY: $LATENCY ms" 
    echo "BANDWIDTH: $BANDWIDTH MB/s" 
    print "--------------------------------"
    print "RANDOM WRITE 4K"
    IOPS=$(jq '.jobs[0].write.iops' $folder/rand_write4k.json)
    LATENCY=$(jq '.jobs[0].write.clat_ns.mean' $folder/rand_write4k.json | awk '{printf "%.2f", $1/1000000}')
    BANDWIDTH=$(jq '.jobs[0].write.bw_bytes' $folder/rand_write4k.json | awk '{printf "%.2f", $1/1024/1024}')
    echo "IOPS: $IOPS" 
    echo "LATENCY: $LATENCY ms" 
    echo "BANDWIDTH: $BANDWIDTH MB/s" 
    print "--------------------------------"
    print "SEQUENTIAL READ 1M"
    IOPS=$(jq '.jobs[0].read.iops' $folder/seq_read1m.json)
    LATENCY=$(jq '.jobs[0].read.clat_ns.mean' $folder/seq_read1m.json | awk '{printf "%.2f", $1/1000000}')
    BANDWIDTH=$(jq '.jobs[0].read.bw_bytes' $folder/seq_read1m.json | awk '{printf "%.2f", $1/1024/1024}')
    echo "IOPS: $IOPS" 
    echo "LATENCY: $LATENCY ms" 
    echo "BANDWIDTH: $BANDWIDTH MB/s" 
    print "--------------------------------"
    print "SEQUENTIAL WRITE 1M"
    IOPS=$(jq '.jobs[0].write.iops' $folder/seq_write1m.json)
    LATENCY=$(jq '.jobs[0].write.clat_ns.mean' $folder/seq_write1m.json | awk '{printf "%.2f", $1/1000000}')
    BANDWIDTH=$(jq '.jobs[0].write.bw_bytes' $folder/seq_write1m.json | awk '{printf "%.2f", $1/1024/1024}')
    echo "IOPS: $IOPS" 
    echo "LATENCY: $LATENCY ms" 
    echo "BANDWIDTH: $BANDWIDTH MB/s" 
    print "--------------------------------"

done