package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class gn0 extends gh4 implements nl3<List<? extends sx5>, j59> {
    public final /* synthetic */ bm0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gn0(bm0 bm0Var) {
        super(1);
        this.f = bm0Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(List<? extends sx5> list) {
        List<? extends sx5> list2 = list;
        hi0<x68<cs0>> hi0Var = this.f.m;
        list2.getClass();
        hi0Var.onNext(new x68.a(bm0.c(list2)));
        return j59.a;
    }
}
