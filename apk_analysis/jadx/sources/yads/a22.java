package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class a22 implements i36 {
    public final /* synthetic */ s22 a;
    public final /* synthetic */ d22 b;
    public final /* synthetic */ tt c;

    public a22(s22 s22Var, d22 d22Var, tt ttVar) {
        this.a = s22Var;
        this.b = d22Var;
        this.c = ttVar;
    }

    @Override // yads.i36
    public final void a(Object obj) {
        Long l = (Long) obj;
        this.a.setThumbSecondaryValue(l != null ? Float.valueOf(l.longValue()) : null, false);
    }

    @Override // yads.i36
    public final void a(nl3 nl3Var) {
        s22 s22Var = this.a;
        s22Var.b.a(new z12(this.b, this.c, s22Var, nl3Var));
    }
}
