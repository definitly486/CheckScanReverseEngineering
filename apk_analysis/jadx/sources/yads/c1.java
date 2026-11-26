package yads;

import android.view.View;
import defpackage.r07;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class c1 extends defpackage.f02 {
    public View b;
    public r07 c;
    public Iterator d;
    public /* synthetic */ Object e;
    public final /* synthetic */ d1 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c1(d1 d1Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.f = d1Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a(null, null, this);
    }
}
