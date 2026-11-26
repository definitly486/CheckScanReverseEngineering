package yads;

import defpackage.k57;

/* JADX INFO: loaded from: classes6.dex */
public final class ug extends defpackage.f02 {
    public /* synthetic */ Object b;
    public final /* synthetic */ vg c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ug(vg vgVar, defpackage.f02 f02Var) {
        super(f02Var);
        this.c = vgVar;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.c.b(this);
        return objB == defpackage.a32.COROUTINE_SUSPENDED ? objB : new k57(objB);
    }
}
