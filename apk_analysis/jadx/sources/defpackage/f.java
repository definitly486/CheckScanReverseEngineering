package defpackage;

import java.io.EOFException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class f {
    public static final gx0 a;
    public static final gx0 b;
    public static final gx0 c;
    public static final gx0 d;
    public static final gx0 e;

    static {
        gx0 gx0Var = gx0.e;
        a = gx0.a.c("/");
        b = gx0.a.c("\\");
        c = gx0.a.c("/\\");
        d = gx0.a.c(".");
        e = gx0.a.c("..");
    }

    public static final j46 a(j46 j46Var, j46 j46Var2, boolean z) {
        j46Var2.getClass();
        if (c(j46Var2) != -1 || j46Var2.g() != null) {
            return j46Var2;
        }
        gx0 gx0VarB = b(j46Var);
        if (gx0VarB == null && (gx0VarB = b(j46Var2)) == null) {
            gx0VarB = f(j46.c);
        }
        bu0 bu0Var = new bu0();
        bu0Var.z0(j46Var.b);
        if (bu0Var.c > 0) {
            bu0Var.z0(gx0VarB);
        }
        bu0Var.z0(j46Var2.b);
        return d(bu0Var, z);
    }

    public static final gx0 b(j46 j46Var) {
        gx0 gx0Var = j46Var.b;
        gx0 gx0Var2 = a;
        if (gx0.j(gx0Var, gx0Var2) != -1) {
            return gx0Var2;
        }
        gx0 gx0Var3 = j46Var.b;
        gx0 gx0Var4 = b;
        if (gx0.j(gx0Var3, gx0Var4) != -1) {
            return gx0Var4;
        }
        return null;
    }

    public static final int c(j46 j46Var) {
        gx0 gx0Var = j46Var.b;
        if (gx0Var.f() != 0) {
            if (gx0Var.n(0) != 47) {
                if (gx0Var.n(0) == 92) {
                    if (gx0Var.f() > 2 && gx0Var.n(1) == 92) {
                        gx0 gx0Var2 = b;
                        gx0Var2.getClass();
                        int i = gx0Var.i(2, gx0Var2.k());
                        return i == -1 ? gx0Var.f() : i;
                    }
                } else if (gx0Var.f() > 2 && gx0Var.n(1) == 58 && gx0Var.n(2) == 92) {
                    char cN = (char) gx0Var.n(0);
                    if ('a' <= cN && cN < '{') {
                        return 3;
                    }
                    if ('A' <= cN && cN < '[') {
                        return 3;
                    }
                }
            }
            return 1;
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0121 A[EDGE_INSN: B:100:0x0121->B:82:0x0121 BREAK  A[LOOP:1: B:54:0x00bc->B:113:0x00bc], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:101:0x010f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:110:0x00e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:123:0x012d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:56:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:58:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:59:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:84:0x0128 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x012a  */
    /* JADX WARN: Code duplicated, block: B:89:0x013f  */
    public static final j46 d(bu0 bu0Var, boolean z) throws EOFException {
        gx0 gx0Var;
        long j;
        char cQ;
        boolean z2;
        ArrayList arrayList;
        boolean zP;
        gx0 gx0Var2;
        int size;
        int i;
        long jW;
        gx0 gx0VarI;
        gx0 gx0Var3;
        bu0 bu0Var2 = new bu0();
        gx0 gx0VarE = null;
        int i2 = 0;
        while (true) {
            gx0 gx0Var4 = a;
            gx0Var4.getClass();
            if (!bu0Var.X(0L, gx0Var4, gx0Var4.f())) {
                gx0Var = b;
                gx0Var.getClass();
                if (!bu0Var.X(0L, gx0Var, gx0Var.f())) {
                    break;
                }
            }
            byte b2 = bu0Var.readByte();
            if (gx0VarE == null) {
                gx0VarE = e(b2);
            }
            i2++;
        }
        boolean z3 = i2 >= 2 && aa4.e(gx0VarE, gx0Var);
        gx0 gx0Var5 = c;
        if (!z3) {
            if (i2 > 0) {
                gx0VarE.getClass();
                bu0Var2.z0(gx0VarE);
            } else {
                long jW2 = bu0Var.W(gx0Var5);
                if (gx0VarE == null) {
                    gx0VarE = jW2 == -1 ? f(j46.c) : e(bu0Var.Q(jW2));
                }
                if (aa4.e(gx0VarE, gx0Var) && bu0Var.c >= 2) {
                    j = -1;
                    if (bu0Var.Q(1L) == 58 && (('a' <= (cQ = (char) bu0Var.Q(0L)) && cQ < '{') || ('A' <= cQ && cQ < '['))) {
                        if (jW2 == 2) {
                            bu0Var2.H(bu0Var, 3L);
                        } else {
                            bu0Var2.H(bu0Var, 2L);
                        }
                    }
                } else {
                    j = -1;
                }
                j59 j59Var = j59.a;
            }
            if (bu0Var2.c > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            arrayList = new ArrayList();
            while (true) {
                zP = bu0Var.P();
                gx0Var2 = d;
                if (!zP) {
                    break;
                }
                jW = bu0Var.W(gx0Var5);
                if (jW == j) {
                    gx0VarI = bu0Var.i(bu0Var.c);
                } else {
                    gx0VarI = bu0Var.i(jW);
                    bu0Var.readByte();
                }
                gx0Var3 = e;
                if (aa4.e(gx0VarI, gx0Var3)) {
                    if (z2 || !arrayList.isEmpty()) {
                        if (z || (!z2 && (arrayList.isEmpty() || aa4.e(qn1.b0(arrayList), gx0Var3)))) {
                            arrayList.add(gx0VarI);
                        } else if (!z3 || arrayList.size() != 1) {
                            nn1.F(arrayList);
                        }
                    }
                } else if (aa4.e(gx0VarI, gx0Var2) && !aa4.e(gx0VarI, gx0.e)) {
                    arrayList.add(gx0VarI);
                }
            }
            size = arrayList.size();
            for (i = 0; i < size; i++) {
                if (i > 0) {
                    bu0Var2.z0(gx0VarE);
                }
                bu0Var2.z0((gx0) arrayList.get(i));
            }
            if (bu0Var2.c == 0) {
                bu0Var2.z0(gx0Var2);
            }
            return new j46(bu0Var2.i(bu0Var2.c));
        }
        gx0VarE.getClass();
        bu0Var2.z0(gx0VarE);
        bu0Var2.z0(gx0VarE);
        j = -1;
        if (bu0Var2.c > 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        arrayList = new ArrayList();
        while (true) {
            zP = bu0Var.P();
            gx0Var2 = d;
            if (!zP) {
                break;
                break;
            }
            jW = bu0Var.W(gx0Var5);
            if (jW == j) {
                gx0VarI = bu0Var.i(bu0Var.c);
            } else {
                gx0VarI = bu0Var.i(jW);
                bu0Var.readByte();
            }
            gx0Var3 = e;
            if (aa4.e(gx0VarI, gx0Var3)) {
                if (z2) {
                }
                if (z) {
                }
                arrayList.add(gx0VarI);
            } else if (aa4.e(gx0VarI, gx0Var2)) {
            }
        }
        size = arrayList.size();
        while (i < size) {
            if (i > 0) {
                bu0Var2.z0(gx0VarE);
            }
            bu0Var2.z0((gx0) arrayList.get(i));
        }
        if (bu0Var2.c == 0) {
            bu0Var2.z0(gx0Var2);
        }
        return new j46(bu0Var2.i(bu0Var2.c));
    }

    public static final gx0 e(byte b2) {
        if (b2 == 47) {
            return a;
        }
        if (b2 == 92) {
            return b;
        }
        fg.c(jh.b(b2, "not a directory separator: "));
        return null;
    }

    public static final gx0 f(String str) {
        if (aa4.e(str, "/")) {
            return a;
        }
        if (aa4.e(str, "\\")) {
            return b;
        }
        fg.c(bj.c("not a directory separator: ", str));
        return null;
    }
}
