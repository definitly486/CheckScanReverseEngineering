package androidx.camera.camera2.pipe;

import android.content.Context;
import androidx.camera.camera2.pipe.core.Threads;

/* JADX INFO: loaded from: classes.dex */
public interface CameraContext {
    Context getAppContext();

    CameraBackends getCameraBackends();

    Threads getThreads();
}
