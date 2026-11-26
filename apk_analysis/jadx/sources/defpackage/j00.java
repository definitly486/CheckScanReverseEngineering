package defpackage;

import androidx.camera.video.internal.encoder.EncoderCallback;
import androidx.core.widget.ContentLoadingProgressBar;
import yads.bp5;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class j00 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ j00(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                k00 k00Var = (k00) obj;
                ch8.c cVar = k00Var.e;
                if (cVar != null) {
                    ch8.b bVar = cVar.a;
                    if (!bVar.d && !bVar.c) {
                        cVar.a();
                    }
                }
                k00Var.d = null;
                break;
            case 1:
                ((ContentLoadingProgressBar) obj).showOnUiThread();
                break;
            case 2:
                ((EncoderCallback) obj).onEncodeStart();
                break;
            default:
                ((bp5) obj).a();
                break;
        }
    }
}
