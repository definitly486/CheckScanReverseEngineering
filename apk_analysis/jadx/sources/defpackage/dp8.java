package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.tasks.repositories.TasksRepositoryImpl", f = "TasksRepositoryImpl.kt", l = {116}, m = "claimRewardedMultiTaskSubTask")
public final class dp8 extends f02 {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ tp8 n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dp8(tp8 tp8Var, f02 f02Var) {
        super(f02Var);
        this.n = tp8Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.o(0, 0, this);
    }
}
