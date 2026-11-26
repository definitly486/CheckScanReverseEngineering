package defpackage;

import com.my.target.t0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class xy9 implements Runnable {
    public final d9a b = d9a.a(10000);
    public final ArrayList c;
    public final Map d;
    public volatile um9 e;
    public volatile int f;

    public xy9(String str, ArrayList arrayList, kt9 kt9Var, um9 um9Var) {
        this.c = arrayList;
        this.e = um9Var;
        this.f = arrayList.size();
        this.d = this.f == 0 ? Collections.EMPTY_MAP : new HashMap();
    }

    public final void a() {
        synchronized (this) {
            try {
                um9 um9Var = this.e;
                if (um9Var == null) {
                    y14.r(null, "MediationParamsLoader: onResult has already been called");
                    return;
                }
                this.e = null;
                final Map map = this.d;
                final wm9.a aVar = um9Var.a;
                final String str = um9Var.b;
                final z2a z2aVar = um9Var.c;
                final t0 t0Var = um9Var.d;
                final kt9 kt9Var = um9Var.e;
                final v4a v4aVar = um9Var.f;
                w4a.a(new Runnable(aVar, str, z2aVar, map, t0Var, kt9Var, v4aVar) { // from class: vm9
                    public final /* synthetic */ String b;
                    public final /* synthetic */ z2a c;
                    public final /* synthetic */ Map d;
                    public final /* synthetic */ t0 e;
                    public final /* synthetic */ kt9 f;
                    public final /* synthetic */ v4a g;

                    {
                        this.b = str;
                        this.c = z2aVar;
                        this.d = map;
                        this.e = t0Var;
                        this.f = kt9Var;
                        this.g = v4aVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        y14.r(null, "DefaultAdServiceBuilder: mediation params is loaded");
                        wm9.a.a(this.b, this.c, this.d, this.e, this.f, this.g);
                    }
                });
                this.b.close();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        y14.r(null, "MediationParamsLoader: loading timeout");
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((c8) it.next()).b();
        }
        a();
    }
}
