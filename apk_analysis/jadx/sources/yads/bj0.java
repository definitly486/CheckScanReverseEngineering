package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class bj0 {
    public final hx5 a;
    public oe3 b;
    public p55 c;
    public h14 d;
    public h14 e;
    public h14 f;

    public bj0(hx5 hx5Var) {
        this.a = hx5Var;
        le3 le3Var = oe3.c;
        this.b = k55.f;
        this.c = p55.h;
    }

    public static h14 a(eq2 eq2Var, oe3 oe3Var, h14 h14Var, hx5 hx5Var) {
        int iA;
        int iA2;
        eq2Var.q();
        kx5 kx5Var = eq2Var.b0.a;
        eq2Var.q();
        if (eq2Var.b0.a.c()) {
            iA = 0;
        } else {
            bw4 bw4Var = eq2Var.b0;
            iA = bw4Var.a.a(bw4Var.b.a);
        }
        Object objA = kx5Var.c() ? null : kx5Var.a(iA);
        if (eq2Var.j() || kx5Var.c()) {
            iA2 = -1;
        } else {
            hx5 hx5VarA = kx5Var.a(iA, hx5Var, false);
            eq2Var.q();
            iA2 = hx5VarA.a(u56.a(u56.b(eq2Var.a(eq2Var.b0))) - hx5Var.f);
        }
        int i = iA2;
        for (int i2 = 0; i2 < oe3Var.size(); i2++) {
            h14 h14Var2 = (h14) oe3Var.get(i2);
            if (a(h14Var2, objA, eq2Var.j(), eq2Var.e(), eq2Var.f(), i)) {
                return h14Var2;
            }
        }
        if (oe3Var.isEmpty() && h14Var != null && a(h14Var, objA, eq2Var.j(), eq2Var.e(), eq2Var.f(), i)) {
            return h14Var;
        }
        return null;
    }

    public final void a(pe3 pe3Var, h14 h14Var, kx5 kx5Var) {
        if (h14Var == null) {
            return;
        }
        if (kx5Var.a(h14Var.a) != -1) {
            pe3Var.a(h14Var, kx5Var);
            return;
        }
        kx5 kx5Var2 = (kx5) this.c.get(h14Var);
        if (kx5Var2 != null) {
            pe3Var.a(h14Var, kx5Var2);
        }
    }

    public final void a(kx5 kx5Var) {
        oe3 oe3Var;
        pe3 pe3Var = new pe3(4);
        if (this.b.isEmpty()) {
            a(pe3Var, this.e, kx5Var);
            if (!ep4.a(this.f, this.e)) {
                a(pe3Var, this.f, kx5Var);
            }
            if (!ep4.a(this.d, this.e) && !ep4.a(this.d, this.f)) {
                a(pe3Var, this.d, kx5Var);
            }
        } else {
            int i = 0;
            while (true) {
                int size = this.b.size();
                oe3Var = this.b;
                if (i >= size) {
                    break;
                }
                a(pe3Var, (h14) oe3Var.get(i), kx5Var);
                i++;
            }
            if (!oe3Var.contains(this.d)) {
                a(pe3Var, this.d, kx5Var);
            }
        }
        this.c = p55.a(pe3Var.b, pe3Var.a);
    }

    public static boolean a(h14 h14Var, Object obj, boolean z, int i, int i2, int i3) {
        if (!h14Var.a.equals(obj)) {
            return false;
        }
        if (z && h14Var.b == i && h14Var.c == i2) {
            return true;
        }
        return !z && h14Var.b == -1 && h14Var.e == i3;
    }
}
