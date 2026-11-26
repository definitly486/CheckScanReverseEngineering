package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class vy extends y43 {
    public final Integer a;

    public vy(Integer num) {
        this.a = num;
    }

    @Override // defpackage.y43
    public final Integer a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof y43)) {
            return false;
        }
        y43 y43Var = (y43) obj;
        Integer num = this.a;
        if (num == null) {
            return y43Var.a() == null;
        }
        return num.equals(y43Var.a());
    }

    public final int hashCode() {
        Integer num = this.a;
        return (num == null ? 0 : num.hashCode()) ^ 1000003;
    }

    public final String toString() {
        return "ExternalPRequestContext{originAssociatedProductId=" + this.a + "}";
    }
}
