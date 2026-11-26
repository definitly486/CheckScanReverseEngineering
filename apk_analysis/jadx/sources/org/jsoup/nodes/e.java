package org.jsoup.nodes;

import defpackage.nw6;

/* JADX INFO: loaded from: classes5.dex */
public final class e extends m {
    @Override // org.jsoup.nodes.n
    /* JADX INFO: renamed from: clone */
    public final Object k() {
        return (e) super.k();
    }

    @Override // org.jsoup.nodes.n
    public final n k() {
        return (e) super.k();
    }

    @Override // org.jsoup.nodes.n
    public final String v() {
        return "#data";
    }

    @Override // org.jsoup.nodes.n
    public final void y(nw6 nw6Var, f.a aVar) {
        String strE = E();
        if (aVar.g != f.a.EnumC0312a.xml || strE.contains("<![CDATA[")) {
            nw6Var.b(strE);
            return;
        }
        h hVar = this.b;
        if (hVar != null && hVar.e.d.equals("script")) {
            nw6Var.b("//<![CDATA[\n").b(strE).b("\n//]]>");
            return;
        }
        h hVar2 = this.b;
        if (hVar2 == null || !hVar2.e.d.equals("style")) {
            nw6Var.b("<![CDATA[").b(strE).b("]]>");
        } else {
            nw6Var.b("/*<![CDATA[*/\n").b(strE).b("\n/*]]>*/");
        }
    }
}
