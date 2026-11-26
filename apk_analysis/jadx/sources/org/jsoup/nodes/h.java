package org.jsoup.nodes;

import defpackage.by3;
import defpackage.ja8;
import defpackage.jj8;
import defpackage.nw6;
import defpackage.w36;
import defpackage.yb9;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Spliterators;
import java.util.function.Consumer;
import java.util.regex.Pattern;
import java.util.stream.StreamSupport;

/* JADX INFO: loaded from: classes5.dex */
public class h extends n implements Iterable<h> {
    public static final List<h> h = Collections.EMPTY_LIST;
    public static final a i = new a(0);
    public static final String j;
    public final jj8 e;
    public a f;
    public b g;

    public static final class a extends ArrayList<n> {
        public boolean b;

        public a(int i) {
            super(i);
            this.b = true;
        }

        public final void i() {
            ((ArrayList) this).modCount++;
        }
    }

    static {
        Pattern.compile("\\s+");
        j = "/".concat("baseUri");
    }

    public h(jj8 jj8Var, String str, b bVar) {
        yb9.e(jj8Var);
        this.f = i;
        this.g = bVar;
        this.e = jj8Var;
        if (ja8.e(str)) {
            return;
        }
        yb9.e(str);
        H(str);
    }

    @Override // org.jsoup.nodes.n
    public final h A() {
        return this.b;
    }

    public final void E(n nVar) {
        yb9.e(nVar);
        h hVar = nVar.b;
        if (hVar != null) {
            hVar.C(nVar);
        }
        nVar.b = this;
        p();
        this.f.add(nVar);
        nVar.c = this.f.size() - 1;
    }

    public final h F(String str) {
        String str2 = this.e.b;
        f fVarZ = z();
        w36 w36Var = fVarZ != null ? fVarZ.l : new w36(new by3());
        h hVar = new h(w36Var.e().d(str, null, str2, w36Var.c.a), i(), null);
        E(hVar);
        return hVar;
    }

    @Override // org.jsoup.nodes.n
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public h k() {
        return (h) super.k();
    }

    public final void H(String str) {
        h().r(j, str);
    }

    public final h I() {
        int size = this.f.size();
        for (int i2 = 0; i2 < size; i2++) {
            n nVar = this.f.get(i2);
            if (nVar instanceof h) {
                return (h) nVar;
            }
        }
        return null;
    }

    @Override // java.lang.Iterable
    public final void forEach(Consumer<? super h> consumer) {
        StreamSupport.stream(Spliterators.spliteratorUnknownSize(new o(this, h.class), 273), false).forEach(consumer);
    }

    @Override // org.jsoup.nodes.n
    public final b h() {
        b bVar = this.g;
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b();
        this.g = bVar2;
        return bVar2;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x001c A[RETURN] */
    @Override // org.jsoup.nodes.n
    public final String i() {
        String strI;
        while (this != null) {
            b bVar = this.g;
            if (bVar != null) {
                String str = j;
                if (bVar.j(str)) {
                    strI = this.g.i(str);
                    if (strI != null) {
                        return strI;
                    }
                    return "";
                }
            }
            this = this.b;
        }
        strI = null;
        if (strI != null) {
            return strI;
        }
        return "";
    }

    @Override // java.lang.Iterable
    public final Iterator<h> iterator() {
        return new o(this, h.class);
    }

    @Override // org.jsoup.nodes.n
    public final int j() {
        return this.f.size();
    }

    @Override // org.jsoup.nodes.n
    public final n l(n nVar) {
        Map map;
        h hVar = (h) super.l(nVar);
        a aVar = new a(this.f.size());
        hVar.f = aVar;
        aVar.addAll(this.f);
        b bVar = this.g;
        if (bVar != null) {
            b bVarClone = bVar.clone();
            hVar.g = bVarClone;
            if (bVarClone.j("/jsoup.userdata")) {
                int iL = bVarClone.l("/jsoup.userdata");
                if (iL == -1) {
                    HashMap map2 = new HashMap();
                    bVarClone.b("/jsoup.userdata", map2);
                    map = map2;
                } else {
                    map = (Map) bVarClone.d[iL];
                }
                map.remove("jsoup.childEls");
            }
        }
        return hVar;
    }

    @Override // org.jsoup.nodes.n
    public final List<n> p() {
        a aVar = this.f;
        if (aVar != i) {
            return aVar;
        }
        a aVar2 = new a(4);
        this.f = aVar2;
        return aVar2;
    }

    @Override // org.jsoup.nodes.n
    public final boolean s() {
        return this.g != null;
    }

    @Override // org.jsoup.nodes.n
    public String v() {
        return this.e.c;
    }

    @Override // org.jsoup.nodes.n
    public final String w() {
        return this.e.d;
    }

    @Override // org.jsoup.nodes.n
    public final void y(nw6 nw6Var, f.a aVar) {
        f.a.EnumC0312a enumC0312a = aVar.g;
        f.a.EnumC0312a enumC0312a2 = f.a.EnumC0312a.xml;
        jj8 jj8Var = this.e;
        String strB = enumC0312a == enumC0312a2 ? org.jsoup.nodes.a.b(jj8Var.c, enumC0312a2) : jj8Var.c;
        nw6Var.a('<').b(strB);
        b bVar = this.g;
        if (bVar != null) {
            bVar.k(nw6Var, aVar);
        }
        if (!this.f.isEmpty()) {
            nw6Var.a('>');
            return;
        }
        boolean z = enumC0312a == enumC0312a2 || !jj8Var.b.equals("http://www.w3.org/1999/xhtml");
        if (z && (jj8Var.f(32) || ((1 & jj8Var.e) != 0 && (jj8Var.h() || jj8Var.i())))) {
            nw6Var.b(" />");
        } else if (z || !jj8Var.h()) {
            nw6Var.b("></").b(strB).a('>');
        } else {
            nw6Var.a('>');
        }
    }
}
