package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class z3 extends defpackage.f02 {
    public View b;
    public ot3 c;
    public nk4 d;
    public ji4 e;
    public /* synthetic */ Object f;
    public final /* synthetic */ a4 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z3(a4 a4Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.g = a4Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.a(null, null, null, null, null, this);
    }
}
