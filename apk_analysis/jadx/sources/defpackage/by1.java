package defpackage;

import android.view.View;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.video.internal.encoder.EncoderCallback;
import androidx.core.widget.ContentLoadingProgressBar;
import com.google.android.material.internal.ViewUtils;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class by1 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ by1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((ContentLoadingProgressBar) obj).hideOnUiThread();
                break;
            case 1:
                ViewUtils.requestFocusAndShowKeyboard((View) obj, false);
                break;
            case 2:
                ((EncoderCallback) obj).onEncodePaused();
                break;
            default:
                ((SurfaceEdge) obj).lambda$createSurfaceRequest$1();
                break;
        }
    }
}
