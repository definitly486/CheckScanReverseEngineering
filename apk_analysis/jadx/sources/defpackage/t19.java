package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public abstract class t19 {
    public abstract String a();

    public abstract Object b();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof t19) && aa4.e(a(), ((t19) obj).a());
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return x07.a(t19.class).f() + "(cacheKey=" + a() + ")";
    }
}
