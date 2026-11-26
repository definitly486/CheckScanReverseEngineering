package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class dz {
    public final Integer a;

    public dz(Integer num) {
        this.a = num;
    }

    public final Integer a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof dz)) {
            return false;
        }
        dz dzVar = (dz) obj;
        Integer num = this.a;
        if (num == null) {
            return dzVar.a() == null;
        }
        return num.equals(dzVar.a());
    }

    public final int hashCode() {
        Integer num = this.a;
        return (num == null ? 0 : num.hashCode()) ^ 1000003;
    }

    public final String toString() {
        return "ProductData{productId=" + this.a + "}";
    }
}
