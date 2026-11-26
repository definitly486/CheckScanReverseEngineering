package defpackage;

import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class j46 implements Comparable<j46> {
    public static final String c;
    public final gx0 b;

    public static final class a {
        public static j46 a(String str, boolean z) {
            str.getClass();
            gx0 gx0Var = f.a;
            bu0 bu0Var = new bu0();
            bu0Var.I0(str);
            return f.d(bu0Var, z);
        }
    }

    static {
        String str = File.separator;
        str.getClass();
        c = str;
    }

    public j46(gx0 gx0Var) {
        gx0Var.getClass();
        this.b = gx0Var;
    }

    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        int iC = f.c(this);
        gx0 gx0Var = this.b;
        if (iC == -1) {
            iC = 0;
        } else if (iC < gx0Var.f() && gx0Var.n(iC) == 92) {
            iC++;
        }
        int iF = gx0Var.f();
        int i = iC;
        while (iC < iF) {
            if (gx0Var.n(iC) == 47 || gx0Var.n(iC) == 92) {
                arrayList.add(gx0Var.t(i, iC));
                i = iC + 1;
            }
            iC++;
        }
        if (i < gx0Var.f()) {
            arrayList.add(gx0Var.t(i, gx0Var.f()));
        }
        return arrayList;
    }

    public final String c() {
        gx0 gx0Var = f.a;
        gx0 gx0VarU = this.b;
        int iP = gx0.p(gx0VarU, gx0Var);
        if (iP == -1) {
            iP = gx0.p(gx0VarU, f.b);
        }
        if (iP != -1) {
            gx0VarU = gx0.u(gx0VarU, iP + 1, 0, 2);
        } else if (g() != null && gx0VarU.f() == 2) {
            gx0VarU = gx0.e;
        }
        return gx0VarU.x();
    }

    @Override // java.lang.Comparable
    public final int compareTo(j46 j46Var) {
        j46 j46Var2 = j46Var;
        j46Var2.getClass();
        return this.b.compareTo(j46Var2.b);
    }

    public final j46 d() {
        gx0 gx0Var = f.d;
        gx0 gx0Var2 = this.b;
        if (aa4.e(gx0Var2, gx0Var)) {
            return null;
        }
        gx0 gx0Var3 = f.a;
        if (aa4.e(gx0Var2, gx0Var3)) {
            return null;
        }
        gx0 gx0Var4 = f.b;
        if (aa4.e(gx0Var2, gx0Var4)) {
            return null;
        }
        gx0 gx0Var5 = f.e;
        gx0Var2.getClass();
        gx0Var5.getClass();
        int iF = gx0Var2.f();
        byte[] bArr = gx0Var5.b;
        if (gx0Var2.s(iF - bArr.length, gx0Var5, bArr.length) && (gx0Var2.f() == 2 || gx0Var2.s(gx0Var2.f() - 3, gx0Var3, 1) || gx0Var2.s(gx0Var2.f() - 3, gx0Var4, 1))) {
            return null;
        }
        int iP = gx0.p(gx0Var2, gx0Var3);
        if (iP == -1) {
            iP = gx0.p(gx0Var2, gx0Var4);
        }
        if (iP == 2 && g() != null) {
            if (gx0Var2.f() == 3) {
                return null;
            }
            return new j46(gx0.u(gx0Var2, 0, 3, 1));
        }
        if (iP == 1) {
            gx0Var4.getClass();
            if (gx0Var2.s(0, gx0Var4, gx0Var4.f())) {
                return null;
            }
        }
        if (iP != -1 || g() == null) {
            if (iP == -1) {
                return new j46(gx0Var);
            }
            return iP == 0 ? new j46(gx0.u(gx0Var2, 0, 1, 1)) : new j46(gx0.u(gx0Var2, 0, iP, 1));
        }
        if (gx0Var2.f() == 2) {
            return null;
        }
        return new j46(gx0.u(gx0Var2, 0, 2, 1));
    }

    public final j46 e(j46 j46Var) {
        j46Var.getClass();
        gx0 gx0Var = j46Var.b;
        int iC = f.c(this);
        gx0 gx0Var2 = this.b;
        j46 j46Var2 = iC == -1 ? null : new j46(gx0Var2.t(0, iC));
        int iC2 = f.c(j46Var);
        if (!aa4.e(j46Var2, iC2 == -1 ? null : new j46(gx0Var.t(0, iC2)))) {
            kg.f("Paths of different roots cannot be relative to each other: ", this, " and ", j46Var);
            return null;
        }
        ArrayList arrayListA = a();
        ArrayList arrayListA2 = j46Var.a();
        int iMin = Math.min(arrayListA.size(), arrayListA2.size());
        int i = 0;
        while (i < iMin && aa4.e(arrayListA.get(i), arrayListA2.get(i))) {
            i++;
        }
        if (i == iMin && gx0Var2.f() == gx0Var.f()) {
            return a.a(".", false);
        }
        if (arrayListA2.subList(i, arrayListA2.size()).indexOf(f.e) != -1) {
            kg.f("Impossible relative path to resolve: ", this, " and ", j46Var);
            return null;
        }
        if (aa4.e(gx0Var, f.d)) {
            return this;
        }
        bu0 bu0Var = new bu0();
        gx0 gx0VarB = f.b(j46Var);
        if (gx0VarB == null && (gx0VarB = f.b(this)) == null) {
            gx0VarB = f.f(c);
        }
        int size = arrayListA2.size();
        for (int i2 = i; i2 < size; i2++) {
            bu0Var.z0(f.e);
            bu0Var.z0(gx0VarB);
        }
        int size2 = arrayListA.size();
        while (i < size2) {
            bu0Var.z0((gx0) arrayListA.get(i));
            bu0Var.z0(gx0VarB);
            i++;
        }
        return f.d(bu0Var, false);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof j46) && aa4.e(((j46) obj).b, this.b);
    }

    public final j46 f(String str) {
        str.getClass();
        bu0 bu0Var = new bu0();
        bu0Var.I0(str);
        return f.a(this, f.d(bu0Var, false), false);
    }

    public final Character g() {
        gx0 gx0Var = f.a;
        gx0 gx0Var2 = this.b;
        if (gx0.j(gx0Var2, gx0Var) != -1 || gx0Var2.f() < 2 || gx0Var2.n(1) != 58) {
            return null;
        }
        char cN = (char) gx0Var2.n(0);
        if (('a' > cN || cN >= '{') && ('A' > cN || cN >= '[')) {
            return null;
        }
        return Character.valueOf(cN);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final File toFile() {
        return new File(this.b.x());
    }

    public final String toString() {
        return this.b.x();
    }
}
