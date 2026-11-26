package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class n59 implements df4<j59> {
    public static final n59 b = new n59();
    public final /* synthetic */ rq5<j59> a = new rq5<>("kotlin.Unit", j59.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        this.a.deserialize(ud2Var);
        return j59.a;
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return this.a.getDescriptor();
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        j59 j59Var = (j59) obj;
        j59Var.getClass();
        this.a.serialize(ux2Var, j59Var);
    }
}
