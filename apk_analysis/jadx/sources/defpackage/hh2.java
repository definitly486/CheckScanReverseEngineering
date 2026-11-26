package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;

/* JADX INFO: loaded from: classes3.dex */
public final class hh2 implements ax1 {
    public final Context b;
    public final p37.b c;

    public hh2(Context context, p37.b bVar) {
        this.b = context.getApplicationContext();
        this.c = bVar;
    }

    @Override // defpackage.up4
    public final void onDestroy() {
    }

    @Override // defpackage.up4
    public final void onStart() {
        m18 m18VarA = m18.a(this.b);
        p37.b bVar = this.c;
        synchronized (m18VarA) {
            m18VarA.b.add(bVar);
            m18VarA.b();
        }
    }

    @Override // defpackage.up4
    public final void onStop() {
        m18 m18VarA = m18.a(this.b);
        p37.b bVar = this.c;
        synchronized (m18VarA) {
            m18VarA.b.remove(bVar);
            if (m18VarA.c && m18VarA.b.isEmpty()) {
                m18.c cVar = m18VarA.a;
                ((ConnectivityManager) cVar.c.get()).unregisterNetworkCallback(cVar.d);
                m18VarA.c = false;
            }
        }
    }
}
