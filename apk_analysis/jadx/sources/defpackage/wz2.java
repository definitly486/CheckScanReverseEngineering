package defpackage;

import java.security.MessageDigest;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class wz2 implements kf4 {
    public final Object b;
    public final int c;
    public final int d;
    public final Class<?> e;
    public final Class<?> f;
    public final kf4 g;
    public final Map<Class<?>, s19<?>> h;
    public final xz5 i;
    public int j;

    public wz2(Object obj, kf4 kf4Var, int i, int i2, Map<Class<?>, s19<?>> map, Class<?> cls, Class<?> cls2, xz5 xz5Var) {
        r96.c(obj, "Argument must not be null");
        this.b = obj;
        r96.c(kf4Var, "Signature must not be null");
        this.g = kf4Var;
        this.c = i;
        this.d = i2;
        r96.c(map, "Argument must not be null");
        this.h = map;
        r96.c(cls, "Resource class must not be null");
        this.e = cls;
        r96.c(cls2, "Transcode class must not be null");
        this.f = cls2;
        r96.c(xz5Var, "Argument must not be null");
        this.i = xz5Var;
    }

    @Override // defpackage.kf4
    public final void a(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.kf4
    public final boolean equals(Object obj) {
        if (obj instanceof wz2) {
            wz2 wz2Var = (wz2) obj;
            if (this.b.equals(wz2Var.b) && this.g.equals(wz2Var.g) && this.d == wz2Var.d && this.c == wz2Var.c && this.h.equals(wz2Var.h) && this.e.equals(wz2Var.e) && this.f.equals(wz2Var.f) && this.i.equals(wz2Var.i)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.kf4
    public final int hashCode() {
        int i = this.j;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.b.hashCode();
        this.j = iHashCode;
        int iHashCode2 = ((((this.g.hashCode() + (iHashCode * 31)) * 31) + this.c) * 31) + this.d;
        this.j = iHashCode2;
        int iHashCode3 = this.h.hashCode() + (iHashCode2 * 31);
        this.j = iHashCode3;
        int iHashCode4 = this.e.hashCode() + (iHashCode3 * 31);
        this.j = iHashCode4;
        int iHashCode5 = this.f.hashCode() + (iHashCode4 * 31);
        this.j = iHashCode5;
        int iHashCode6 = this.i.b.hashCode() + (iHashCode5 * 31);
        this.j = iHashCode6;
        return iHashCode6;
    }

    public final String toString() {
        return "EngineKey{model=" + this.b + ", width=" + this.c + ", height=" + this.d + ", resourceClass=" + this.e + ", transcodeClass=" + this.f + ", signature=" + this.g + ", hashCode=" + this.j + ", transformations=" + this.h + ", options=" + this.i + '}';
    }
}
