package org.jsoup.nodes;

import defpackage.yb9;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class m extends n {
    public Object e;

    public m(String str) {
        yb9.e(str);
        this.e = str;
    }

    @Override // org.jsoup.nodes.n
    public final h A() {
        return this.b;
    }

    public final String E() {
        return c(v());
    }

    public final void F() {
        Object obj = this.e;
        if (obj instanceof b) {
            return;
        }
        b bVar = new b();
        this.e = bVar;
        bVar.r(v(), (String) obj);
    }

    @Override // org.jsoup.nodes.n
    public final String b(String str) {
        F();
        return super.b(str);
    }

    @Override // org.jsoup.nodes.n
    public final String c(String str) {
        if (this.e instanceof b) {
            return super.c(str);
        }
        return v().equals(str) ? (String) this.e : "";
    }

    @Override // org.jsoup.nodes.n
    public final b h() {
        F();
        return (b) this.e;
    }

    @Override // org.jsoup.nodes.n
    public final String i() {
        h hVar = this.b;
        return hVar != null ? hVar.i() : "";
    }

    @Override // org.jsoup.nodes.n
    public final int j() {
        return 0;
    }

    @Override // org.jsoup.nodes.n
    public final n l(n nVar) {
        m mVar = (m) super.l(nVar);
        Object obj = this.e;
        if (obj instanceof b) {
            mVar.e = ((b) obj).clone();
        }
        return mVar;
    }

    @Override // org.jsoup.nodes.n
    public final List<n> p() {
        return n.d;
    }

    @Override // org.jsoup.nodes.n
    public final boolean s() {
        return this.e instanceof b;
    }

    public m() {
        this.e = "";
    }
}
