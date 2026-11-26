package defpackage;

import androidx.media3.extractor.ts.TsExtractor;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.tasks.repositories.TasksRepositoryImpl", f = "TasksRepositoryImpl.kt", l = {TsExtractor.TS_STREAM_TYPE_HDMV_DTS}, m = "activatePromocode")
public final class bp8 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ tp8 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bp8(tp8 tp8Var, f02 f02Var) {
        super(f02Var);
        this.m = tp8Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.q(0, this);
    }
}
