package defpackage;

import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class h47 implements kf4 {
    public static final gy4<Class<?>, byte[]> j = new gy4<>(50);
    public final pr b;
    public final kf4 c;
    public final kf4 d;
    public final int e;
    public final int f;
    public final Class<?> g;
    public final xz5 h;
    public final s19<?> i;

    public h47(pr prVar, kf4 kf4Var, kf4 kf4Var2, int i, int i2, s19<?> s19Var, Class<?> cls, xz5 xz5Var) {
        this.b = prVar;
        this.c = kf4Var;
        this.d = kf4Var2;
        this.e = i;
        this.f = i2;
        this.i = s19Var;
        this.g = cls;
        this.h = xz5Var;
    }

    @Override // defpackage.kf4
    public final void a(MessageDigest messageDigest) {
        pr prVar = this.b;
        byte[] bArr = (byte[]) prVar.d();
        ByteBuffer.wrap(bArr).putInt(this.e).putInt(this.f).array();
        this.d.a(messageDigest);
        this.c.a(messageDigest);
        messageDigest.update(bArr);
        s19<?> s19Var = this.i;
        if (s19Var != null) {
            s19Var.a(messageDigest);
        }
        this.h.a(messageDigest);
        gy4<Class<?>, byte[]> gy4Var = j;
        Class<?> cls = this.g;
        byte[] bArrA = gy4Var.a(cls);
        if (bArrA == null) {
            bArrA = cls.getName().getBytes(kf4.a);
            gy4Var.d(cls, bArrA);
        }
        messageDigest.update(bArrA);
        prVar.put(bArr);
    }

    @Override // defpackage.kf4
    public final boolean equals(Object obj) {
        if (obj instanceof h47) {
            h47 h47Var = (h47) obj;
            if (this.f == h47Var.f && this.e == h47Var.e && eb9.b(this.i, h47Var.i) && this.g.equals(h47Var.g) && this.c.equals(h47Var.c) && this.d.equals(h47Var.d) && this.h.equals(h47Var.h)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.kf4
    public final int hashCode() {
        int iHashCode = ((((this.d.hashCode() + (this.c.hashCode() * 31)) * 31) + this.e) * 31) + this.f;
        s19<?> s19Var = this.i;
        if (s19Var != null) {
            iHashCode = (iHashCode * 31) + s19Var.hashCode();
        }
        int iHashCode2 = this.g.hashCode();
        return this.h.b.hashCode() + ((iHashCode2 + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        return "ResourceCacheKey{sourceKey=" + this.c + ", signature=" + this.d + ", width=" + this.e + ", height=" + this.f + ", decodedResourceClass=" + this.g + ", transformation='" + this.i + "', options=" + this.h + '}';
    }
}
