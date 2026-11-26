package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJKeyValueStorageKt;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class i19 {

    @bq7("sumMin")
    private final int a;

    @bq7("sumMax")
    private final int b;

    @bq7("sum")
    private final int c;

    @bq7("info")
    private final String d;

    @bq7(FirebaseAnalytics.Param.DESTINATION)
    private final String e;

    @bq7("description")
    private final String f;

    @bq7("rules")
    private final String g;

    @bq7("banks")
    private final List<a> h;

    @bq7("bottomText")
    private final String i;

    public static final class a {

        @bq7(TJKeyValueStorageKt.KEY)
        private final String a;

        @bq7("name")
        private final String b;

        @bq7("logoUrl")
        private final String c;

        public a(String str, String str2, String str3) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.c;
        }

        public final String c() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return me0.d(ad2.d("BankResponse(key=", str, ", name=", str2, ", logoUrl="), this.c, ")");
        }
    }

    public i19(int i, int i2, int i3, String str, String str2, String str3, String str4, List<a> list, String str5) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        list.getClass();
        str5.getClass();
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.g = str4;
        this.h = list;
        this.i = str5;
    }

    public final u09 a() {
        x09 x09Var = new x09(this.d);
        e19 e19Var = new e19(this.e);
        List<a> list = this.h;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        for (a aVar : list) {
            arrayList.add(new m09(aVar.a(), aVar.c(), aVar.b(), false));
        }
        q09 q09Var = new q09(arrayList);
        int i = this.c;
        double d = ((double) i) / 100.0d;
        int i2 = this.a;
        double d2 = ((double) i2) / 100.0d;
        int i3 = this.b;
        return new u09(u96.i(x09Var, e19Var, q09Var, new j09(d, d, d2, ((double) i3) / 100.0d, i > i3 || i < i2, (i > i3 || i < i2) ? "Неверная сумма" : null), new c19(this.f, this.g), new t09(false), new h19(this.i)));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i19)) {
            return false;
        }
        i19 i19Var = (i19) obj;
        return this.a == i19Var.a && this.b == i19Var.b && this.c == i19Var.c && aa4.e(this.d, i19Var.d) && aa4.e(this.e, i19Var.e) && aa4.e(this.f, i19Var.f) && aa4.e(this.g, i19Var.g) && aa4.e(this.h, i19Var.h) && aa4.e(this.i, i19Var.i);
    }

    public final int hashCode() {
        return this.i.hashCode() + e2.b(this.h, zg.b(zg.b(zg.b(zg.b(ej0.b(this.c, ej0.b(this.b, Integer.hashCode(this.a) * 31, 31), 31), 31, this.d), 31, this.e), 31, this.f), 31, this.g), 31);
    }

    public final String toString() {
        int i = this.a;
        int i2 = this.b;
        int i3 = this.c;
        String str = this.d;
        String str2 = this.e;
        String str3 = this.f;
        String str4 = this.g;
        List<a> list = this.h;
        String str5 = this.i;
        StringBuilder sbF = bg.f(i, i2, "TransferSBPResponse(minimalSumInKopeikas=", ", maximumSumInKopeikas=", ", sum=");
        sbF.append(i3);
        sbF.append(", info=");
        sbF.append(str);
        sbF.append(", phone=");
        kv2.c(sbF, str2, ", description=", str3, ", rules=");
        sbF.append(str4);
        sbF.append(", banks=");
        sbF.append(list);
        sbF.append(", bottomText=");
        return me0.d(sbF, str5, ")");
    }
}
