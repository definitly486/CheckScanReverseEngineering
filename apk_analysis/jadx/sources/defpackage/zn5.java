package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zn5 {
    public zn5 a = null;
    public zn5 b = null;
    public zn5 c = null;
    public zn5 d = null;
    public zn5 e = null;

    public abstract void a(g15 g15Var);

    public final void b(zn5 zn5Var) {
        zn5Var.f();
        zn5Var.d(this);
        zn5 zn5Var2 = this.c;
        if (zn5Var2 == null) {
            this.b = zn5Var;
            this.c = zn5Var;
        } else {
            zn5Var2.e = zn5Var;
            zn5Var.d = zn5Var2;
            this.c = zn5Var;
        }
    }

    public zn5 c() {
        return this.a;
    }

    public void d(zn5 zn5Var) {
        this.a = zn5Var;
    }

    public String e() {
        return "";
    }

    public final void f() {
        zn5 zn5Var = this.d;
        if (zn5Var != null) {
            zn5Var.e = this.e;
        } else {
            zn5 zn5Var2 = this.a;
            if (zn5Var2 != null) {
                zn5Var2.b = this.e;
            }
        }
        zn5 zn5Var3 = this.e;
        if (zn5Var3 != null) {
            zn5Var3.d = zn5Var;
        } else {
            zn5 zn5Var4 = this.a;
            if (zn5Var4 != null) {
                zn5Var4.c = zn5Var;
            }
        }
        this.a = null;
        this.e = null;
        this.d = null;
    }

    public final String toString() {
        return getClass().getSimpleName() + "{" + e() + "}";
    }
}
