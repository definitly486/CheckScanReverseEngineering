package defpackage;

import android.content.Context;
import com.my.target.e;
import com.my.target.g1;
import com.my.target.w;
import com.tapjoy.TJTracking;
import yads.r85;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class al implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ al(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((ll3) obj).invoke();
                break;
            case 1:
                TJTracking.a((Context) obj);
                break;
            case 2:
                w wVar = (w) obj;
                g1.a aVar = wVar.j;
                if (aVar != null) {
                    aVar.n(wVar.l / 1000.0d);
                }
                long j = wVar.l;
                if (j <= 0) {
                    wVar.e.setVisibility(0);
                    g1.a aVar2 = wVar.j;
                    if (aVar2 != null) {
                        aVar2.a(true);
                        wVar.b.e(wVar.c);
                    }
                } else {
                    wVar.l = j - 200;
                }
                break;
            case 3:
                ((r85) obj).b();
                break;
            default:
                e.this.b.dismiss();
                break;
        }
    }
}
