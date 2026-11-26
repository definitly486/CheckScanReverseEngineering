package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class e64 extends defpackage.f02 {
    public Context b;
    public x54 c;
    public o24 d;
    public long e;
    public /* synthetic */ Object f;
    public final /* synthetic */ g64 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e64(g64 g64Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.g = g64Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.a(null, null, null, null, null, this);
    }
}
