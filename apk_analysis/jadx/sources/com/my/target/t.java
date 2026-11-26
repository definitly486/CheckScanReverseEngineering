package com.my.target;

import android.content.Context;
import android.text.TextUtils;
import com.my.target.x.a;
import defpackage.b8;
import defpackage.d9a;
import defpackage.et9;
import defpackage.f72;
import defpackage.fq9;
import defpackage.kia;
import defpackage.l6a;
import defpackage.l95;
import defpackage.m95;
import defpackage.n4a;
import defpackage.ph5;
import defpackage.y14;
import defpackage.z2a;
import defpackage.z94;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public abstract class t {
    public final z2a a;
    public final t0.a b;
    public final fq9 c;
    public l95 d;
    public WeakReference e;
    public d9a f;
    public b g;
    public String h;
    public t0 i;

    public static class a {
        public final String a;
        public final String b;
        public final int c;
        public final int d;
        public final HashMap e;
        public final b8 f;

        public a(String str, String str2, HashMap map, int i, int i2, b8 b8Var) {
            this.a = str;
            this.b = str2;
            this.e = map;
            this.d = i;
            this.c = i2;
            this.f = b8Var;
        }
    }

    public final class b implements Runnable {
        public final et9 b;

        public b(et9 et9Var) {
            this.b = et9Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            StringBuilder sb = new StringBuilder("MediationEngine: Timeout for ");
            et9 et9Var = this.b;
            sb.append(et9Var.a);
            sb.append(" ad network");
            y14.r(null, sb.toString());
            m1.d(et9Var.d, "networkTimeout", 999, null);
            t.this.a(et9Var, false);
        }
    }

    public t(fq9 fq9Var, z2a z2aVar, t0.a aVar) {
        this.c = fq9Var;
        this.a = z2aVar;
        this.b = aVar;
    }

    public final void a(et9 et9Var, boolean z) {
        b bVar = this.g;
        if (bVar == null || bVar.b != et9Var) {
            return;
        }
        WeakReference weakReference = this.e;
        Context context = weakReference == null ? null : (Context) weakReference.get();
        t0 t0Var = this.i;
        if (t0Var != null && context != null) {
            t0Var.a(t0Var.d, System.currentTimeMillis() - t0Var.c);
            this.i.b();
        }
        d9a d9aVar = this.f;
        if (d9aVar != null) {
            d9aVar.e(this.g);
            this.f.close();
            this.f = null;
        }
        this.g = null;
        if (!z) {
            b();
        } else {
            this.h = et9Var.a;
            m1.d(et9Var.d, "networkFilled", 999, null);
        }
    }

    public final void b() {
        l95 ph5Var;
        kia kiaVar;
        l95 l95Var = this.d;
        if (l95Var != null) {
            try {
                l95Var.destroy();
            } catch (Throwable th) {
                y14.u(null, "MediationEngine: Error - " + th);
            }
            this.d = null;
        }
        WeakReference weakReference = this.e;
        Context context = weakReference == null ? null : (Context) weakReference.get();
        if (context == null) {
            y14.u(null, "MediationEngine: Can't configure next ad network, context is null");
            return;
        }
        ArrayList arrayList = this.c.a;
        int i = 0;
        et9 et9Var = arrayList.isEmpty() ? null : (et9) arrayList.remove(0);
        if (et9Var == null) {
            y14.r(null, "MediationEngine: No ad networks available");
            l6a l6aVar = l6a.u;
            z94 z94Var = z94.this;
            z94.a aVar = z94Var.h;
            if (aVar != null) {
                aVar.g(l6aVar, z94Var);
                return;
            }
            return;
        }
        String str = et9Var.a;
        n4a n4aVar = et9Var.d;
        String str2 = et9Var.c;
        y14.r(null, "MediationEngine: Prepare adapter for " + str + " ad network");
        if ("myTarget".equals(str)) {
            ph5Var = new ph5();
        } else {
            try {
                ph5Var = (l95) Class.forName(str2).getConstructor(null).newInstance(null);
            } catch (Throwable th2) {
                y14.u(null, "MediationEngine: Error – " + th2);
                ph5Var = null;
            }
        }
        this.d = ph5Var;
        if (ph5Var == null || !(ph5Var instanceof m95)) {
            y14.u(null, "MediationEngine: Can't create adapter, class " + str2 + " not found or invalid");
            m1.d(n4aVar, "networkAdapterInvalid", 999, null);
            b();
            return;
        }
        y14.r(null, "MediationEngine: Adapter created");
        float f = et9Var.i;
        t0.a aVar2 = this.b;
        t0 t0Var = new t0(aVar2.a, str, 5);
        t0Var.e = aVar2.b;
        t0Var.a.put("priority", Float.valueOf(f));
        this.i = t0Var;
        d9a d9aVar = this.f;
        if (d9aVar != null) {
            d9aVar.close();
        }
        int i2 = et9Var.h;
        if (i2 > 0) {
            this.g = new b(et9Var);
            d9a d9aVarA = d9a.a(i2);
            this.f = d9aVarA;
            d9aVarA.b(this.g);
        } else {
            this.g = null;
        }
        m1.d(n4aVar, "networkRequested", 999, null);
        l95 l95Var2 = this.d;
        x xVar = (x) this;
        m95 m95Var = (m95) l95Var2;
        String str3 = et9Var.b;
        String str4 = et9Var.f;
        HashMap map = new HashMap(et9Var.e);
        z2a z2aVar = xVar.a;
        f72 f72Var = z2aVar.a;
        String strA = f72Var.a("ea");
        if (strA != null) {
            try {
                i = Integer.parseInt(strA);
            } catch (Throwable unused) {
            }
        }
        String strA2 = f72Var.a("eg");
        int i3 = -1;
        if (strA2 != null) {
            try {
                i3 = Integer.parseInt(strA2);
            } catch (Throwable unused2) {
            }
        }
        a aVar3 = new a(str3, str4, map, i, i3, TextUtils.isEmpty(xVar.h) ? null : (b8) z2aVar.b.get(xVar.h.toLowerCase(Locale.ROOT)));
        if ((m95Var instanceof ph5) && (kiaVar = et9Var.g) != null) {
            ((ph5) m95Var).a = kiaVar;
        }
        try {
            m95Var.a(aVar3, xVar.new a(et9Var), context);
        } catch (Throwable th3) {
            y14.u(null, "MediationInterstitialAdEngine: Error - " + th3);
        }
    }
}
