N=100

for i in $( seq 0 $N); do
    mkdir project-$i
    cp script.py project-$i/script.py
    cp dvc.yaml project-$i/dvc.yaml
    echo " " >> script.py
    echo "print('$RANDOM-$RANDOM')" >> project-$i/script.py
    echo "seed: $RANDOM" > project-$i/params.yaml
done

