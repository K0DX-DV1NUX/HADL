if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

rank=40
seq_len=512
model_name=HADL


root_path_name=./dataset/
data_path_name=ETTh1.csv
model_id_name=ETTh1
data_name=ETTh1

for enable_DCT in 0 1
do
for pred_len in 96 192 336 720
do    
    python -u run_longExp.py \
      --is_training 1 \
      --individual 0 \
      --root_path $root_path_name \
      --data_path $data_path_name \
      --model_id $model_id_name'_'$seq_len'_'$pred_len \
      --model $model_name \
      --data $data_name \
      --features M \
      --train_type Linear \
      --seq_len $seq_len \
      --pred_len $pred_len \
      --enc_in 7 \
      --train_epochs 100 \
      --rank $rank \
      --bias 1 \
      --enable_Haar 1 \
      --enable_DCT $enable_DCT \
      --enable_lowrank 1 \
      --enable_iDCT 0 \
      --patience 20 \
      --des 'Exp' \
      --regularizer 1 \
      --regularization_rate 0.1 \
      --itr 1 \
      --batch_size 32 \
      --learning_rate 0.01
done
done

root_path_name=./dataset/
data_path_name=ETTh2.csv
model_id_name=ETTh2
data_name=ETTh2



for enable_DCT in 0 1
do
for pred_len in 96 192 336 720
do    
    python -u run_longExp.py \
      --is_training 1 \
      --individual 0 \
      --root_path $root_path_name \
      --data_path $data_path_name \
      --model_id $model_id_name'_'$seq_len'_'$pred_len \
      --model $model_name \
      --data $data_name \
      --features M \
      --train_type Linear \
      --seq_len $seq_len \
      --pred_len $pred_len \
      --enc_in 7 \
      --train_epochs 100 \
      --rank $rank \
      --bias 1 \
      --enable_Haar 1 \
      --enable_DCT $enable_DCT \
      --enable_lowrank 1 \
      --enable_iDCT 0 \
      --patience 20 \
      --des 'Exp' \
      --regularizer 1 \
      --regularization_rate 0.1 \
      --itr 1 \
      --batch_size 32 \
      --learning_rate 0.01
done
done

