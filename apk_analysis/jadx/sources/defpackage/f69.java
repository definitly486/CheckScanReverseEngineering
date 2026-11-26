package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class f69 extends gh4 implements ll3<j59> {
    public final /* synthetic */ s59 f;
    public final /* synthetic */ s59.c.C0329c g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f69(s59 s59Var, s59.c.C0329c c0329c) {
        super(0);
        this.f = s59Var;
        this.g = c0329c;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        s59.c.C0329c c0329c = this.g;
        c0329c.h = false;
        s59 s59Var = this.f;
        if (s59Var.f == c0329c) {
            s68 s68Var = c0329c.f;
            if (s68Var != null) {
                s68Var.cancel(null);
            }
            s59Var.a.a();
            c0329c.e = av0.c(s59Var.e, null, null, new w59(null, c0329c, s59Var), 3);
        }
        return j59.a;
    }
}
