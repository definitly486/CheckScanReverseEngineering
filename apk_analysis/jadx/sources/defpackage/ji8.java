package defpackage;

import android.os.Handler;
import com.androidadvance.topsnackbar.TSnackbar;
import com.androidadvance.topsnackbar.c;

/* JADX INFO: loaded from: classes3.dex */
public final class ji8 implements Runnable {
    public final /* synthetic */ c b;

    public ji8(c cVar) {
        this.b = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TSnackbar tSnackbar = this.b.a;
        Handler handler = TSnackbar.e;
        tSnackbar.d();
    }
}
