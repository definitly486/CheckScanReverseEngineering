package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class qi0 extends defpackage.f02 {
    public /* synthetic */ Object b;
    public final /* synthetic */ ri0 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qi0(ri0 ri0Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.c = ri0Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.a((View) null, (pi0) null, this);
    }
}
