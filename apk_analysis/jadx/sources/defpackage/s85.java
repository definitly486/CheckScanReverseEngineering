package defpackage;

import android.media.metrics.PlaybackMetrics;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.imagecapture.TakePictureRequest;
import androidx.media3.exoplayer.analytics.MediaMetricsListener;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class s85 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ s85(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((MediaMetricsListener) obj2).lambda$finishCurrentSession$4((PlaybackMetrics) obj);
                break;
            case 1:
                ((TakePictureRequest) obj2).lambda$onError$0((ImageCaptureException) obj);
                break;
            default:
                ((UserMetadata) obj2).lambda$updateRolloutsState$1((List) obj);
                break;
        }
    }
}
