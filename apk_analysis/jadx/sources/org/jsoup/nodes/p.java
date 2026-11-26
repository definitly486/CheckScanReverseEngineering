package org.jsoup.nodes;

import defpackage.ja8;
import defpackage.jj8;
import defpackage.nw6;
import defpackage.yb9;

/* JADX INFO: loaded from: classes5.dex */
public class p {
    public final n a;
    public final nw6 b;
    public final f.a c;

    public static class a extends p {
        public boolean d;

        public static boolean f(n nVar) {
            return (nVar instanceof r) && ja8.e(((r) nVar).E());
        }

        @Override // org.jsoup.nodes.p
        public final void a(h hVar, int i) {
            if (h(hVar)) {
                e(i);
            }
            hVar.y(this.b, this.c);
            if (hVar.e.f(64)) {
                this.d = true;
            }
        }

        @Override // org.jsoup.nodes.p
        public final void b(m mVar, int i) {
            if (h(mVar)) {
                e(i);
            }
            mVar.y(this.b, this.c);
        }

        @Override // org.jsoup.nodes.p
        public final void c(h hVar, int i) {
            n nVarQ = hVar.q();
            while (f(nVarQ)) {
                nVarQ = nVarQ.u();
            }
            if (h(nVarQ)) {
                e(i);
            }
            super.c(hVar, i);
            if (this.d && hVar.e.f(64)) {
                for (h hVar2 = hVar.b; hVar2 != null; hVar2 = hVar2.b) {
                    if ((hVar2.e.e & 64) != 0) {
                        return;
                    }
                }
                this.d = false;
            }
        }

        /* JADX WARN: Code duplicated, block: B:6:0x000e A[PHI: r1
          0x000e: PHI (r1v3 int) = (r1v0 int), (r1v2 int), (r1v2 int) binds: [B:5:0x000c, B:27:0x004a, B:29:0x005a] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // org.jsoup.nodes.p
        public final void d(r rVar, int i, int i2) {
            int i3 = 0;
            if (!this.d) {
                int i4 = 4;
                if (g(rVar.b)) {
                    n nVarB = rVar.B();
                    n nVarU = rVar.u();
                    if ((!(nVarB instanceof h) || g(nVarB)) && (nVarB == null || (!(nVarB instanceof r) && h(nVarB)))) {
                        i4 = 12;
                    }
                    if (nVarU != null && ((nVarU instanceof r) || !h(nVarU))) {
                        while (f(nVarU)) {
                            nVarU = nVarU.u();
                        }
                        if (!(nVarU instanceof r) || !ja8.h(((m) nVarU).E().codePointAt(0))) {
                            i3 = i4;
                        }
                    }
                    i3 = i4 | 16;
                } else {
                    i3 = i4;
                }
                if (!ja8.e(rVar.E()) && g(rVar.b) && h(rVar)) {
                    e(i2);
                }
            }
            super.d(rVar, i3, i2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v10 */
        /* JADX WARN: Type inference failed for: r5v3, types: [org.jsoup.nodes.h] */
        /* JADX WARN: Type inference failed for: r5v4, types: [org.jsoup.nodes.n] */
        /* JADX WARN: Type inference failed for: r5v5, types: [org.jsoup.nodes.n] */
        /* JADX WARN: Type inference failed for: r5v9 */
        public boolean g(n nVar) {
            h hVar;
            if (nVar != null && (nVar instanceof h)) {
                h hVar2 = (h) nVar;
                if (!hVar2.t("br")) {
                    int i = hVar2.e.e;
                    if ((i & 4) != 0) {
                        return true;
                    }
                    if ((i & 1) == 0) {
                        if (!(hVar2.b instanceof f)) {
                            int i2 = 0;
                            ?? U = hVar2.I();
                            while (i2 < 5 && U != 0) {
                                int i3 = U.e.e;
                                if ((i3 & 4) == 0 && (i3 & 1) != 0) {
                                    while (true) {
                                        U = U.u();
                                        if (U == 0) {
                                            hVar = null;
                                            break;
                                        }
                                        if (U instanceof h) {
                                            hVar = (h) U;
                                            break;
                                        }
                                    }
                                    i2++;
                                    U = hVar;
                                }
                            }
                        }
                    }
                }
                return true;
            }
            return false;
        }

        public boolean h(n nVar) {
            if (nVar != null && nVar != this.a && !this.d && !f(nVar)) {
                if (g(nVar)) {
                    return true;
                }
                n nVarB = nVar.B();
                while (f(nVarB)) {
                    nVarB = nVarB.B();
                }
                if (g(nVarB)) {
                    return true;
                }
                h hVar = nVar.b;
                if (g(hVar) && !hVar.e.f(8)) {
                    n nVarQ = hVar.q();
                    for (int i = 0; i < 5 && nVarQ != null; i++) {
                        if (!(nVarQ instanceof r)) {
                            if (nVarB == null) {
                                return true;
                            }
                            if ((nVarB instanceof r) || (!g(nVarB) && (nVarB instanceof h))) {
                                break;
                            }
                            return true;
                        }
                        nVarQ = nVarQ.u();
                    }
                }
            }
            return false;
        }
    }

    public p(n nVar, nw6 nw6Var, f.a aVar) {
        this.a = nVar;
        this.b = nw6Var;
        this.c = aVar;
    }

    public void a(h hVar, int i) {
        hVar.y(this.b, this.c);
    }

    public void b(m mVar, int i) {
        mVar.y(this.b, this.c);
    }

    public void c(h hVar, int i) {
        if (hVar.f.isEmpty()) {
            return;
        }
        nw6 nw6VarB = this.b.b("</");
        f.a.EnumC0312a enumC0312a = this.c.g;
        f.a.EnumC0312a enumC0312a2 = f.a.EnumC0312a.xml;
        jj8 jj8Var = hVar.e;
        nw6VarB.b(enumC0312a == enumC0312a2 ? org.jsoup.nodes.a.b(jj8Var.c, enumC0312a2) : jj8Var.c).a('>');
    }

    public void d(r rVar, int i, int i2) {
        String strE = rVar.E();
        f.a aVar = this.c;
        j.c(this.b, strE, aVar, i | 1);
    }

    public final void e(int i) {
        String strValueOf;
        nw6 nw6VarA = this.b.a('\n');
        f.a aVar = this.c;
        int iMin = i * aVar.e;
        int i2 = aVar.f;
        String[] strArr = ja8.a;
        yb9.a("width must be >= 0", iMin >= 0);
        yb9.b(i2 >= -1);
        if (i2 != -1) {
            iMin = Math.min(iMin, i2);
        }
        String[] strArr2 = ja8.a;
        if (iMin < 21) {
            strValueOf = strArr2[iMin];
        } else {
            char[] cArr = new char[iMin];
            for (int i3 = 0; i3 < iMin; i3++) {
                cArr[i3] = ' ';
            }
            strValueOf = String.valueOf(cArr);
        }
        nw6VarA.b(strValueOf);
    }
}
