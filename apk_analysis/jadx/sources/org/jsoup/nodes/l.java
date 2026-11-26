package org.jsoup.nodes;

import defpackage.dw2;
import defpackage.ja8;
import defpackage.jj8;
import defpackage.ov6;
import defpackage.xs7;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class l extends h {
    public final dw2 k;

    static {
        String[] strArr = ja8.a;
        ov6.Q(ja8.i(", ", Arrays.asList(xs7.a)));
    }

    public l(jj8 jj8Var, b bVar) {
        super(jj8Var, null, bVar);
        this.k = new dw2();
    }

    @Override // org.jsoup.nodes.n
    public final void C(n nVar) {
        super.C(nVar);
        this.k.remove(nVar);
    }

    @Override // org.jsoup.nodes.h
    /* JADX INFO: renamed from: G */
    public final h k() {
        return (l) super.k();
    }

    @Override // org.jsoup.nodes.h, org.jsoup.nodes.n
    /* JADX INFO: renamed from: clone */
    public final Object k() {
        return (l) super.k();
    }

    @Override // org.jsoup.nodes.h, org.jsoup.nodes.n
    public final n k() {
        return (l) super.k();
    }
}
