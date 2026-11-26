package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class m18 {
    public static volatile m18 d;
    public final c a;
    public final HashSet b = new HashSet();
    public boolean c;

    public class a implements br3<ConnectivityManager> {
        public final /* synthetic */ Context b;

        public a(Context context) {
            this.b = context;
        }

        @Override // defpackage.br3
        public final ConnectivityManager get() {
            return (ConnectivityManager) this.b.getSystemService("connectivity");
        }
    }

    public class b implements ax1.a {
        public b() {
        }

        @Override // ax1.a
        public final void a(boolean z) {
            ArrayList arrayList;
            eb9.a();
            synchronized (m18.this) {
                arrayList = new ArrayList(m18.this.b);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((ax1.a) it.next()).a(z);
            }
        }
    }

    public static final class c {
        public boolean a;
        public final b b;
        public final ar3 c;
        public final a d = new a();

        public class a extends ConnectivityManager.NetworkCallback {
            public a() {
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onAvailable(Network network) {
                eb9.f().post(new n18(this, true));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onLost(Network network) {
                eb9.f().post(new n18(this, false));
            }
        }

        public c(ar3 ar3Var, b bVar) {
            this.c = ar3Var;
            this.b = bVar;
        }
    }

    public m18(Context context) {
        this.a = new c(new ar3(new a(context)), new b());
    }

    public static m18 a(Context context) {
        if (d == null) {
            synchronized (m18.class) {
                try {
                    if (d == null) {
                        d = new m18(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    public final void b() {
        if (this.c || this.b.isEmpty()) {
            return;
        }
        c cVar = this.a;
        ar3 ar3Var = cVar.c;
        boolean z = false;
        cVar.a = ((ConnectivityManager) ar3Var.get()).getActiveNetwork() != null;
        try {
            ((ConnectivityManager) ar3Var.get()).registerDefaultNetworkCallback(cVar.d);
            z = true;
        } catch (RuntimeException e) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to register callback", e);
            }
        }
        this.c = z;
    }
}
