package com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentKt;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.DialogTwoButtons;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import com.warefly.checkscan.presentation.balance.main.dialogs.BalanceInfBottomSheet;
import com.warefly.checkscan.presentation.balance.transferCashback.card.view.TransferCardDialog;
import com.warefly.checkscan.presentation.balance.transferCashback.phone.view.TransferPhoneDialog;
import com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPDialog;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.dialogs.WithdrawalBankDialog;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.dialogs.WithdrawalCardsDialog;
import com.warefly.checkscan.presentation.tasks.dialogs.error.view.TaskErrorBottomSheet;
import com.warefly.checkscan.presentation.tasks.dialogs.success.view.TaskSuccessBottomSheet;
import defpackage.a40;
import defpackage.aa4;
import defpackage.b36;
import defpackage.bm3;
import defpackage.ec;
import defpackage.gh4;
import defpackage.gj9;
import defpackage.hn8;
import defpackage.i72;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.no8;
import defpackage.oz1;
import defpackage.wi9;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class WithdrawalFragment<T extends ViewBinding, P extends WithdrawalPresenter<? extends WithdrawalView>> extends BaseFragment<T> implements WithdrawalView {
    public LoadingDialog f;
    public WithdrawalCardsDialog g;
    public BalanceInfBottomSheet h;
    public WithdrawalBankDialog i;
    public TaskSuccessBottomSheet j;
    public TaskErrorBottomSheet k;
    public DialogTwoButtons l;

    public static final class a extends gh4 implements bm3<String, Bundle, j59> {
        public final /* synthetic */ WithdrawalFragment<T, P> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(WithdrawalFragment<T, P> withdrawalFragment) {
            super(2);
            this.f = withdrawalFragment;
        }

        @Override // defpackage.bm3
        public final j59 invoke(String str, Bundle bundle) {
            String str2 = str;
            Bundle bundle2 = bundle;
            str2.getClass();
            bundle2.getClass();
            WithdrawalFragment<T, P> withdrawalFragment = this.f;
            FragmentKt.clearFragmentResult(withdrawalFragment, str2);
            if (aa4.e(bundle2.getString("DIALOG_TAG"), withdrawalFragment.o())) {
                withdrawalFragment.n().handleFinalCardAlertResult(bundle2.getBoolean(str2));
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements ll3<j59> {
        public final /* synthetic */ WithdrawalFragment<T, P> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(WithdrawalFragment<T, P> withdrawalFragment) {
            super(0);
            this.f = withdrawalFragment;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            WithdrawalFragment<T, P> withdrawalFragment = this.f;
            BalanceInfBottomSheet balanceInfBottomSheet = withdrawalFragment.h;
            if (balanceInfBottomSheet != null) {
                balanceInfBottomSheet.dismiss();
            }
            withdrawalFragment.n().onAddEmailClicked();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements ll3<j59> {
        public final /* synthetic */ WithdrawalFragment<T, P> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(WithdrawalFragment<T, P> withdrawalFragment) {
            super(0);
            this.f = withdrawalFragment;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            BalanceInfBottomSheet balanceInfBottomSheet = this.f.h;
            if (balanceInfBottomSheet != null) {
                balanceInfBottomSheet.dismiss();
            }
            return j59.a;
        }
    }

    public void handleLoading(boolean z) {
        LoadingDialog loadingDialog = this.f;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        if (z) {
            LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
            m(loadingDialogB);
            this.f = loadingDialogB;
        }
    }

    public abstract P n();

    public abstract String o();

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        if (bundle != null) {
            Fragment fragmentFindFragmentByTag = getParentFragmentManager().findFragmentByTag("LoadingDialog");
            LoadingDialog loadingDialog = fragmentFindFragmentByTag instanceof LoadingDialog ? (LoadingDialog) fragmentFindFragmentByTag : null;
            if (loadingDialog != null) {
                loadingDialog.dismissAllowingStateLoss();
            }
        }
        FragmentKt.setFragmentResultListener(this, "DIALOG_TWO_BUTTONS_REQUEST_KEY", new a(this));
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public final void openCustomTab(String str) {
        str.getClass();
        WithdrawalCardsDialog withdrawalCardsDialog = this.g;
        if (withdrawalCardsDialog != null) {
            withdrawalCardsDialog.dismiss();
        }
        i72.b(getContext(), str);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, com.warefly.checkscan.core.ui.base.architecture.BaseView
    public final void openUrl(String str) {
        str.getClass();
        super.openUrl(str);
        WithdrawalCardsDialog withdrawalCardsDialog = this.g;
        if (withdrawalCardsDialog != null) {
            withdrawalCardsDialog.dismiss();
        }
    }

    public final void p(a40 a40Var, ll3<j59> ll3Var) {
        WithdrawalCardsDialog withdrawalCardsDialog = this.g;
        if (withdrawalCardsDialog != null) {
            withdrawalCardsDialog.dismiss();
        }
        BalanceInfBottomSheet balanceInfBottomSheet = this.h;
        if (balanceInfBottomSheet != null) {
            balanceInfBottomSheet.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            BalanceInfBottomSheet balanceInfBottomSheet2 = new BalanceInfBottomSheet(context, a40Var, ll3Var);
            balanceInfBottomSheet2.show();
            this.h = balanceInfBottomSheet2;
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public final void showAddEmailDialog() {
        String string = getString(R.string.withdrawal_add_email_title);
        string.getClass();
        String string2 = getString(R.string.withdrawal_add_email_description);
        string2.getClass();
        String string3 = getString(R.string.withdrawal_add_email_button);
        string3.getClass();
        p(new a40(string, string2, null, new a40.a(string3, null), null, Integer.valueOf(R.drawable.ic_warning_circle), 20), new b(this));
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public final void showAlertBeforeWithdrawAction(ec ecVar) {
        ecVar.getClass();
        DialogTwoButtons dialogTwoButtons = this.l;
        if (dialogTwoButtons != null) {
            dialogTwoButtons.dismiss();
        }
        DialogTwoButtons.a aVar = DialogTwoButtons.d;
        String str = ecVar.a;
        String str2 = ecVar.b;
        String str3 = ecVar.c;
        String str4 = ecVar.d;
        String strO = o();
        aVar.getClass();
        DialogTwoButtons dialogTwoButtonsA = DialogTwoButtons.a.a(str, str2, str3, str4, strO);
        this.l = dialogTwoButtonsA;
        l(dialogTwoButtonsA);
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public final void showBankPageDialog(String str) {
        str.getClass();
        WithdrawalBankDialog withdrawalBankDialog = this.i;
        if (withdrawalBankDialog != null) {
            withdrawalBankDialog.dismiss();
        }
        WithdrawalBankDialog.f.getClass();
        WithdrawalBankDialog withdrawalBankDialog2 = new WithdrawalBankDialog();
        withdrawalBankDialog2.setArguments(BundleKt.bundleOf(new b36("WithdrawalBankDialog_URL_KEY", str)));
        m(withdrawalBankDialog2);
        this.i = withdrawalBankDialog2;
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public final void showInfoDialog(a40 a40Var) {
        a40Var.getClass();
        p(a40Var, new c(this));
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public final void showSomethingWrong() {
        WithdrawalCardsDialog withdrawalCardsDialog = this.g;
        if (withdrawalCardsDialog != null) {
            withdrawalCardsDialog.dismiss();
        }
        View view = getView();
        if (view != null) {
            String string = getString(R.string.some_error);
            string.getClass();
            oz1.h(view, string);
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public final void showTaskError(hn8 hn8Var) {
        hn8Var.getClass();
        Context context = getContext();
        if (context != null) {
            TaskErrorBottomSheet taskErrorBottomSheet = this.k;
            if (taskErrorBottomSheet != null) {
                taskErrorBottomSheet.dismiss();
            }
            TaskErrorBottomSheet taskErrorBottomSheet2 = new TaskErrorBottomSheet(context, hn8Var);
            this.k = taskErrorBottomSheet2;
            taskErrorBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public final void showTaskSuccess(int i, no8 no8Var) {
        no8Var.getClass();
        Context context = getContext();
        if (context != null) {
            TaskSuccessBottomSheet taskSuccessBottomSheet = this.j;
            if (taskSuccessBottomSheet != null) {
                taskSuccessBottomSheet.dismiss();
            }
            TaskSuccessBottomSheet taskSuccessBottomSheet2 = new TaskSuccessBottomSheet(context, i, no8Var);
            this.j = taskSuccessBottomSheet2;
            taskSuccessBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public final void showWithdrawalCards(List<gj9> list, nl3<? super wi9, j59> nl3Var) {
        list.getClass();
        nl3Var.getClass();
        WithdrawalCardsDialog withdrawalCardsDialog = this.g;
        if (withdrawalCardsDialog != null) {
            withdrawalCardsDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            WithdrawalCardsDialog withdrawalCardsDialog2 = new WithdrawalCardsDialog(context, list, nl3Var);
            withdrawalCardsDialog2.show();
            this.g = withdrawalCardsDialog2;
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public final void startTransferSBP(String str) {
        str.getClass();
        TransferSBPDialog.g.getClass();
        TransferSBPDialog transferSBPDialog = new TransferSBPDialog();
        transferSBPDialog.setArguments(BundleKt.bundleOf(new b36("TITLE_KEY", str)));
        m(transferSBPDialog);
    }

    public void startTransferToBankCard(long j) {
        TransferCardDialog.d.getClass();
        TransferCardDialog transferCardDialog = new TransferCardDialog();
        transferCardDialog.setArguments(BundleKt.bundleOf(new b36("CARD_ID_KEY", Long.valueOf(j))));
        m(transferCardDialog);
    }

    public void startTransferToPhone() {
        TransferPhoneDialog.f.getClass();
        TransferPhoneDialog transferPhoneDialog = new TransferPhoneDialog();
        transferPhoneDialog.setArguments(BundleKt.bundleOf(new b36("IS_UPRID_DISABLE", Boolean.FALSE)));
        m(transferPhoneDialog);
    }
}
