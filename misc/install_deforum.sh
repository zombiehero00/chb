pip install torch==1.13.1+cu117 torchvision==0.14.1+cu117 torchtext==0.14.1 torchaudio==0.13.1 torchdata==0.5.1 --extra-index-url https://download.pytorch.org/whl/cu117

git clone -b stable2 https://github.com/neuralninja22/sd-webui /content/$1
if [ $2 == True ]; then
  git clone -b stable1 https://github.com/ninjaneural/controlnet /content/$1/extensions/controlnet
fi

git clone https://github.com/KohakuBlueleaf/a1111-sd-webui-lycoris /content/$1/extensions/lycoris
git clone -b nightly https://github.com/ninjaneural/deforum /content/$1/extensions/deforum

if [ $2 == True ]; then
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_openpose_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_openpose_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_lineart_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_lineart_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_softedge_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_softedge_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11f1p_sd15_depth_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11f1p_sd15_depth_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_canny_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_canny_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_seg_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_seg_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15s2_lineart_anime_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15s2_lineart_anime_fp16.safetensors

  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_mlsd_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_mlsd_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_normalbae_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_normalbae_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_inpaint_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_inpaint_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11e_sd15_ip2p_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11e_sd15_ip2p_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11e_sd15_shuffle_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11e_sd15_shuffle_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11f1e_sd15_tile_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11f1e_sd15_tile_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_scribble_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_scribble_fp16.safetensors

  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/CiaraRowles/TemporalNet/resolve/main/diff_control_sd15_temporalnet_fp16.safetensors -d /content/$1/extensions/controlnet/models -o diff_control_sd15_temporalnet_fp16.safetensors

  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_style_sd14v1.pth -d /content/$1/extensions/controlnet/models -o t2iadapter_style_sd14v1.pth
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_color_sd14v1.pth -d /content/$1/extensions/controlnet/models -o t2iadapter_color_sd14v1.pth
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_sketch_sd15v2.pth -d /content/$1/extensions/controlnet/models -o t2iadapter_sketch_sd15v2.pth
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_zoedepth_sd15v1.pth -d /content/$1/extensions/controlnet/models -o t2iadapter_zoedepth_sd15v1.pth
fi

sed -i -e "/    prepare_environment()/a\    os.system\(f\\\"\"\"sed -i -e \"s/dict()))/dict())).cuda()/g\" /content/$1/repositories/stable-diffusion-stability-ai/ldm/util.py\"\"\")" /content/$1/launch.py
wget https://raw.githubusercontent.com/neuralninja22/colab/master/misc/config.json -O /content/$1/config.json
