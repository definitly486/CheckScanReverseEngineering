package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class fy4 extends defpackage.f02 {
    public by4 b;
    public uz c;
    public /* synthetic */ Object d;
    public final /* synthetic */ hy4 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fy4(hy4 hy4Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.e = hy4Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a((Context) null, (by4) null, this);
    }
}
