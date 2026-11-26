package org.jsoup.nodes;

import defpackage.ja8;
import defpackage.nw6;

/* JADX INFO: loaded from: classes5.dex */
public final class g extends m {
    public static final String f = "/".concat("doctypeInternalSubset");

    public final boolean G(String str) {
        return !ja8.e(c(str));
    }

    @Override // org.jsoup.nodes.n
    public final String v() {
        return "#doctype";
    }

    @Override // org.jsoup.nodes.n
    public final void y(nw6 nw6Var, f.a aVar) {
        if (aVar.g != f.a.EnumC0312a.html || G("publicId") || G("systemId")) {
            nw6Var.b("<!DOCTYPE");
        } else {
            nw6Var.b("<!doctype");
        }
        if (G("name")) {
            nw6Var.b(" ").b(c("name"));
        }
        if (G("pubSysKey")) {
            nw6Var.b(" ").b(c("pubSysKey"));
        }
        if (G("publicId")) {
            nw6Var.b(" \"").b(c("publicId")).a('\"');
        }
        if (G("systemId")) {
            nw6Var.b(" \"").b(c("systemId")).a('\"');
        }
        b bVarH = h();
        String str = f;
        if (bVarH.j(str)) {
            nw6Var.b(" [").b(c(str)).a(']');
        }
        nw6Var.a('>');
    }
}
