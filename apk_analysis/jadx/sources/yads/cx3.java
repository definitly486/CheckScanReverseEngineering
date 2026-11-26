package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class cx3 {
    public float a;
    public float b;
    public float c;
    public float d;
    public float e;
    public float f;
    public float g;
    public float h;

    public cx3(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
        this.e = f5;
        this.f = f6;
        this.g = f7;
        this.h = f8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cx3)) {
            return false;
        }
        cx3 cx3Var = (cx3) obj;
        return Float.compare(this.a, cx3Var.a) == 0 && Float.compare(this.b, cx3Var.b) == 0 && Float.compare(this.c, cx3Var.c) == 0 && Float.compare(this.d, cx3Var.d) == 0 && Float.compare(this.e, cx3Var.e) == 0 && Float.compare(this.f, cx3Var.f) == 0 && Float.compare(this.g, cx3Var.g) == 0 && Float.compare(this.h, cx3Var.h) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.h) + rp0.a(rp0.a(rp0.a(rp0.a(rp0.a(rp0.a(Float.hashCode(this.a) * 31, this.b, 31), this.c, 31), this.d, 31), this.e, 31), this.f, 31), this.g, 31);
    }

    public final String toString() {
        return "Particle(cx=" + this.a + ", cy=" + this.b + ", radius=" + this.c + ", vx=" + this.d + ", vy=" + this.e + ", angularVel=" + this.f + ", lifetimeMs=" + this.g + ", ageMs=" + this.h + ")";
    }
}
