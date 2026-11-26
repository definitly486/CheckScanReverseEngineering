package yads;

import android.content.Context;
import defpackage.ta8;
import defpackage.ua8;
import io.appmetrica.analytics.AppMetrica;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class ke5 {
    public final ed a;
    public final wn2 b;
    public final t5 c;
    public final te5 d;
    public final pe5 e;
    public final z75 f;
    public final qe5 g;
    public final pq5 h;
    public final Context i;

    public ke5(Context context, t5 t5Var, ed edVar, wn2 wn2Var, q84 q84Var) {
        pe5 pe5Var;
        te5 te5Var = new te5(context, q84Var);
        pe5 pe5Var2 = pe5.c;
        if (pe5Var2 == null) {
            synchronized (pe5.b) {
                pe5Var = pe5.c;
                if (pe5Var == null) {
                    pe5Var = new pe5();
                    pe5.c = pe5Var;
                }
            }
            pe5Var2 = pe5Var;
        }
        z75 z75VarA = y75.a();
        qe5 qe5Var = new qe5();
        pq5 pq5Var = new pq5(q84Var);
        this.a = edVar;
        this.b = wn2Var;
        this.c = t5Var;
        this.d = te5Var;
        this.e = pe5Var2;
        this.f = z75VarA;
        this.g = qe5Var;
        this.h = pq5Var;
        this.i = context.getApplicationContext();
    }

    public final void a(qi5 qi5Var, kg3 kg3Var, me5 me5Var) {
        String strC;
        String libraryVersion;
        sp0 sp0VarA;
        fe5 fe5VarA = yg5.a().a(this.i);
        if (fe5VarA != null && !this.d.a()) {
            p50 p50Var = p50.CACHE;
            if (me5Var.a.t() instanceof defpackage.no5) {
                me5Var.a.resumeWith(new ye5(fe5VarA, p50Var));
                return;
            }
            return;
        }
        ue5 ue5Var = new ue5(this.i, this.e, me5Var, this.c);
        q84 q84Var = this.h.a;
        e75 e75Var = e75.AD_LOADING_RESULT;
        Map mapSingletonMap = Collections.singletonMap("call_source", kg3Var.b);
        mapSingletonMap.getClass();
        q84Var.a(new g75("sdk_configuration_request", new LinkedHashMap(mapSingletonMap), (c) null));
        vn2 vn2Var = this.b.a;
        Context context = this.i;
        String str = vn2Var.e;
        if (str == null || str.length() == 0) {
            strC = null;
        } else {
            qe5 qe5Var = this.g;
            ed edVar = this.a;
            qe5Var.getClass();
            boolean zB = qi5Var.b(context);
            sw2 sw2Var = new sw2(zB);
            sw2Var.z = vn2Var.a();
            sw2Var.r = vn2Var.d;
            id idVar = edVar.a;
            boolean z = edVar.c;
            if (idVar != null) {
                sw2Var.S = Boolean.valueOf(idVar.b);
                sw2Var.T = Boolean.valueOf(z);
                String str2 = idVar.a;
                sw2Var.e.getClass();
                boolean z2 = (str2 == null || str2.length() == 0 || "00000000-0000-0000-0000-000000000000".equals(str2)) ? false : true;
                if (!zB && defpackage.aa4.e(sw2Var.S, Boolean.FALSE) && z2) {
                    sw2Var.U = str2;
                }
            }
            id idVar2 = edVar.b;
            if (idVar2 != null) {
                sw2Var.V = Boolean.valueOf(idVar2.b);
                String str3 = idVar2.a;
                sw2Var.e.getClass();
                boolean z3 = (str3 == null || str3.length() == 0 || "00000000-0000-0000-0000-000000000000".equals(str3)) ? false : true;
                if (!zB && defpackage.aa4.e(sw2Var.V, Boolean.FALSE) && z3) {
                    sw2Var.W = str3;
                }
            }
            sw2Var.c.getClass();
            try {
                dg.a(context).b.getClass();
                libraryVersion = AppMetrica.getLibraryVersion();
            } catch (Throwable unused) {
                libraryVersion = null;
            }
            sw2Var.G0 = libraryVersion;
            sw2Var.H = Integer.valueOf(eh6.d(context));
            sw2Var.I = Integer.valueOf(eh6.b(context));
            sw2Var.J = Float.valueOf(context.getResources().getDisplayMetrics().density);
            sw2Var.v0 = eh6.a(context);
            try {
                sp0VarA = xk6.a(context);
            } catch (Throwable unused2) {
                sp0VarA = sp0.g;
            }
            sw2Var.w0 = sp0VarA.a;
            sw2Var.x0 = sp0VarA.b;
            sw2Var.y0 = sp0VarA.c;
            sw2Var.z0 = sp0VarA.d;
            sw2Var.A0 = sp0VarA.e;
            sw2Var.B0 = sp0VarA.f;
            sw2 sw2VarB = sw2Var.b();
            sw2VarB.l = qi5.a(context);
            sw2 sw2VarC = sw2VarB.a(context, vn2Var.a).c(context);
            sw2VarC.E0 = sw2VarC.d.a("%d.%d%d");
            sw2VarC.F0 = sw2VarC.d.a("%d.%d.%d");
            sw2 sw2VarC2 = sw2VarC.c();
            sw2VarC2.k = true;
            String[] strArr = {new uw2(sw2VarC2.a()).toString(), qe5.a(vn2Var)};
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < 2; i++) {
                String str4 = strArr[i];
                if (!ta8.M(str4)) {
                    arrayList.add(str4);
                }
            }
            String strA = qe5Var.a.a(context, defpackage.qn1.a0(arrayList, "&", null, null, 0, null, 62));
            StringBuilder sbC = defpackage.ad2.c(str);
            if (!defpackage.aa4.e(String.valueOf(ua8.k0(sbC)), "/")) {
                sbC.append("/");
            }
            strC = defpackage.kh.c(sbC, "v1/startup", "?", strA);
        }
        if (strC == null || strC.length() == 0) {
            ue5Var.a((hi6) new i4(o4.REQUEST_FAILED_INVALID_REQUEST_URL));
            return;
        }
        se5 se5Var = new se5(this.i, strC, this.d, vn2Var.c, ue5Var, ue5Var);
        se5Var.q = this;
        this.c.a(s5.SDK_CONFIGURATION_REQUEST_QUEUE, null);
        z75 z75Var = this.f;
        Context context2 = this.i;
        synchronized (z75Var) {
            qn4.a(context2).a(se5Var);
        }
    }
}
