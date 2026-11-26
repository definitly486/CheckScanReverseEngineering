package yads;

import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class nc3 extends defpackage.f02 {
    public sc3 b;
    public /* synthetic */ Object c;
    public final /* synthetic */ sc3 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nc3(sc3 sc3Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.d = sc3Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a((Set) null, this);
    }
}
