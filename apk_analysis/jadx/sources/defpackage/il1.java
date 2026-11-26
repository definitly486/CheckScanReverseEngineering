package defpackage;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import androidx.camera.camera2.pipe.FrameCapture;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.ValueElementSequence;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import yads.b02;
import yads.d51;
import yads.l66;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class il1 implements l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ il1(int i) {
        this.b = i;
    }

    public static int b(Measurable measurable, long j, ArrayList arrayList, int i, int i2) {
        arrayList.add(measurable.mo7702measureBRTryo0(j));
        return i + i2;
    }

    public static ValueElementSequence c(boolean z, ValueElementSequence valueElementSequence, String str, InspectorInfo inspectorInfo) {
        valueElementSequence.set(str, Boolean.valueOf(z));
        return inspectorInfo.getProperties();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void d(FrameCapture frameCapture) throws Exception {
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

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 4:
                return b02.a(((Double) obj).doubleValue());
            default:
                return d51.a(((Long) obj).longValue());
        }
    }
}
