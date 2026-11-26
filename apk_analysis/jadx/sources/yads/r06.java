package yads;

import android.content.Context;
import defpackage.v39;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class r06 extends es {
    public final q84 A;
    public final Context w;
    public final e4 x;
    public final Object y;
    public final h85 z;

    public r06(Context context, e4 e4Var, int i, String str, ds dsVar, Object obj, h85 h85Var, w75 w75Var, q84 q84Var) {
        Integer num;
        zg5 zg5Var;
        le leVar = new le(context);
        v8 v8Var = new v8();
        super(context, i, str, dsVar, w75Var);
        this.w = context;
        this.x = e4Var;
        this.y = obj;
        this.z = h85Var;
        this.A = q84Var;
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
        fe5 fe5VarA = zg5Var2.a(context);
        this.o = v8Var.a(context, (fe5VarA == null || (num = fe5VarA.x0) == null) ? ra3.a : num.intValue());
        this.n = true;
        this.m = true;
        g75 g75VarA = h85Var.a(obj);
        q84Var.a(g75VarA);
        String str2 = g75VarA.a;
        e75 e75Var = e75.REQUEST;
        if (defpackage.aa4.e(str2, "ad_request")) {
            leVar.a(e75Var, g75VarA.b, null, null);
        }
    }

    public abstract z85 a(en4 en4Var, int i);

    public final void a(en4 en4Var, z85 z85Var, int i) {
        g75 g75VarA = this.z.a(z85Var, i, this.y, null);
        Map map = g75VarA.b;
        Map linkedHashMap = v39.e(map) ? map : null;
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        String strB = v83.b(en4Var.c, oa3.AD_SERVER_LOG_ID);
        if (strB != null) {
            linkedHashMap.put("server_log_id", strB);
        }
        Map map2 = en4Var.c;
        if (map2 != null) {
            e9.a(map2);
        }
        this.A.a(g75VarA);
    }

    @Override // yads.r75
    public Map d() {
        String str;
        defpackage.uz4 uz4Var = new defpackage.uz4();
        oa3 oa3Var = oa3.AD_HEADER_WIDTH;
        uz4Var.put("app-id", this.w.getPackageName());
        Context context = this.w;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            str = null;
        }
        if (str != null) {
            oa3 oa3Var2 = oa3.AD_HEADER_WIDTH;
        }
        uz4Var.putAll(this.x.b.a.c);
        return uz4Var.b();
    }

    @Override // yads.r75
    public final z85 a(en4 en4Var) {
        try {
            int i = en4Var.a;
            z85 z85VarA = a(en4Var, i);
            a(en4Var, z85VarA, i);
            return z85VarA;
        } catch (Throwable th) {
            this.A.reportError("Failed to parse network response", th);
            return new z85(new i4(o4.REQUEST_FAILED_PARSE_ERROR));
        }
    }

    @Override // yads.es, yads.r75
    public hi6 a(hi6 hi6Var) {
        try {
            en4 en4Var = hi6Var.b;
            this.A.a(this.z.a(null, en4Var != null ? en4Var.a : -1, this.y, hi6Var));
            return hi6Var;
        } catch (Throwable th) {
            this.A.reportError("Failed to parse network error", th);
            return new i4(o4.REQUEST_FAILED_PARSE_ERROR);
        }
    }
}
