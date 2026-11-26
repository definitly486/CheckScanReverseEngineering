package defpackage;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import com.google.firebase.inappmessaging.internal.InstallationIdResult;
import com.google.firebase.installations.InstallationTokenResult;
import java.security.InvalidKeyException;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import yads.az1;
import yads.l66;
import yads.mb2;
import yads.st3;
import yads.tz1;
import yads.zg1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ti0 implements li0, st3, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ ti0(int i) {
        this.b = i;
    }

    public static int b(int i, int i2, int i3, int i4) {
        return (i * i2) + i3 + i4;
    }

    public static StringBuilder c(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void d(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) throws Exception {
        boolean zIsTerminated;
        if (cameraCaptureSessionWrapper instanceof AutoCloseable) {
            cameraCaptureSessionWrapper.close();
            return;
        }
        if (!(cameraCaptureSessionWrapper instanceof ExecutorService)) {
            if (cameraCaptureSessionWrapper instanceof TypedArray) {
                ((TypedArray) cameraCaptureSessionWrapper).recycle();
                return;
            }
            if (cameraCaptureSessionWrapper instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) cameraCaptureSessionWrapper).release();
                return;
            } else if (cameraCaptureSessionWrapper instanceof MediaDrm) {
                ((MediaDrm) cameraCaptureSessionWrapper).release();
                return;
            } else {
                mi2.b();
                return;
            }
        }
        ExecutorService executorService = (ExecutorService) cameraCaptureSessionWrapper;
        if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
            return;
        }
        executorService.shutdown();
        boolean z = false;
        while (!zIsTerminated) {
            try {
                zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
            } catch (InterruptedException unused) {
                if (!z) {
                    executorService.shutdownNow();
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public static /* synthetic */ void e(String str) throws InvalidKeyException {
        throw new InvalidKeyException(str);
    }

    public static /* synthetic */ void f(Throwable th) {
        throw new RuntimeException(th);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 8:
                return mb2.a(((Long) obj).longValue());
            case 9:
                return tz1.a(((Double) obj).doubleValue());
            default:
                return zg1.a(((Double) obj).doubleValue());
        }
    }

    @Override // defpackage.li0
    public Object apply(Object obj, Object obj2) {
        return InstallationIdResult.create((String) obj, (InstallationTokenResult) obj2);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return az1.a(list);
    }
}
