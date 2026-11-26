package yads;

import android.content.Context;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class nm4 extends defpackage.f02 {
    public Context b;
    public ee4 c;
    public Object d;
    public s5 e;
    public Iterator f;
    public /* synthetic */ Object g;
    public final /* synthetic */ om4 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nm4(om4 om4Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.h = om4Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return this.h.a(null, null, this);
    }
}
