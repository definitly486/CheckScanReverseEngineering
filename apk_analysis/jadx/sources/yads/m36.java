package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class m36 implements n36 {
    public final Object a;
    public final /* synthetic */ nl3 b;

    public m36(nl3 nl3Var, Object obj) {
        this.b = nl3Var;
        this.a = obj;
    }

    @Override // yads.n36
    public final boolean a(Object obj) {
        return ((Boolean) this.b.invoke(obj)).booleanValue();
    }

    @Override // yads.n36
    public final Object a() {
        return this.a;
    }
}
