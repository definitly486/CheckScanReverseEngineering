package defpackage;

import com.google.firebase.perf.transport.TransportManager;
import com.monetization.ads.exo.source.dash.i;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y29 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ y29(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((TransportManager) obj).syncInit();
                break;
            default:
                ((i) obj).h();
                break;
        }
    }
}
