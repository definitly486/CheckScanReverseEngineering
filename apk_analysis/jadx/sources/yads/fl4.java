package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class fl4 extends defpackage.f02 {
    public boolean b;
    public Object c;
    public jd0 d;
    public /* synthetic */ Object e;
    public final /* synthetic */ il4 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fl4(il4 il4Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.f = il4Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a(false, (Context) null, (ee4) null, (jd0) null, (defpackage.f02) this);
    }
}
