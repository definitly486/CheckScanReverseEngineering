package defpackage;

import com.yalantis.ucrop.UCrop;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.tasks.repositories.TasksRepositoryImpl", f = "TasksRepositoryImpl.kt", l = {66, 67, UCrop.REQUEST_CROP}, m = "getPromocodeTaskDetails")
public final class op8 extends f02 {
    public bo8 l;
    public jq6 m;
    public /* synthetic */ Object n;
    public final /* synthetic */ tp8 o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public op8(tp8 tp8Var, f02 f02Var) {
        super(f02Var);
        this.o = tp8Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return this.o.i(0, this);
    }
}
