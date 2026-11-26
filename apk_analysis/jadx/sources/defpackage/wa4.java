package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class wa4 extends y19 {
    public final /* synthetic */ lm3 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wa4(Iterator it, lm3 lm3Var) {
        super(it, 0);
        this.d = lm3Var;
    }

    @Override // defpackage.y19
    public final Object a(Object obj) {
        return this.d.apply(obj);
    }
}
