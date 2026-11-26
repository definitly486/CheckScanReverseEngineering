package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class iy2 {
    public final String a;

    public iy2(String str) {
        if (str != null) {
            this.a = str;
        } else {
            o2.d("name is null");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof iy2)) {
            return false;
        }
        return this.a.equals(((iy2) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return me0.d(new StringBuilder("Encoding{name=\""), this.a, "\"}");
    }
}
