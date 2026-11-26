package defpackage;

import androidx.media3.exoplayer.source.preload.DefaultPreloadManager;
import com.google.firebase.perf.metrics.AppStartTrace;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class iq implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ iq(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((AppStartTrace) obj).logAppStartTrace();
                return;
            case 1:
                ((DefaultPreloadManager) obj).lambda$releasePreloadUtils$2();
                return;
            default:
                wc6 wc6Var = (wc6) obj;
                List<File> listK = wc6Var.k();
                synchronized (wc6Var.e) {
                    wc6Var.d.clear();
                    wc6Var.d.addAll(listK);
                }
                wc6Var.m = true;
                return;
        }
    }
}
