package defpackage;

import android.content.Intent;
import android.view.View;
import com.warefly.checkscan.R;
import com.warefly.checkscan.auth.presentation.addEmail.presenter.AddEmailPresenter;
import com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailFragment;
import com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewFragment;
import com.warefly.checkscan.presentation.chequePage.share.cheque.view.ShareChequeDialog;
import com.warefly.checkscan.support.presentation.form.view.SupportFormFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class v8 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ v8(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                AddEmailPresenter addEmailPresenter = ((AddEmailFragment) obj2).presenter;
                if (addEmailPresenter != null) {
                    addEmailPresenter.onBackClicked();
                    return j59.a;
                }
                aa4.j("presenter");
                throw null;
            case 1:
                ((BonusesMainNewFragment) obj2).o().onSpecialShown(((Number) obj).intValue());
                return j59.a;
            case 2:
                ShareChequeDialog shareChequeDialog = (ShareChequeDialog) obj2;
                shareChequeDialog.getContext().startActivity(Intent.createChooser((Intent) obj, shareChequeDialog.getContext().getString(R.string.share_title)));
                shareChequeDialog.dismiss();
                return j59.a;
            default:
                ((View) obj).getClass();
                ((SupportFormFragment) obj2).o().onConfirmClicked();
                return j59.a;
        }
    }
}
