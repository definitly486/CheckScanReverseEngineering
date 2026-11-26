package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class k4a {
    public final String a;
    public final String b;

    public k4a(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k4a)) {
            return false;
        }
        k4a k4aVar = (k4a) obj;
        return this.a.equals(k4aVar.a) && this.b.equals(k4aVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }
}
