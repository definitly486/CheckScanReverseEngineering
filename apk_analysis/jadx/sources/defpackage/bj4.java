package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class bj4 extends gh4 implements nl3<List<? extends wk4>, aj4.a> {
    public final /* synthetic */ boolean f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bj4(boolean z) {
        super(1);
        this.f = z;
    }

    @Override // defpackage.nl3
    public final aj4.a invoke(List<? extends wk4> list) {
        List<? extends wk4> list2 = list;
        list2.getClass();
        return new aj4.a(list2, !this.f);
    }
}
