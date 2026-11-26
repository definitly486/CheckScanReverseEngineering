package defpackage;

import com.tapjoy.TJKeyValueStorageKt;

/* JADX INFO: loaded from: classes5.dex */
public final class oz6 {

    @bq7("buyer")
    private final String a;

    @bq7("buyerType")
    private final String b;

    @bq7("createdDate")
    private final String c;

    @bq7("fiscalDocumentNumber")
    private final String d;

    @bq7("fiscalDriveNumber")
    private final String e;

    @bq7("totalSum")
    private final String f;

    @bq7("kktOwner")
    private final String g;

    @bq7("kktOwnerInn")
    private final String h;

    @bq7(TJKeyValueStorageKt.KEY)
    private final String i;

    public oz6(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        m2.e(str6, str7, str8, str9);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
        this.h = str8;
        this.i = str9;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.c;
    }

    public final String d() {
        return this.d;
    }

    public final String e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oz6)) {
            return false;
        }
        oz6 oz6Var = (oz6) obj;
        return aa4.e(this.a, oz6Var.a) && aa4.e(this.b, oz6Var.b) && aa4.e(this.c, oz6Var.c) && aa4.e(this.d, oz6Var.d) && aa4.e(this.e, oz6Var.e) && aa4.e(this.f, oz6Var.f) && aa4.e(this.g, oz6Var.g) && aa4.e(this.h, oz6Var.h) && aa4.e(this.i, oz6Var.i);
    }

    public final String f() {
        return this.i;
    }

    public final String g() {
        return this.g;
    }

    public final String h() {
        return this.h;
    }

    public final int hashCode() {
        return this.i.hashCode() + zg.b(zg.b(zg.b(zg.b(zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f), 31, this.g), 31, this.h);
    }

    public final String i() {
        return this.f;
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        String str5 = this.e;
        String str6 = this.f;
        String str7 = this.g;
        String str8 = this.h;
        String str9 = this.i;
        StringBuilder sbD = ad2.d("ReceiptsResponse(buyer=", str, ", buyerType=", str2, ", createdDate=");
        kv2.c(sbD, str3, ", fiscalDocumentNumber=", str4, ", fiscalDriveNumber=");
        kv2.c(sbD, str5, ", totalSum=", str6, ", kktOwner=");
        kv2.c(sbD, str7, ", kktOwnerInn=", str8, ", key=");
        return me0.d(sbD, str9, ")");
    }
}
