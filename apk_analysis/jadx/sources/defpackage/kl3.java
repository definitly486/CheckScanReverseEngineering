package defpackage;

import androidx.activity.FullyDrawnReporter;
import androidx.media3.exoplayer.video.VideoSink;
import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.support.presentation.form.view.SupportFormFragment;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class kl3 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ kl3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                FullyDrawnReporter.reportRunnable$lambda$0((FullyDrawnReporter) obj);
                break;
            case 1:
                ((VideoSink.Listener) obj).onFrameAvailableForRendering();
                break;
            default:
                TextInputEditText textInputEditText = (TextInputEditText) obj;
                SupportFormFragment.a aVar = SupportFormFragment.j;
                textInputEditText.getClass();
                le9.e(textInputEditText);
                break;
        }
    }
}
