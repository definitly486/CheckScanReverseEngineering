package org.jsoup.nodes;

import defpackage.co5;
import defpackage.ja8;
import defpackage.nw6;
import defpackage.ti0;
import defpackage.yb9;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public abstract class n implements Cloneable {
    public static final List<n> d = Collections.EMPTY_LIST;
    public h b;
    public int c;

    public h A() {
        return this.b;
    }

    public final n B() {
        if (this.b == null || D() <= 0) {
            return null;
        }
        return (n) ((ArrayList) this.b.p()).get(this.c - 1);
    }

    public void C(n nVar) {
        yb9.b(nVar.b == this);
        h hVar = (h) this;
        if (hVar.f.b) {
            ((ArrayList) p()).remove(nVar.c);
        } else {
            ((ArrayList) p()).remove(nVar);
        }
        hVar.f.b = false;
        nVar.b = null;
    }

    public final int D() {
        h.a aVar;
        h hVar = this.b;
        if (hVar != null) {
            h.a aVar2 = hVar.f;
            if (!aVar2.b) {
                int size = aVar2.size();
                int i = 0;
                while (true) {
                    aVar = hVar.f;
                    if (i >= size) {
                        break;
                    }
                    aVar.get(i).c = i;
                    i++;
                }
                aVar.b = true;
            }
        }
        return this.c;
    }

    public String b(String str) {
        yb9.c(str);
        if (!s() || h().p(str) == -1) {
            return "";
        }
        String strI = i();
        b bVarH = h();
        int iP = bVarH.p(str);
        String strD = iP == -1 ? "" : b.d(bVarH.d[iP]);
        Pattern pattern = ja8.d;
        String strReplaceAll = pattern.matcher(strI).replaceAll("");
        String strReplaceAll2 = pattern.matcher(strD).replaceAll("");
        try {
            try {
                return ja8.l(new URL(strReplaceAll), strReplaceAll2).toExternalForm();
            } catch (MalformedURLException unused) {
                return new URL(strReplaceAll2).toExternalForm();
            }
        } catch (MalformedURLException unused2) {
            return ja8.c.matcher(strReplaceAll2).find() ? strReplaceAll2 : "";
        }
    }

    public String c(String str) {
        yb9.e(str);
        if (s()) {
            b bVarH = h();
            int iP = bVarH.p(str);
            String strD = iP == -1 ? "" : b.d(bVarH.d[iP]);
            if (strD.length() > 0) {
                return strD;
            }
            if (str.startsWith("abs:")) {
                return b(str.substring(4));
            }
        }
        return "";
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public abstract b h();

    public abstract String i();

    public abstract int j();

    @Override // 
    public n k() {
        n nVarL = l(null);
        LinkedList linkedList = new LinkedList();
        linkedList.add(nVarL);
        while (!linkedList.isEmpty()) {
            n nVar = (n) linkedList.remove();
            int iJ = nVar.j();
            for (int i = 0; i < iJ; i++) {
                List<n> listP = nVar.p();
                n nVarL2 = listP.get(i).l(nVar);
                listP.set(i, nVarL2);
                linkedList.add(nVarL2);
            }
        }
        return nVarL;
    }

    public n l(n nVar) {
        f fVarZ;
        try {
            n nVar2 = (n) super.clone();
            nVar2.b = (h) nVar;
            nVar2.c = nVar == null ? 0 : D();
            if (nVar == null && !(this instanceof f) && (fVarZ = z()) != null) {
                f fVar = new f(fVarZ.e.b, fVarZ.i(), fVarZ.l);
                b bVar = fVarZ.g;
                if (bVar != null) {
                    fVar.g = bVar.clone();
                }
                fVar.k = fVarZ.k.clone();
                nVar2.b = fVar;
                ((ArrayList) fVar.p()).add(nVar2);
            }
            return nVar2;
        } catch (CloneNotSupportedException e) {
            ti0.f(e);
            return null;
        }
    }

    public abstract List<n> p();

    public final n q() {
        if (j() == 0) {
            return null;
        }
        return p().get(0);
    }

    public final boolean r(String str) {
        if (!s()) {
            return false;
        }
        if (str.startsWith("abs:")) {
            String strSubstring = str.substring(4);
            if (h().p(strSubstring) != -1 && !b(strSubstring).isEmpty()) {
                return true;
            }
        }
        return h().p(str) != -1;
    }

    public abstract boolean s();

    public final boolean t(String str) {
        return w().equals(str);
    }

    public String toString() {
        return x();
    }

    public final n u() {
        h hVar = this.b;
        if (hVar == null) {
            return null;
        }
        List<n> listP = hVar.p();
        int iD = D() + 1;
        ArrayList arrayList = (ArrayList) listP;
        if (arrayList.size() > iD) {
            return (n) arrayList.get(iD);
        }
        return null;
    }

    public abstract String v();

    public String w() {
        return v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [org.jsoup.nodes.p] */
    /* JADX WARN: Type inference failed for: r3v2, types: [org.jsoup.nodes.p] */
    /* JADX WARN: Type inference failed for: r3v3, types: [org.jsoup.nodes.p, org.jsoup.nodes.p$a] */
    public String x() {
        ?? pVar;
        StringBuilder sbA = ja8.a();
        nw6 nw6VarD = nw6.d(sbA);
        f fVarZ = z();
        f.a aVar = fVarZ != null ? fVarZ.k : new f().k;
        aVar.getClass();
        if (aVar.d) {
            pVar = new p.a(this, nw6VarD, aVar);
            pVar.d = false;
            for (n nVar = this; nVar != null; nVar = nVar.b) {
                if ((nVar instanceof h) && ((h) nVar).e.f(64)) {
                    pVar.d = true;
                    break;
                }
            }
        } else {
            pVar = new p(this, nw6VarD, aVar);
        }
        co5.a(pVar, this);
        return ja8.k(sbA);
    }

    public abstract void y(nw6 nw6Var, f.a aVar);

    public final f z() {
        while (this != null) {
            if (this instanceof f) {
                return (f) this;
            }
            this = this.b;
        }
        return null;
    }
}
