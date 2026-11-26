package defpackage;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.view.View;
import androidx.camera.camera2.pipe.media.ImageWriterWrapper;
import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.media3.exoplayer.offline.DownloadHelper;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import com.google.android.gms.internal.measurement.zzaeg;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import yads.cs0;
import yads.kc1;
import yads.l66;
import yads.t91;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jh implements TrackSelector.InvalidationListener, Interpolator, OnApplyWindowInsetsListener, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ jh(int i) {
        this.b = i;
    }

    public static String b(int i, String str) {
        return str + i;
    }

    public static /* synthetic */ void c() throws zzaeg {
        throw new zzaeg("Protocol message tag had invalid wire type.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void d(ImageWriterWrapper imageWriterWrapper) throws Exception {
        boolean zIsTerminated;
        if (imageWriterWrapper instanceof AutoCloseable) {
            imageWriterWrapper.close();
            return;
        }
        if (!(imageWriterWrapper instanceof ExecutorService)) {
            if (imageWriterWrapper instanceof TypedArray) {
                ((TypedArray) imageWriterWrapper).recycle();
                return;
            }
            if (imageWriterWrapper instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) imageWriterWrapper).release();
                return;
            } else if (imageWriterWrapper instanceof MediaDrm) {
                ((MediaDrm) imageWriterWrapper).release();
                return;
            } else {
                mi2.b();
                return;
            }
        }
        ExecutorService executorService = (ExecutorService) imageWriterWrapper;
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
        Long l = (Long) obj;
        switch (this.b) {
            case 6:
                return cs0.b(l.longValue());
            case 7:
                return kc1.b(l.longValue());
            default:
                return t91.c(l.longValue());
        }
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f) {
        return Transition.lambda$getInterpolator$1(f);
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        return WindowInsetsCompat.CONSUMED;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
    public void onTrackSelectionsInvalidated() {
        DownloadHelper.lambda$new$0();
    }
}
