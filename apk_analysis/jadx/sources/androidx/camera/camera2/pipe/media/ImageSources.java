package androidx.camera.camera2.pipe.media;

import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.ImageSourceConfig;

/* JADX INFO: loaded from: classes.dex */
public interface ImageSources {
    ImageSource createImageSource(CameraStream cameraStream, ImageSourceConfig imageSourceConfig);
}
