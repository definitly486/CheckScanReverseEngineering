package androidx.camera.core.impl;

import android.os.Handler;
import defpackage.o2;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_CameraThreadConfig extends CameraThreadConfig {
    private final Executor cameraExecutor;
    private final Handler schedulerHandler;

    public AutoValue_CameraThreadConfig(Executor executor, Handler handler) {
        if (executor == null) {
            o2.d("Null cameraExecutor");
            throw null;
        }
        this.cameraExecutor = executor;
        if (handler != null) {
            this.schedulerHandler = handler;
        } else {
            o2.d("Null schedulerHandler");
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CameraThreadConfig) {
            CameraThreadConfig cameraThreadConfig = (CameraThreadConfig) obj;
            if (this.cameraExecutor.equals(cameraThreadConfig.getCameraExecutor()) && this.schedulerHandler.equals(cameraThreadConfig.getSchedulerHandler())) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.core.impl.CameraThreadConfig
    public Executor getCameraExecutor() {
        return this.cameraExecutor;
    }

    @Override // androidx.camera.core.impl.CameraThreadConfig
    public Handler getSchedulerHandler() {
        return this.schedulerHandler;
    }

    public int hashCode() {
        return this.schedulerHandler.hashCode() ^ ((this.cameraExecutor.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "CameraThreadConfig{cameraExecutor=" + this.cameraExecutor + ", schedulerHandler=" + this.schedulerHandler + "}";
    }
}
