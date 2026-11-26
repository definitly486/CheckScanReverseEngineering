package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class t94 implements Runnable {
    public final /* synthetic */ h88 b;
    public final /* synthetic */ p94 c;

    public t94(p94 p94Var, h88 h88Var) {
        this.c = p94Var;
        this.b = h88Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cx1 cx1Var = this.c.y.a;
        cx1 cx1Var2 = cx1.SHUTDOWN;
        if (cx1Var == cx1Var2) {
            return;
        }
        p94 p94Var = this.c;
        p94Var.z = this.b;
        p94.c cVar = p94Var.x;
        p94 p94Var2 = this.c;
        p94.c cVar2 = p94Var2.w;
        p94Var2.x = null;
        p94 p94Var3 = this.c;
        p94Var3.w = null;
        p94Var3.f(cx1Var2);
        this.c.n.b();
        if (this.c.u.isEmpty()) {
            p94 p94Var4 = this.c;
            p94Var4.m.execute(new u94(p94Var4));
        }
        p94 p94Var5 = this.c;
        p94Var5.m.d();
        ch8.c cVar3 = p94Var5.r;
        if (cVar3 != null) {
            cVar3.a();
            p94Var5.r = null;
            p94Var5.p = null;
        }
        ch8.c cVar4 = this.c.s;
        if (cVar4 != null) {
            cVar4.a();
            this.c.t.e(this.b);
            p94 p94Var6 = this.c;
            p94Var6.s = null;
            p94Var6.t = null;
        }
        if (cVar != null) {
            cVar.e(this.b);
        }
        if (cVar2 != null) {
            cVar2.e(this.b);
        }
    }
}
