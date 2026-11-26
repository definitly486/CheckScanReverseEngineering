package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class qb1 {
    public static final qb1 b = new qb1("");
    public final String a;

    public qb1(String str) {
        this.a = str;
    }

    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || qb1.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((qb1) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
