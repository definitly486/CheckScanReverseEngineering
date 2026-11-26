package yads;

import android.content.Context;
import android.location.Location;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class kv3 {
    public static final Object f = new Object();
    public static volatile kv3 g;
    public final nv3 a;
    public final mv3 b;
    public final zg5 c;
    public final qi5 d;
    public final Context e;

    public kv3(Context context) {
        zg5 zg5Var;
        nv3 nv3Var = new nv3();
        mv3 mv3Var = new mv3();
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        qi5 qi5Var = new qi5();
        this.a = nv3Var;
        this.b = mv3Var;
        this.c = zg5Var2;
        this.d = qi5Var;
        this.e = w60.a(context);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x004e  */
    public final Location a() {
        Location locationA;
        synchronized (f) {
            try {
                if (this.c.b()) {
                    qi5 qi5Var = this.d;
                    Context context = this.e;
                    qi5Var.getClass();
                    if (qi5.a(context)) {
                        locationA = null;
                    } else {
                        mv3 mv3Var = this.b;
                        Context context2 = this.e;
                        mv3Var.getClass();
                        ArrayList arrayListA = mv3.a(context2);
                        defpackage.ar4 ar4VarE = u96.e();
                        Iterator it = arrayListA.iterator();
                        while (it.hasNext()) {
                            Location locationA2 = ((lv3) it.next()).a();
                            if (locationA2 != null) {
                                ar4VarE.add(locationA2);
                            }
                        }
                        locationA = this.a.a(u96.d(ar4VarE));
                    }
                } else {
                    locationA = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return locationA;
    }
}
