package defpackage;

import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class oq5 implements kf4 {
    public final Object b;

    public oq5(Object obj) {
        r96.c(obj, "Argument must not be null");
        this.b = obj;
    }

    @Override // defpackage.kf4
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(this.b.toString().getBytes(kf4.a));
    }

    @Override // defpackage.kf4
    public final boolean equals(Object obj) {
        if (obj instanceof oq5) {
            return this.b.equals(((oq5) obj).b);
        }
        return false;
    }

    @Override // defpackage.kf4
    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return vg.d(new StringBuilder("ObjectKey{object="), this.b, '}');
    }
}
