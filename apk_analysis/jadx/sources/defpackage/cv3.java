package defpackage;

import com.tapjoy.TJKeyValueStorageKt;

/* JADX INFO: loaded from: classes5.dex */
public final class cv3 {

    @bq7(TJKeyValueStorageKt.KEY)
    private final String a;

    @bq7("value")
    private final String b;

    public cv3(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cv3)) {
            return false;
        }
        cv3 cv3Var = (cv3) obj;
        return aa4.e(this.a, cv3Var.a) && aa4.e(this.b, cv3Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return n2.d("Header(key=", this.a, ", value=", this.b, ")");
    }
}
