package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.tasks.repositories.TasksRepositoryImpl", f = "TasksRepositoryImpl.kt", l = {102}, m = "claimDailyTaskReward")
public final class cp8 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ tp8 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cp8(tp8 tp8Var, f02 f02Var) {
        super(f02Var);
        this.m = tp8Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.c(0, this);
    }
}
