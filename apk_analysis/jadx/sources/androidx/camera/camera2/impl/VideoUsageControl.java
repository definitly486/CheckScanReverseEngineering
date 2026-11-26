package androidx.camera.camera2.impl;

import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import defpackage.jy8;
import defpackage.kt;
import defpackage.lt;
import defpackage.vh;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class VideoUsageControl implements UseCaseCameraControl {
    private UseCaseCameraRequestControl requestControl;
    private final lt videoUsage = kt.b(0);

    public static abstract class Bindings {
        public abstract UseCaseCameraControl provideControls(VideoUsageControl videoUsageControl);
    }

    public final void decrementUsage() {
        int iA = this.videoUsage.a();
        if (iA >= 0) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                vh.d(iA, "decrementUsage: videoUsage = ", Camera2Logger.TRUNCATED_TAG);
                return;
            }
            return;
        }
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "decrementUsage: videoUsage = " + iA + ", which is less than 0!");
        }
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public UseCaseCameraRequestControl getRequestControl() {
        return this.requestControl;
    }

    public final void incrementUsage() {
        int iB = this.videoUsage.b();
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            vh.d(iB, "incrementUsage: videoUsage = ", Camera2Logger.TRUNCATED_TAG);
        }
    }

    public final boolean isInVideoUsage() {
        int i = this.videoUsage.a;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            vh.d(i, "isInVideoUsage: videoUsage = ", Camera2Logger.TRUNCATED_TAG);
        }
        return i > 0;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        this.videoUsage.a = 0;
        jy8.a aVar = jy8.a.a;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "reset: videoUsage = 0");
        }
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this.requestControl = useCaseCameraRequestControl;
    }
}
