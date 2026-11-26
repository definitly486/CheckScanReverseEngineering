package defpackage;

import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class p82 implements kf4 {
    public final kf4 b;
    public final kf4 c;

    public p82(kf4 kf4Var, kf4 kf4Var2) {
        this.b = kf4Var;
        this.c = kf4Var2;
    }

    @Override // defpackage.kf4
    public final void a(MessageDigest messageDigest) {
        this.b.a(messageDigest);
        this.c.a(messageDigest);
    }

    @Override // defpackage.kf4
    public final boolean equals(Object obj) {
        if (obj instanceof p82) {
            p82 p82Var = (p82) obj;
            if (this.b.equals(p82Var.b) && this.c.equals(p82Var.c)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.kf4
    public final int hashCode() {
        return this.c.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        return "DataCacheKey{sourceKey=" + this.b + ", signature=" + this.c + '}';
    }
}
