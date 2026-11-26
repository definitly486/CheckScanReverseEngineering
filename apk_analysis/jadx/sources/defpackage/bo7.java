package defpackage;

import com.warefly.checkscan.products.presentation.selections.view.SelectionsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class bo7 extends gh4 implements ll3<j59> {
    public final /* synthetic */ SelectionsFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bo7(SelectionsFragment selectionsFragment) {
        super(0);
        this.f = selectionsFragment;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        this.f.o().loadNextPage();
        return j59.a;
    }
}
