package defpackage;

import android.view.View;
import com.my.target.eg;
import com.my.target.p1;
import com.my.target.r0;
import com.my.target.wf;
import com.warefly.checkscan.presentation.cheques.view.sortDialogs.presenter.SumSortPresenter;
import com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.SumSortDialog;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bd8 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ bd8(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ze4<Object>[] ze4VarArr = SumSortDialog.f;
                SumSortPresenter sumSortPresenter = ((SumSortDialog) obj).presenter;
                if (sumSortPresenter != null) {
                    sumSortPresenter.onShow();
                    return;
                } else {
                    aa4.j("presenter");
                    throw null;
                }
            case 1:
                int i2 = eg.O;
                r0.a aVar = ((eg) obj).C;
                if (aVar != null) {
                    aVar.e();
                    return;
                }
                return;
            default:
                int i3 = p1.p;
                ((wf.b) obj).a(view, new gia());
                return;
        }
    }
}
