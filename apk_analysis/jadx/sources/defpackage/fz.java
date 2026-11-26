package defpackage;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class fz extends je7.a {
    public final long a;
    public final long b;
    public final Set<je7.b> c;

    public fz(long j, long j2, Set<je7.b> set) {
        this.a = j;
        this.b = j2;
        this.c = set;
    }

    @Override // je7.a
    public final long a() {
        return this.a;
    }

    @Override // je7.a
    public final Set<je7.b> b() {
        return this.c;
    }

    @Override // je7.a
    public final long c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof je7.a)) {
            return false;
        }
        je7.a aVar = (je7.a) obj;
        return this.a == aVar.a() && this.b == aVar.c() && this.c.equals(aVar.b());
    }

    public final int hashCode() {
        long j = this.a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        long j2 = this.b;
        return this.c.hashCode() ^ ((i ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public final String toString() {
        return "ConfigValue{delta=" + this.a + ", maxAllowedDelay=" + this.b + ", flags=" + this.c + "}";
    }
}
