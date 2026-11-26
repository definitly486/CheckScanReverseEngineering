package androidx.camera.camera2.impl;

import androidx.camera.core.UseCase;
import androidx.camera.core.imagecapture.CameraCapturePipeline;
import defpackage.e02;
import defpackage.mb4;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public interface UseCaseCamera {

    public static final class DefaultImpls {
        @Deprecated
        public static void setActiveResumeMode(UseCaseCamera useCaseCamera, boolean z) {
            UseCaseCamera.super.setActiveResumeMode(z);
        }
    }

    mb4 close();

    Object getCameraCapturePipeline(int i, int i2, int i3, e02<? super CameraCapturePipeline> e02Var);

    UseCaseCameraRequestControl getRequestControl();

    default void setActiveResumeMode(boolean z) {
    }

    void start();

    mb4 updateRepeatingRequestAsync(boolean z, Collection<? extends UseCase> collection);
}
