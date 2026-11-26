package androidx.camera.camera2.impl;

import androidx.camera.core.imagecapture.CameraCapturePipeline;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import defpackage.e02;
import defpackage.mk2;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface CapturePipeline {
    Object getCameraCapturePipeline(int i, int i2, int i3, e02<? super CameraCapturePipeline> e02Var);

    int getTemplate();

    void setTemplate(int i);

    /* JADX INFO: renamed from: submitStillCaptures-BvXKQx0 */
    Object mo32submitStillCapturesBvXKQx0(List<CaptureConfig> list, int i, Config config, int i2, int i3, int i4, e02<? super List<? extends mk2<Void>>> e02Var);
}
