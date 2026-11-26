package defpackage;

import com.warefly.checkscan.presentation.tasks.main.view.TasksFragment;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.presentation.tasks.ads.AdLoaderManager", f = "AdLoaderManager.kt", l = {23}, m = "loadAd")
public final class y7 extends f02 {
    public TasksFragment.j.b l;
    public TasksFragment.j.c m;
    public TasksFragment.j.g n;
    public /* synthetic */ Object o;
    public final /* synthetic */ a8 p;
    public int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y7(a8 a8Var, f02 f02Var) {
        super(f02Var);
        this.p = a8Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.o = obj;
        this.q |= Integer.MIN_VALUE;
        return this.p.a(null, null, null, null, null, null, null, null, null, this);
    }
}
