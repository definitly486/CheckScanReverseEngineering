package defpackage;

import com.warefly.checkscan.presentation.cheques.view.sortDialogs.presenter.SumSortPresenter;
import com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.SumSortDialog;

/* JADX INFO: loaded from: classes5.dex */
public final class ed8 extends gh4 implements fm3<CharSequence, Integer, Integer, Integer, j59> {
    public final /* synthetic */ SumSortDialog f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ed8(SumSortDialog sumSortDialog) {
        super(4);
        this.f = sumSortDialog;
    }

    @Override // defpackage.fm3
    public final j59 invoke(CharSequence charSequence, Integer num, Integer num2, Integer num3) {
        CharSequence charSequence2 = charSequence;
        num.intValue();
        num2.intValue();
        num3.intValue();
        charSequence2.getClass();
        SumSortPresenter sumSortPresenter = this.f.presenter;
        if (sumSortPresenter != null) {
            sumSortPresenter.onDataSumStartChanged(String.valueOf(charSequence2));
            return j59.a;
        }
        aa4.j("presenter");
        throw null;
    }
}
