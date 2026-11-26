package defpackage;

import com.google.gson.Gson;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes5.dex */
public final class kg1 {
    public final long a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;

    public static final class a extends x39<hv6> {
    }

    public static final class b extends x39<iv6> {
    }

    public kg1(long j, String str, String str2, String str3, String str4) {
        x7.b(str, str2, str3);
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
    }

    public final gf9 a() {
        iv6 iv6Var;
        Object aVar;
        Gson gsonC = ht3.c();
        a aVar2 = new a();
        gsonC.getClass();
        hv6 hv6Var = (hv6) gsonC.f(this.d, new x39(aVar2.b));
        String str = this.e;
        if (str != null) {
            Gson gsonC2 = ht3.c();
            Type type = new b().b;
            type.getClass();
            iv6Var = (iv6) ht3.a(gsonC2, str, type);
        } else {
            iv6Var = null;
        }
        nz6.Companion.getClass();
        String str2 = this.c;
        str2.getClass();
        try {
            aVar = nz6.valueOf(str2);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Object obj = nz6.FNS_NOT_RESPONDING;
        if (aVar instanceof k57.a) {
            aVar = obj;
        }
        nz6 nz6Var = (nz6) aVar;
        String strC = hv6Var.c();
        String strA = hv6Var.a();
        String strB = hv6Var.b();
        String strB2 = this.b;
        if (aa4.e(strB2, strB)) {
            strB2 = hv6Var.b();
        }
        return new gf9(this.a, nz6Var, strC, strA, strB2, iv6Var != null ? iv6Var.b() : null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kg1)) {
            return false;
        }
        kg1 kg1Var = (kg1) obj;
        return this.a == kg1Var.a && aa4.e(this.b, kg1Var.b) && aa4.e(this.c, kg1Var.c) && aa4.e(this.d, kg1Var.d) && aa4.e(this.e, kg1Var.e);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d);
        String str = this.e;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sbD = ah.d(this.a, "ChequeRequestModel(id=", ", qrCode=", this.b);
        kv2.c(sbD, ", status=", this.c, ", requestJson=", this.d);
        return kh.c(sbD, ", responseJson=", this.e, ")");
    }
}
