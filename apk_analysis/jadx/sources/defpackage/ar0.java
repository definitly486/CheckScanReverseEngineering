package defpackage;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public final class ar0 extends gh4 implements nl3<Integer, Object> {
    public final /* synthetic */ RecyclerView f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ar0(RecyclerView recyclerView) {
        super(1);
        this.f = recyclerView;
    }

    @Override // defpackage.nl3
    public final Object invoke(Integer num) {
        int iIntValue = num.intValue();
        RecyclerView.Adapter adapter = this.f.getAdapter();
        l58 l58Var = adapter instanceof l58 ? (l58) adapter : null;
        if (l58Var == null || l58Var.getCurrentList().isEmpty() || iIntValue < 0) {
            return null;
        }
        return l58Var.getItem(iIntValue % l58Var.getCurrentList().size());
    }
}
