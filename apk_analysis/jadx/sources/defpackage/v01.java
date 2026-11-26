package defpackage;

import androidx.camera.core.CameraExecutor;
import androidx.camera.core.Logger;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v01 implements RejectedExecutionHandler {
    @Override // java.util.concurrent.RejectedExecutionHandler
    public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        Logger.w(CameraExecutor.TAG, "A rejected execution occurred in CameraExecutor!");
    }
}
