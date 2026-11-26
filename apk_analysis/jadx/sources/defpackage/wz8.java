package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wz8 {

    @bq7("bank")
    private final String a;

    @bq7("phone")
    private final String b;

    @bq7("sum")
    private final int c;

    public wz8(String str, String str2, int i) {
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wz8)) {
            return false;
        }
        wz8 wz8Var = (wz8) obj;
        return aa4.e(this.a, wz8Var.a) && aa4.e(this.b, wz8Var.b) && this.c == wz8Var.c;
    }

    public final int hashCode() {
        String str = this.a;
        return Integer.hashCode(this.c) + zg.b((str == null ? 0 : str.hashCode()) * 31, 31, this.b);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return l2.e(ad2.d("TransferPhoneRequest(bank=", str, ", phone=", str2, ", sumInKopeikas="), ")", this.c);
    }
}
