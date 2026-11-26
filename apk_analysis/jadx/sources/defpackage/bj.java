package defpackage;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import androidx.camera.camera2.pipe.FrameCapture;
import com.google.android.gms.internal.play_billing.zzfx;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import yads.b02;
import yads.l66;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bj implements l66 {
    public static int b(int i, int i2, int i3) {
        return zzfx.zzy(i) + i2 + i3;
    }

    public static String c(String str, String str2) {
        return str + str2;
    }

    public static /* synthetic */ void d(int i, StringBuilder sb) {
        sb.append(i);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void e(FrameCapture frameCapture) throws Exception {
        boolean zIsTerminated;
        if (frameCapture instanceof AutoCloseable) {
            frameCapture.close();
            return;
        }
        if (!(frameCapture instanceof ExecutorService)) {
            if (frameCapture instanceof TypedArray) {
                ((TypedArray) frameCapture).recycle();
                return;
            }
            if (frameCapture instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) frameCapture).release();
                return;
            } else if (frameCapture instanceof MediaDrm) {
                ((MediaDrm) frameCapture).release();
                return;
            } else {
                mi2.b();
                return;
            }
        }
        ExecutorService executorService = (ExecutorService) frameCapture;
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

    public static /* synthetic */ void f(Object obj) {
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return b02.a(((Long) obj).longValue());
    }
}
