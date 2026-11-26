package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class gs implements tw4 {
    public final int b;
    public n65 d;
    public int e;
    public rw4 f;
    public int g;
    public mc5 h;
    public vz2[] i;
    public long j;
    public boolean l;
    public boolean m;
    public final a03 c = new a03();
    public long k = Long.MIN_VALUE;

    public gs(int i) {
        this.b = i;
    }

    public static int b(int i) {
        return i & 64;
    }

    public final int a(a03 a03Var, mi0 mi0Var, int i) {
        mc5 mc5Var = this.h;
        mc5Var.getClass();
        int iA = mc5Var.a(a03Var, mi0Var, i);
        if (iA == -4) {
            if (mi0Var.b(4)) {
                this.k = Long.MIN_VALUE;
                return this.l ? -4 : -3;
            }
            long j = mi0Var.f + this.j;
            mi0Var.f = j;
            this.k = Math.max(this.k, j);
            return iA;
        }
        if (iA == -5) {
            vz2 vz2Var = a03Var.b;
            vz2Var.getClass();
            if (vz2Var.q != Long.MAX_VALUE) {
                uz2 uz2Var = new uz2(vz2Var);
                uz2Var.o = vz2Var.q + this.j;
                a03Var.b = new vz2(uz2Var);
            }
        }
        return iA;
    }

    public abstract int a(vz2 vz2Var);

    public abstract void a(long j, long j2);

    public abstract void a(long j, boolean z);

    public abstract void a(vz2[] vz2VarArr, long j, long j2);

    public abstract String c();

    public final boolean d() {
        return this.k == Long.MIN_VALUE;
    }

    public abstract boolean e();

    public abstract boolean f();

    public abstract void g();

    public void h() {
    }

    public void i() {
    }

    public void j() {
    }

    public int k() {
        return 0;
    }

    public my3 b() {
        return null;
    }

    public static int a(int i, int i2, int i3) {
        return i | i2 | i3 | 128;
    }

    public void a(float f, float f2) {
    }

    @Override // yads.tw4
    public void a(int i, Object obj) {
    }

    public void a(boolean z) {
    }

    public final up2 a(Exception exc, vz2 vz2Var, boolean z, int i) {
        int iA;
        if (vz2Var == null || this.m) {
            iA = 4;
        } else {
            this.m = true;
            try {
                iA = a(vz2Var) & 7;
                this.m = false;
            } catch (up2 unused) {
                this.m = false;
                iA = 4;
            } catch (Throwable th) {
                this.m = false;
                throw th;
            }
        }
        return new up2(1, exc, null, i, c(), this.e, vz2Var, vz2Var == null ? 4 : iA, z);
    }

    public static int a(int i) {
        return i & 128;
    }
}
