package defpackage;

import defpackage.ag6;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class cg6<Element, Array, Builder extends ag6<Array>> extends fn1<Element, Array, Builder> {
    public final bg6 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cg6(df4<Element> df4Var) {
        super(df4Var);
        df4Var.getClass();
        this.b = new bg6(df4Var.getDescriptor());
    }

    @Override // defpackage.w
    public final Object a() {
        return i(l());
    }

    @Override // defpackage.w
    public final int b(Object obj) {
        ag6 ag6Var = (ag6) obj;
        ag6Var.getClass();
        return ag6Var.d();
    }

    @Override // defpackage.w
    public final void c(int i, Object obj) {
        ag6 ag6Var = (ag6) obj;
        ag6Var.getClass();
        ag6Var.b(i);
    }

    @Override // defpackage.w
    public final Iterator<Element> d(Array array) {
        throw new IllegalStateException("This method lead to boxing and must not be used, use writeContents instead");
    }

    @Override // defpackage.w, defpackage.xl2
    public final Array deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return (Array) f(ud2Var);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return this.b;
    }

    @Override // defpackage.w
    public final Object j(Object obj) {
        ag6 ag6Var = (ag6) obj;
        ag6Var.getClass();
        return ag6Var.a();
    }

    @Override // defpackage.fn1
    public final void k(int i, Object obj, Object obj2) {
        ((ag6) obj).getClass();
        throw new IllegalStateException("This method lead to boxing and must not be used, use Builder.append instead");
    }

    public abstract Array l();

    public abstract void m(gu1 gu1Var, Array array, int i);

    @Override // defpackage.fn1, defpackage.xp7
    public final void serialize(ux2 ux2Var, Array array) {
        int iE = e(array);
        bg6 bg6Var = this.b;
        gu1 gu1VarBeginCollection = ux2Var.beginCollection(bg6Var, iE);
        m(gu1VarBeginCollection, array, iE);
        gu1VarBeginCollection.endStructure(bg6Var);
    }
}
