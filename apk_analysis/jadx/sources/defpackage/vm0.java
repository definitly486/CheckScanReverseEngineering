package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class vm0 extends gh4 implements nl3<List<? extends hc0.b>, j59> {
    public final /* synthetic */ bm0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vm0(bm0 bm0Var) {
        super(1);
        this.f = bm0Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(List<? extends hc0.b> list) {
        List<? extends hc0.b> list2 = list;
        hi0<x68<hc0.b>> hi0Var = this.f.l;
        list2.getClass();
        hi0Var.onNext(new x68.a(list2));
        return j59.a;
    }
}
