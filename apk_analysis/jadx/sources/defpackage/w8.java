package defpackage;

import android.content.Context;
import android.view.View;
import com.warefly.checkscan.auth.presentation.addEmail.presenter.AddEmailPresenter;
import com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailFragment;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.presentation.cheques.exportCheques.dialog.view.LightDatePickerDialog;
import com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportFragment;
import com.warefly.checkscan.presentation.createCard.view.CreateCardFragment;
import com.warefly.checkscan.support.presentation.form.view.SupportFormFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class w8 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ BaseFragment g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ w8(BaseFragment baseFragment, int i) {
        super(1);
        this.f = i;
        this.g = baseFragment;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        BaseFragment baseFragment = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                AddEmailPresenter addEmailPresenter = ((AddEmailFragment) baseFragment).presenter;
                if (addEmailPresenter != null) {
                    addEmailPresenter.onAddEmailClicked();
                    return j59.a;
                }
                aa4.j("presenter");
                throw null;
            case 1:
                ((View) obj).getClass();
                ChequesExportFragment chequesExportFragment = (ChequesExportFragment) baseFragment;
                ze4<Object>[] ze4VarArr = ChequesExportFragment.n;
                LightDatePickerDialog lightDatePickerDialog = chequesExportFragment.m;
                if (lightDatePickerDialog != null) {
                    lightDatePickerDialog.dismiss();
                }
                Context context = chequesExportFragment.getContext();
                if (context != null) {
                    LightDatePickerDialog lightDatePickerDialog2 = new LightDatePickerDialog(context, new rh1(chequesExportFragment));
                    chequesExportFragment.m = lightDatePickerDialog2;
                    lightDatePickerDialog2.show();
                }
                return j59.a;
            case 2:
                ((View) obj).getClass();
                ((CreateCardFragment) baseFragment).o().editNumberClick();
                return j59.a;
            default:
                ((View) obj).getClass();
                ((SupportFormFragment) baseFragment).o().loadForm();
                return j59.a;
        }
    }
}
