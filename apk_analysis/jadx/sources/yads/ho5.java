package yads;

import java.io.IOException;
import java.util.ConcurrentModificationException;

/* JADX INFO: loaded from: classes6.dex */
public final class ho5 implements ku3 {
    public final com.monetization.ads.exo.source.dash.a b;

    public ho5(com.monetization.ads.exo.source.dash.a aVar) {
        this.b = aVar;
    }

    @Override // yads.ku3
    public final void a(nu3 nu3Var, long j, long j2) {
        boolean z;
        synchronized (jo5.b) {
            z = jo5.c;
        }
        com.monetization.ads.exo.source.dash.a aVar = this.b;
        if (z) {
            aVar.a();
        } else {
            aVar.a.a(new IOException(new ConcurrentModificationException()));
        }
    }

    @Override // yads.ku3
    public final void a(nu3 nu3Var, long j, long j2, boolean z) {
    }

    @Override // yads.ku3
    public final lu3 a(nu3 nu3Var, long j, long j2, IOException iOException, int i) {
        this.b.a.a(iOException);
        return ru3.d;
    }
}
