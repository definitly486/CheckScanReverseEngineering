package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ow7 implements sw7 {
    public final String a;
    public final Integer b;

    public ow7(Integer num, String str) {
        this.a = str;
        this.b = num;
    }

    @Override // defpackage.sw7
    public final Integer a() {
        return this.b;
    }

    @Override // defpackage.sw7
    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ow7)) {
            return false;
        }
        ow7 ow7Var = (ow7) obj;
        return this.a.equals(ow7Var.a) && aa4.e(this.b, ow7Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Integer num = this.b;
        return iHashCode + (num == null ? 0 : num.hashCode());
    }

    public final String toString() {
        return "ShowcaseItem(impressionBlock=" + this.a + ", impressionItemId=" + this.b + ")";
    }
}
