package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class en0 extends gh4 implements nl3<List<? extends er6>, j59> {
    public final /* synthetic */ bm0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public en0(bm0 bm0Var) {
        super(1);
        this.f = bm0Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(List<? extends er6> list) {
        List<? extends er6> list2 = list;
        hi0<x68<er6>> hi0Var = this.f.n;
        list2.getClass();
        hi0Var.onNext(new x68.a(list2));
        return j59.a;
    }
}
