package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class zc8 implements g24 {
    public final x04 a;
    public final b24 b;
    public final z82 c;
    public final o95.b d;
    public final String e;
    public final boolean f;
    public final boolean g;

    public zc8(x04 x04Var, b24 b24Var, z82 z82Var, o95.b bVar, String str, boolean z, boolean z2) {
        this.a = x04Var;
        this.b = b24Var;
        this.c = z82Var;
        this.d = bVar;
        this.e = str;
        this.f = z;
        this.g = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zc8)) {
            return false;
        }
        zc8 zc8Var = (zc8) obj;
        return aa4.e(this.a, zc8Var.a) && this.b.equals(zc8Var.b) && this.c == zc8Var.c && aa4.e(this.d, zc8Var.d) && aa4.e(this.e, zc8Var.e) && this.f == zc8Var.f && this.g == zc8Var.g;
    }

    @Override // defpackage.g24
    public final b24 getRequest() {
        return this.b;
    }

    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31;
        o95.b bVar = this.d;
        int iHashCode2 = (iHashCode + (bVar == null ? 0 : bVar.hashCode())) * 31;
        String str = this.e;
        return Boolean.hashCode(this.g) + tg.c((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31, 31, this.f);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SuccessResult(image=");
        sb.append(this.a);
        sb.append(", request=");
        sb.append(this.b);
        sb.append(", dataSource=");
        sb.append(this.c);
        sb.append(", memoryCacheKey=");
        sb.append(this.d);
        sb.append(", diskCacheKey=");
        ud.f(sb, this.e, ", isSampled=", this.f, ", isPlaceholderCached=");
        return dh.e(sb, this.g, ")");
    }
}
