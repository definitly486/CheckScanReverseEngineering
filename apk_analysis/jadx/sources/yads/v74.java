package yads;

import android.content.Context;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class v74 extends defpackage.f02 {
    public Context b;
    public nl3 c;
    public l24 d;
    public /* synthetic */ Object e;
    public final /* synthetic */ w74 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v74(w74 w74Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.f = w74Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return w74.a(this.f, null, null, this);
    }
}
