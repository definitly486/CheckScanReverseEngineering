package com.warefly.checkscan.presentation.balance.transferCashback.coupons.view;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogCouponsTemplateBinding;
import com.warefly.checkscan.databinding.LayoutCouponTransferBinding;
import com.warefly.checkscan.databinding.LayoutTransferCongratulationsBinding;
import com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponPresenter;
import com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponView;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.e09;
import defpackage.gh4;
import defpackage.gq6;
import defpackage.j59;
import defpackage.kd;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.p51;
import defpackage.qs2;
import defpackage.ud;
import defpackage.ud9;
import defpackage.vp3;
import defpackage.x07;
import defpackage.ze4;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class TransferCouponDialog extends BaseBottomSheetDialog<DialogCouponsTemplateBinding> implements TransferCouponView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final int d;
    public final int e;
    public final String f;
    public final String g;
    public final ud9 h;
    public String i;
    public String j;
    public TransferCouponPresenter presenter;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[e09.a.values().length];
            try {
                iArr[e09.a.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            TransferCouponDialog transferCouponDialog = TransferCouponDialog.this;
            String str = transferCouponDialog.f;
            if (str != null) {
                transferCouponDialog.j().onCopyPromoCode(str);
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ int g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int i) {
            super(1);
            this.g = i;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            TransferCouponDialog.this.j().onClickTransfer(this.g);
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            TransferCouponDialog.this.j().onRetryLoadInfo();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ gq6.a g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(gq6.a aVar) {
            super(1);
            this.g = aVar;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            View view2 = view;
            view2.getClass();
            gq6.a aVar = this.g;
            int iA = aVar.f().get(2).a();
            int iA2 = aVar.a();
            int iC = aVar.f().get(2).c();
            int iF = aVar.f().get(2).f();
            ze4<Object>[] ze4VarArr = TransferCouponDialog.k;
            TransferCouponDialog.this.k(view2, 3, iA, iA2, iC, iF);
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ gq6.a g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(gq6.a aVar) {
            super(1);
            this.g = aVar;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            View view2 = view;
            view2.getClass();
            gq6.a aVar = this.g;
            int iA = aVar.f().get(1).a();
            int iA2 = aVar.a();
            int iB = aVar.f().get(1).b();
            int iF = aVar.f().get(1).f();
            ze4<Object>[] ze4VarArr = TransferCouponDialog.k;
            TransferCouponDialog.this.k(view2, 2, iA, iA2, iB, iF);
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ gq6.a g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(gq6.a aVar) {
            super(1);
            this.g = aVar;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            View view2 = view;
            view2.getClass();
            gq6.a aVar = this.g;
            int iA = aVar.f().get(0).a();
            int iA2 = aVar.a();
            int iB = aVar.f().get(0).b();
            int iF = aVar.f().get(0).f();
            ze4<Object>[] ze4VarArr = TransferCouponDialog.k;
            TransferCouponDialog.this.k(view2, 1, iA, iA2, iB, iF);
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<View, j59> {
        public h() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            TransferCouponDialog transferCouponDialog = TransferCouponDialog.this;
            transferCouponDialog.j().onFLowToFullRules();
            transferCouponDialog.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(TransferCouponDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferCouponDialog(Context context, String str, int i, int i2, String str2) {
        super(context, R.style.BottomSheetDialogTheme);
        str2.getClass();
        this.d = i;
        this.e = i2;
        this.f = str;
        this.g = str2;
        this.h = new ud9(DialogCouponsTemplateBinding.class, this);
    }

    public static void f(View view) {
        view.setBackground(view.getContext().getDrawable(R.drawable.rounded_grey_btn_100dp));
        view.setEnabled(false);
    }

    public final void e(View view) {
        if (view.isEnabled()) {
            g(view);
        } else {
            f(view);
        }
    }

    public final void g(View view) {
        TextView textView = view instanceof TextView ? (TextView) view : null;
        view.setBackground(view.getContext().getDrawable(R.drawable.rounded_white_100dp));
        view.setEnabled(true);
        if (textView != null) {
            textView.setTextColor(ContextCompat.getColor(getContext(), R.color.darkCharcoal));
        }
    }

    public final void h(boolean z) {
        LayoutCouponTransferBinding layoutCouponTransferBinding = i().incldCouponTransferView;
        if (z) {
            TextView textView = layoutCouponTransferBinding.btnCouponOne;
            textView.getClass();
            g(textView);
            TextView textView2 = layoutCouponTransferBinding.btnCouponTwo;
            textView2.getClass();
            g(textView2);
            TextView textView3 = layoutCouponTransferBinding.btnCouponThree;
            textView3.getClass();
            g(textView3);
            return;
        }
        TextView textView4 = layoutCouponTransferBinding.btnCouponOne;
        textView4.getClass();
        f(textView4);
        TextView textView5 = layoutCouponTransferBinding.btnCouponTwo;
        textView5.getClass();
        f(textView5);
        TextView textView6 = layoutCouponTransferBinding.btnCouponThree;
        textView6.getClass();
        f(textView6);
    }

    public final DialogCouponsTemplateBinding i() {
        ze4<Object> ze4Var = k[0];
        ud9 ud9Var = this.h;
        ud9Var.getClass();
        ze4Var.getClass();
        return (DialogCouponsTemplateBinding) ud9Var.d;
    }

    public final TransferCouponPresenter j() {
        TransferCouponPresenter transferCouponPresenter = this.presenter;
        if (transferCouponPresenter != null) {
            return transferCouponPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    public final void k(View view, int i, int i2, int i3, int i4, int i5) {
        new kd.j0.b("Promocode", ud.c(i5, "SumTapped")).a();
        LayoutCouponTransferBinding layoutCouponTransferBinding = i().incldCouponTransferView;
        layoutCouponTransferBinding.tvPerAmount.setVisibility(0);
        String string = getContext().getString(R.string.new_balance_transfer_coupon, Float.valueOf((i3 > i4 ? i4 : i3) / 100.0f), Integer.valueOf(i5 / 100));
        string.getClass();
        layoutCouponTransferBinding.tvPerAmount.setText(vp3.d(23, string.length(), 0, string));
        view.setBackground(getContext().getDrawable(R.drawable.rounded_readily_blue_100dp));
        TextView textView = view instanceof TextView ? (TextView) view : null;
        if (textView != null) {
            textView.setTextColor(ContextCompat.getColor(getContext(), R.color.white));
        }
        LayoutCouponTransferBinding layoutCouponTransferBinding2 = i().incldCouponTransferView;
        if (i == 1) {
            TextView textView2 = layoutCouponTransferBinding2.btnCouponTwo;
            textView2.getClass();
            e(textView2);
            TextView textView3 = layoutCouponTransferBinding2.btnCouponThree;
            textView3.getClass();
            e(textView3);
        } else if (i == 2) {
            TextView textView4 = layoutCouponTransferBinding2.btnCouponOne;
            textView4.getClass();
            e(textView4);
            TextView textView5 = layoutCouponTransferBinding2.btnCouponThree;
            textView5.getClass();
            e(textView5);
        } else if (i == 3) {
            TextView textView6 = layoutCouponTransferBinding2.btnCouponOne;
            textView6.getClass();
            e(textView6);
            TextView textView7 = layoutCouponTransferBinding2.btnCouponTwo;
            textView7.getClass();
            e(textView7);
        }
        layoutCouponTransferBinding.btnSpendAmount.setVisibility(0);
        layoutCouponTransferBinding.btnSpendAmount.setText(getContext().getString(R.string.new_balance_transfer_coupon_get));
        LoadingButton loadingButton = layoutCouponTransferBinding.btnSpendAmount;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new c(i2)));
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        showDialog(this.f, this.g);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        if (attributes != null) {
            attributes.windowAnimations = R.style.FloatingDialogTheme;
        }
        j().onShown(this.e);
        TextView textView = i().incldTransferCongratulationView.btnCopyCode;
        textView.getClass();
        textView.setOnClickListener(new lb7(new b()));
    }

    public final TransferCouponPresenter providePresenter() {
        return new TransferCouponPresenter((p51) b().c.d.e(x07.a(p51.class), null, null));
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponView
    public final void showDialog(String str, String str2) {
        str2.getClass();
        DialogCouponsTemplateBinding dialogCouponsTemplateBindingI = i();
        if (this.d == 1) {
            dialogCouponsTemplateBindingI.incldCouponTransferView.getRoot().setVisibility(0);
            dialogCouponsTemplateBindingI.incldTransferCongratulationView.getRoot().setVisibility(8);
            dialogCouponsTemplateBindingI.incldTransferCongratulationView.getRoot().requestFocus();
            return;
        }
        dialogCouponsTemplateBindingI.incldCouponTransferView.getRoot().setVisibility(8);
        dialogCouponsTemplateBindingI.incldTransferCongratulationView.getRoot().setVisibility(0);
        dialogCouponsTemplateBindingI.incldTransferCongratulationView.tvCongratulation.setText(str2);
        if (str != null) {
            LayoutTransferCongratulationsBinding layoutTransferCongratulationsBinding = dialogCouponsTemplateBindingI.incldTransferCongratulationView;
            layoutTransferCongratulationsBinding.ivCongratulations.setVisibility(0);
            layoutTransferCongratulationsBinding.tvPromoCodeMetro.setVisibility(0);
            TextView textView = layoutTransferCongratulationsBinding.btnCopyCode;
            if (textView != null) {
                textView.setVisibility(0);
            }
            layoutTransferCongratulationsBinding.tvPromoCodeMetro.setText(str);
        }
        dialogCouponsTemplateBindingI.incldCouponTransferView.btnCouponOne.requestFocus();
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponView
    public final void showErrorInfoNotLoaded() {
        LoadingButton loadingButton = i().incldCouponTransferView.btnSpendAmount;
        loadingButton.setText(loadingButton.getContext().getString(R.string.transfer_cashback_btn_retry));
        loadingButton.setOnClickListener(new lb7(new d()));
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponView
    public final void showInfo(gq6.a aVar, String str) {
        aVar.getClass();
        str.getClass();
        LayoutCouponTransferBinding layoutCouponTransferBinding = i().incldCouponTransferView;
        this.i = str;
        this.j = aVar.d().a();
        com.bumptech.glide.a.e(layoutCouponTransferBinding.ivIcMetro).h(aVar.b()).P(qs2.h()).L(layoutCouponTransferBinding.ivIcMetro);
        layoutCouponTransferBinding.tvWithdrawCashback.setText(aVar.e());
        layoutCouponTransferBinding.tvYourBalance.setText(getContext().getString(R.string.new_balance_transfer_coupon_dialog_balance, Float.valueOf(aVar.a() / 100.0f)));
        if (aVar.a() >= aVar.f().get(2).c()) {
            h(true);
        } else {
            int iA = aVar.a();
            int iC = aVar.f().get(1).c();
            if (iA > aVar.f().get(1).b() || iC > iA) {
                int iC2 = aVar.f().get(0).c();
                if (iA > aVar.f().get(0).b() || iC2 > iA) {
                    h(false);
                } else {
                    LayoutCouponTransferBinding layoutCouponTransferBinding2 = i().incldCouponTransferView;
                    TextView textView = layoutCouponTransferBinding2.btnCouponOne;
                    textView.getClass();
                    g(textView);
                    TextView textView2 = layoutCouponTransferBinding2.btnCouponTwo;
                    textView2.getClass();
                    f(textView2);
                    TextView textView3 = layoutCouponTransferBinding2.btnCouponThree;
                    textView3.getClass();
                    f(textView3);
                }
            } else {
                LayoutCouponTransferBinding layoutCouponTransferBinding3 = i().incldCouponTransferView;
                TextView textView4 = layoutCouponTransferBinding3.btnCouponOne;
                textView4.getClass();
                g(textView4);
                TextView textView5 = layoutCouponTransferBinding3.btnCouponTwo;
                textView5.getClass();
                g(textView5);
                TextView textView6 = layoutCouponTransferBinding3.btnCouponThree;
                textView6.getClass();
                f(textView6);
            }
        }
        if (aVar.a() < aVar.f().get(0).c()) {
            String strC = aVar.c();
            LayoutCouponTransferBinding layoutCouponTransferBinding4 = i().incldCouponTransferView;
            layoutCouponTransferBinding4.tvPerAmount.setVisibility(0);
            layoutCouponTransferBinding4.tvPerAmount.setText(strC);
            layoutCouponTransferBinding4.btnCouponOne.setTextColor(ContextCompat.getColor(getContext(), R.color.greyUnableText));
            layoutCouponTransferBinding4.btnCouponTwo.setTextColor(ContextCompat.getColor(getContext(), R.color.greyUnableText));
            layoutCouponTransferBinding4.btnCouponThree.setTextColor(ContextCompat.getColor(getContext(), R.color.greyUnableText));
            layoutCouponTransferBinding4.btnSpendAmount.setVisibility(8);
        }
        layoutCouponTransferBinding.btnCouponOne.setText(aVar.f().get(0).e());
        layoutCouponTransferBinding.tvCouponOne.setText(aVar.f().get(0).d());
        layoutCouponTransferBinding.btnCouponTwo.setText(aVar.f().get(1).e());
        layoutCouponTransferBinding.tvCouponTwo.setText(aVar.f().get(1).d());
        layoutCouponTransferBinding.btnCouponThree.setText(aVar.f().get(2).e());
        layoutCouponTransferBinding.tvCouponThree.setText(aVar.f().get(2).d());
        TextView textView7 = layoutCouponTransferBinding.btnCouponThree;
        textView7.getClass();
        textView7.setOnClickListener(new lb7(new e(aVar)));
        TextView textView8 = layoutCouponTransferBinding.btnCouponTwo;
        textView8.getClass();
        textView8.setOnClickListener(new lb7(new f(aVar)));
        TextView textView9 = layoutCouponTransferBinding.btnCouponOne;
        textView9.getClass();
        textView9.setOnClickListener(new lb7(new g(aVar)));
        SpannableString spannableString = new SpannableString(aVar.d().b());
        spannableString.setSpan(new UnderlineSpan(), 0, aVar.d().b().length(), 0);
        layoutCouponTransferBinding.btnFullRules.setText(spannableString);
        TextView textView10 = layoutCouponTransferBinding.btnFullRules;
        textView10.getClass();
        textView10.setOnClickListener(new lb7(new h()));
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponView
    public final void showLoadingInfo(boolean z) {
        i().incldCouponTransferView.btnSpendAmount.setLoading(z);
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponView
    public final void showPopupCopied(String str) {
        str.getClass();
        Context context = getContext();
        Object systemService = context.getSystemService("clipboard");
        systemService.getClass();
        ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText(context.getString(R.string.coupon_code_label), str));
        dismiss();
        Context context2 = getContext();
        context2.getClass();
        new PromoCodeCopiedDialog(context2, this.i, this.j).show();
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponView
    public final void showTransferMoneySuccess(e09 e09Var) {
        String strA;
        e09Var.getClass();
        if (a.a[e09Var.c().ordinal()] == 1) {
            new kd.j0.a.b("Ok").a();
            strA = e09Var.a();
        } else {
            String strB = e09Var.b();
            strB.getClass();
            Map mapSingletonMap = Collections.singletonMap("Fail", strB);
            mapSingletonMap.getClass();
            new kd.j0.a.C0274a(mapSingletonMap).a();
            strA = null;
        }
        String str = strA;
        dismiss();
        Context context = getContext();
        context.getClass();
        new TransferCouponDialog(context, str, 2, this.e, e09Var.b()).show();
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponView
    public final void showTransferringMoney(boolean z) {
        i().incldCouponTransferView.btnSpendAmount.setLoading(z);
        setCancelable(!z);
    }
}
