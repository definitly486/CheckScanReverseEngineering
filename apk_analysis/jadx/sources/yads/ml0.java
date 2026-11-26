package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ml0 implements my3 {
    public final eq5 b;
    public final mq2 c;
    public gs d;
    public my3 e;
    public boolean f = true;
    public boolean g;

    public ml0(mq2 mq2Var, du5 du5Var) {
        this.c = mq2Var;
        this.b = new eq5(du5Var);
    }

    @Override // yads.my3
    public final long a() {
        if (this.f) {
            return this.b.a();
        }
        my3 my3Var = this.e;
        my3Var.getClass();
        return my3Var.a();
    }

    @Override // yads.my3
    public final dw4 getPlaybackParameters() {
        my3 my3Var = this.e;
        return my3Var != null ? my3Var.getPlaybackParameters() : this.b.f;
    }

    @Override // yads.my3
    public final void a(dw4 dw4Var) {
        my3 my3Var = this.e;
        if (my3Var != null) {
            my3Var.a(dw4Var);
            dw4Var = this.e.getPlaybackParameters();
        }
        this.b.a(dw4Var);
    }
}
