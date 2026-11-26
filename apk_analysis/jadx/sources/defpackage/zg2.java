package defpackage;

import androidx.appcompat.widget.Toolbar;
import androidx.camera.core.impl.LiveDataObservable;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import com.my.target.z2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zg2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ zg2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((DefaultAudioSink) obj).maybeReportSkippedSilence();
                break;
            case 1:
                ((LiveDataObservable) obj).lambda$enableInternalObserver$5();
                break;
            case 2:
                ((Toolbar) obj).collapseActionView();
                break;
            default:
                z2 z2Var = (z2) obj;
                z2Var.b.a(System.currentTimeMillis());
                z2Var.c();
                z2Var.b();
                break;
        }
    }
}
