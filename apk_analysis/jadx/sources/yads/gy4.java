package yads;

import android.content.Context;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class gy4 extends defpackage.f02 {
    public Context b;
    public Iterator c;
    public by4 d;
    public /* synthetic */ Object e;
    public final /* synthetic */ hy4 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gy4(hy4 hy4Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.f = hy4Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((Context) null, (List) null, this);
    }
}
