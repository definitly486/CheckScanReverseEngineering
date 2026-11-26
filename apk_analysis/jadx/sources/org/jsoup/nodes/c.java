package org.jsoup.nodes;

import defpackage.nw6;

/* JADX INFO: loaded from: classes5.dex */
public final class c extends r {
    @Override // org.jsoup.nodes.r
    /* JADX INFO: renamed from: G */
    public final r k() {
        return (c) super.k();
    }

    @Override // org.jsoup.nodes.r, org.jsoup.nodes.n
    /* JADX INFO: renamed from: clone */
    public final Object k() {
        return (c) super.k();
    }

    @Override // org.jsoup.nodes.r, org.jsoup.nodes.n
    public final n k() {
        return (c) super.k();
    }

    @Override // org.jsoup.nodes.r, org.jsoup.nodes.n
    public final String v() {
        return "#cdata";
    }

    @Override // org.jsoup.nodes.r, org.jsoup.nodes.n
    public final void y(nw6 nw6Var, f.a aVar) {
        nw6Var.b("<![CDATA[").b(E()).b("]]>");
    }
}
