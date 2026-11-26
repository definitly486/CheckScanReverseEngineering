package com.warefly.checkscan.presentation.balance.transferCashback.card.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.os.BundleKt;
import androidx.core.text.HtmlCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import com.warefly.checkscan.databinding.DialogTransferCashbackBinding;
import com.warefly.checkscan.databinding.LayoutCouponPromocodesBinding;
import com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardPresenter;
import com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView;
import com.warefly.checkscan.presentation.balance.transferCashback.coupons.view.TransferCouponDialog;
import defpackage.aa4;
import defpackage.az8;
import defpackage.b36;
import defpackage.bs6;
import defpackage.c75;
import defpackage.dm3;
import defpackage.fm3;
import defpackage.gh4;
import defpackage.gl4;
import defpackage.he7;
import defpackage.j59;
import defpackage.jz7;
import defpackage.lb7;
import defpackage.le9;
import defpackage.m2;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.nq5;
import defpackage.nx6;
import defpackage.nz8;
import defpackage.og4;
import defpackage.p51;
import defpackage.qs2;
import defpackage.ra8;
import defpackage.rj;
import defpackage.s75;
import defpackage.x07;
import defpackage.y75;
import defpackage.yb8;
import defpackage.ze4;
import defpackage.zj9;
import defpackage.zy8;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class TransferCardDialog extends FullScreenDialog<DialogTransferCashbackBinding> implements TransferCardView {
    public static final a d;
    public static final /* synthetic */ ze4<Object>[] e;
    public final gl4 c;
    public TransferCardPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            TransferCardDialog.this.dismiss();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            TransferCardDialog.this.f().onRetryLoadInfo();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ TransferCardDialog f;
        public final /* synthetic */ DialogTransferCashbackBinding g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(DialogTransferCashbackBinding dialogTransferCashbackBinding, TransferCardDialog transferCardDialog) {
            super(1);
            this.f = transferCardDialog;
            this.g = dialogTransferCashbackBinding;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            String string;
            view.getClass();
            TransferCardPresenter transferCardPresenterF = this.f.f();
            Editable text = this.g.etSum.getText();
            if (text == null || (string = text.toString()) == null) {
                string = "";
            }
            transferCardPresenterF.onTransferClicked(string);
            return j59.a;
        }
    }

    public static final class e extends gh4 implements fm3<CharSequence, Integer, Integer, Integer, j59> {
        public e() {
            super(4);
        }

        @Override // defpackage.fm3
        public final j59 invoke(CharSequence charSequence, Integer num, Integer num2, Integer num3) {
            CharSequence charSequence2 = charSequence;
            num.intValue();
            num2.intValue();
            num3.intValue();
            charSequence2.getClass();
            TransferCardDialog.this.f().onTransferSumChanged(charSequence2.toString());
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<Bitmap, j59> {
        public final /* synthetic */ DialogTransferCashbackBinding f;
        public final /* synthetic */ TransferCardDialog g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(DialogTransferCashbackBinding dialogTransferCashbackBinding, TransferCardDialog transferCardDialog) {
            super(1);
            this.f = dialogTransferCashbackBinding;
            this.g = transferCardDialog;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            DialogTransferCashbackBinding dialogTransferCashbackBinding = this.f;
            int lineHeight = dialogTransferCashbackBinding.etTransferDestination.getLineHeight();
            int height = (bitmap2.getHeight() * lineHeight) / bitmap2.getWidth();
            BitmapDrawable bitmapDrawable = new BitmapDrawable(this.g.getResources(), bitmap2);
            bitmapDrawable.setBounds(0, 0, lineHeight, height);
            dialogTransferCashbackBinding.etTransferDestination.setCompoundDrawables(null, null, bitmapDrawable, null);
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<zj9, j59> {
        public g() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(zj9 zj9Var) {
            zj9 zj9Var2 = zj9Var;
            zj9Var2.getClass();
            TransferCardDialog.this.f().onTransferCoupon(zj9Var2.b());
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<View, LayoutCouponPromocodesBinding> {
        public static final h f = new h(1);

        @Override // defpackage.nl3
        public final LayoutCouponPromocodesBinding invoke(View view) {
            View view2 = view;
            view2.getClass();
            return LayoutCouponPromocodesBinding.bind(view2);
        }
    }

    public static final class i extends gh4 implements dm3<LayoutCouponPromocodesBinding, zj9, Integer, j59> {
        public static final i f = new i(3);

        @Override // defpackage.dm3
        public final j59 invoke(LayoutCouponPromocodesBinding layoutCouponPromocodesBinding, zj9 zj9Var, Integer num) {
            LayoutCouponPromocodesBinding layoutCouponPromocodesBinding2 = layoutCouponPromocodesBinding;
            zj9 zj9Var2 = zj9Var;
            num.intValue();
            layoutCouponPromocodesBinding2.getClass();
            zj9Var2.getClass();
            String strY = ra8.y(ra8.A(zj9Var2.c(), "**", "<b>"), "**", "</b>");
            com.bumptech.glide.a.e(layoutCouponPromocodesBinding2.ivIcWithdrawMetro).h(zj9Var2.a()).P(qs2.h()).L(layoutCouponPromocodesBinding2.ivIcWithdrawMetro);
            layoutCouponPromocodesBinding2.tvWithdrawShop.setText(HtmlCompat.fromHtml(strY, 0));
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(TransferCardDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;", 0);
        x07.a.getClass();
        e = new ze4[]{bs6Var};
        d = new a();
    }

    public TransferCardDialog() {
        super(R.layout.dialog_transfer_cashback);
        this.c = new gl4(DialogTransferCashbackBinding.class);
    }

    public final DialogTransferCashbackBinding e() {
        return (DialogTransferCashbackBinding) this.c.getValue(this, e[0]);
    }

    public final TransferCardPresenter f() {
        TransferCardPresenter transferCardPresenter = this.presenter;
        if (transferCardPresenter != null) {
            return transferCardPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public final void hideErrors() {
        e().tilSum.setError(null);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        DialogTransferCashbackBinding dialogTransferCashbackBindingE = e();
        dialogTransferCashbackBindingE.tvTitle.setText(getString(R.string.new_balance_transfer_card_dialog_title));
        dialogTransferCashbackBindingE.tilTransferDestination.setHint(getString(R.string.new_balance_transfer_card_dialog_card_hint));
        ImageView imageView = dialogTransferCashbackBindingE.btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
        f().onShown();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TransferCardPresenter providePresenter() {
        Bundle arguments = getArguments();
        boolean z = this instanceof og4;
        return new TransferCardPresenter(arguments != null ? arguments.getLong("CARD_ID_KEY") : -1L, (nz8) (z ? m2.c(nz8.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(nz8.class), null, null)), (p51) (z ? m2.c(p51.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(p51.class), null, null)));
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public final void setTransferEnabled(boolean z) {
        e().btnTransfer.setEnabled(z);
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public final void showApproveTransferDialog(String str, String str2) {
        str.getClass();
        str2.getClass();
        getParentFragmentManager().setFragmentResult("TRANSFER_CARD_REQUEST_KEY", BundleKt.bundleOf(new b36("TRANSFER_CARD_REQUEST_KEY", new zy8(str, str2))));
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public final void showErrorInfoNotLoaded(boolean z) {
        DialogTransferCashbackBinding dialogTransferCashbackBindingE = e();
        LoadingButton loadingButton = e().btnTransfer;
        if (z) {
            loadingButton.setText(loadingButton.getContext().getString(R.string.transfer_cashback_btn_retry));
            loadingButton.setOnClickListener(new lb7(new c()));
        } else {
            loadingButton.setText(loadingButton.getContext().getString(R.string.transfer_cashback_btn));
            loadingButton.setOnClickListener(new lb7(new d(dialogTransferCashbackBindingE, this)));
        }
        loadingButton.setVisibility(0);
        if (z) {
            dialogTransferCashbackBindingE.tvDescription.setText(getString(R.string.transfer_cashback_couldnt_load_info));
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public final void showInfo(az8 az8Var) {
        az8Var.getClass();
        DialogTransferCashbackBinding dialogTransferCashbackBindingE = e();
        TextView textView = dialogTransferCashbackBindingE.tvDescription;
        textView.setVisibility(0);
        textView.setText(az8Var.d);
        dialogTransferCashbackBindingE.tvRules.setText(az8Var.g);
        TextInputEditText textInputEditText = dialogTransferCashbackBindingE.etSum;
        textInputEditText.setText(textInputEditText.getContext().getString(R.string.placeholder_transfer_sum, Float.valueOf(az8Var.c / 100.0f)));
        le9.a(textInputEditText, new e());
        dialogTransferCashbackBindingE.etTransferDestination.setText(az8Var.e);
        String str = az8Var.f;
        if (str != null) {
            c75 c75Var = new c75(new nx6(this, str));
            he7 he7Var = ne7.c;
            nq5.a(he7Var, "scheduler is null");
            yb8.j(new s75(new y75(c75Var, he7Var), rj.a()), null, new f(dialogTransferCashbackBindingE, this), 3);
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public final void showInvalidTransferSumError() {
        e().tilSum.setError(getString(R.string.error_invalid_transfer_sum));
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public final void showLoadingInfo(boolean z) {
        e().btnTransfer.setLoading(z);
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public final void showMaxTransferSumExceeded() {
        e().tilSum.setError(getString(R.string.error_max_transfer_sum_wrong));
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public final void showMinTransferSumNotReached(int i2) {
        e().tilSum.setError(getString(R.string.error_min_transfer_sum_not_reached, Integer.valueOf(i2 / 100), Integer.valueOf(i2 % 100)));
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public final void showPromocodes(List<zj9> list) {
        list.getClass();
        RecyclerView recyclerView = e().rvPromocodes;
        if (list.isEmpty()) {
            recyclerView.setVisibility(8);
            return;
        }
        recyclerView.setVisibility(0);
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(new jz7(R.layout.layout_coupon_promocodes, list, new g(), h.f, i.f));
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public final void showTransferMoneyError(String str) {
        j59 j59Var;
        if (str != null) {
            Toast.makeText(getContext(), str, 1).show();
            j59Var = j59.a;
        } else {
            j59Var = null;
        }
        if (j59Var == null) {
            Toast.makeText(getContext(), R.string.transfer_cashback_transfer_failed, 1).show();
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public final void showTransferringMoney(boolean z) {
        e().btnTransfer.setLoading(z);
        setCancelable(!z);
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView
    public final void startTransferToCoupon(int i2) {
        dismiss();
        if (getContext() != null) {
            Context contextRequireContext = requireContext();
            contextRequireContext.getClass();
            new TransferCouponDialog(contextRequireContext, "", 1, i2, "").show();
        }
    }
}
