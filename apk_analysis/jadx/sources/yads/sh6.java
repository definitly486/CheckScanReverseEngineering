package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class sh6 implements nb6 {
    public final vk4 a;
    public final qf6 b;

    public sh6(vk4 vk4Var, em4 em4Var) {
        qf6 qf6Var = new qf6(em4Var);
        this.a = vk4Var;
        this.b = qf6Var;
    }

    @Override // yads.nb6
    public final void a(long j, long j2) {
        boolean zA = this.b.a();
        vk4 vk4Var = this.a;
        if (zA) {
            if (vk4Var.a.c()) {
                return;
            }
            this.a.a.f();
        } else if (vk4Var.a.c()) {
            this.a.a.d();
        }
    }
}
