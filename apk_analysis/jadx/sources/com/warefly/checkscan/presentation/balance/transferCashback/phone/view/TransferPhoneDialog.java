package com.warefly.checkscan.presentation.balance.transferCashback.phone.view;

import android.content.Context;
import android.content.DialogInterface;
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
import com.bumptech.glide.a;
import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.CheckScanApplication;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import com.warefly.checkscan.databinding.DialogTransferCashbackBinding;
import com.warefly.checkscan.databinding.LayoutCouponPromocodesBinding;
import com.warefly.checkscan.presentation.balance.transferCashback.TransferSuccessDialog;
import com.warefly.checkscan.presentation.balance.transferCashback.coupons.view.TransferCouponDialog;
import com.warefly.checkscan.presentation.balance.transferCashback.phone.dialogs.TransferPhoneFailBottomSheet;
import com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhonePresenter;
import com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView;
import com.warefly.checkscan.presentation.balance.transferCashback.phone.view.TransferPhoneDialog;
import defpackage.aa4;
import defpackage.b36;
import defpackage.bs6;
import defpackage.c75;
import defpackage.cl4;
import defpackage.dm3;
import defpackage.fm3;
import defpackage.gh4;
import defpackage.gl4;
import defpackage.he7;
import defpackage.j59;
import defpackage.jg4;
import defpackage.jz7;
import defpackage.lb7;
import defpackage.le9;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n15;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.nm4;
import defpackage.nq5;
import defpackage.nz8;
import defpackage.og4;
import defpackage.p51;
import defpackage.pb2;
import defpackage.po4;
import defpackage.qs2;
import defpackage.ra8;
import defpackage.rj;
import defpackage.rz8;
import defpackage.s75;
import defpackage.sz8;
import defpackage.v05;
import defpackage.v75;
import defpackage.x07;
import defpackage.xz8;
import defpackage.y75;
import defpackage.yb8;
import defpackage.ze4;
import defpackage.zj9;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class TransferPhoneDialog extends FullScreenDialog<DialogTransferCashbackBinding> implements TransferPhoneView {
    public static final a f;
    public static final /* synthetic */ ze4<Object>[] g;
    public final cl4 c;
    public final gl4 d;
    public TransferPhoneFailBottomSheet e;
    public TransferPhonePresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            TransferPhoneDialog.this.dismiss();
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
            TransferPhoneDialog.this.f().onRetryLoadInfo();
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
            a aVar = TransferPhoneDialog.f;
            TransferPhoneDialog transferPhoneDialog = TransferPhoneDialog.this;
            TransferPhonePresenter transferPhonePresenterF = transferPhoneDialog.f();
            Editable text = transferPhoneDialog.e().etSum.getText();
            String string = text != null ? text.toString() : null;
            if (string == null) {
                string = "";
            }
            transferPhonePresenterF.onTransferClicked(string);
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
            TransferPhoneDialog.this.f().onTransferSumChanged(charSequence2.toString());
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<Bitmap, j59> {
        public final /* synthetic */ DialogTransferCashbackBinding f;
        public final /* synthetic */ TransferPhoneDialog g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(DialogTransferCashbackBinding dialogTransferCashbackBinding, TransferPhoneDialog transferPhoneDialog) {
            super(1);
            this.f = dialogTransferCashbackBinding;
            this.g = transferPhoneDialog;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            DialogTransferCashbackBinding dialogTransferCashbackBinding = this.f;
            int lineHeight = dialogTransferCashbackBinding.etPhone.getLineHeight();
            int height = (bitmap2.getHeight() * lineHeight) / bitmap2.getWidth();
            BitmapDrawable bitmapDrawable = new BitmapDrawable(this.g.getResources(), bitmap2);
            bitmapDrawable.setBounds(0, 0, lineHeight, height);
            dialogTransferCashbackBinding.etPhone.setCompoundDrawables(null, null, bitmapDrawable, null);
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
            TransferPhoneDialog.this.f().onTransferCoupon(zj9Var2.b());
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

    public static final class j implements ll3<v05> {
        public j() {
        }

        /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object, v05] */
        /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object, v05] */
        @Override // defpackage.ll3
        public final v05 invoke() {
            jg4 jg4Var = TransferPhoneDialog.this;
            return jg4Var instanceof og4 ? m2.c(v05.class, ((og4) jg4Var).getScope(), null, null) : jg4Var.b().c.d.e(x07.a(v05.class), null, null);
        }
    }

    static {
        bs6 bs6Var = new bs6(TransferPhoneDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
        f = new a();
    }

    public TransferPhoneDialog() {
        super(R.layout.dialog_transfer_cashback);
        this.c = nm4.a(po4.SYNCHRONIZED, new j());
        this.d = new gl4(DialogTransferCashbackBinding.class);
    }

    public final DialogTransferCashbackBinding e() {
        return (DialogTransferCashbackBinding) this.d.getValue(this, g[0]);
    }

    public final TransferPhonePresenter f() {
        TransferPhonePresenter transferPhonePresenter = this.presenter;
        if (transferPhonePresenter != null) {
            return transferPhonePresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public final void hideErrors() {
        e().tilSum.setError(null);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        DialogTransferCashbackBinding dialogTransferCashbackBindingE = e();
        dialogTransferCashbackBindingE.tvTitle.setText(getString(R.string.transfer_cashback_phone_title));
        dialogTransferCashbackBindingE.tvHintPhone.setText(getString(R.string.transfer_cashback_phone_hint));
        ImageView imageView = dialogTransferCashbackBindingE.btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
        ((v05) this.c.getValue()).a(dialogTransferCashbackBindingE.tvHintTransferPhone, getString(R.string.hint_only_phone_registration));
        f().onShown();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TransferPhonePresenter providePresenter() {
        boolean z = this instanceof og4;
        return new TransferPhonePresenter((nz8) (z ? m2.c(nz8.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(nz8.class), null, null)), (p51) (z ? m2.c(p51.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(p51.class), null, null)), (n15) (z ? m2.c(n15.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(n15.class), null, null)));
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public final void setTransferEnabled(boolean z) {
        e().btnTransfer.setEnabled(z);
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public final void showErrorInfoNotLoaded(boolean z, boolean z2) {
        DialogTransferCashbackBinding dialogTransferCashbackBindingE = e();
        LoadingButton loadingButton = dialogTransferCashbackBindingE.btnTransfer;
        if (z) {
            loadingButton.setText(loadingButton.getContext().getString(R.string.transfer_cashback_btn_retry));
            loadingButton.setOnClickListener(new lb7(new c()));
        } else {
            loadingButton.setText(loadingButton.getContext().getString(R.string.transfer_cashback_btn));
            loadingButton.setOnClickListener(new lb7(new d()));
        }
        loadingButton.setVisibility(0);
        if (z) {
            dialogTransferCashbackBindingE.tvDescription.setText(z2 ? getString(R.string.transfer_cashback_couldnt_load_info) : getString(R.string.transfer_cashback_couldnt_load_promo_code));
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public final void showInfo(sz8 sz8Var) {
        sz8Var.getClass();
        DialogTransferCashbackBinding dialogTransferCashbackBindingE = e();
        TextView textView = dialogTransferCashbackBindingE.tvDescription;
        textView.setVisibility(0);
        textView.setText(sz8Var.d);
        dialogTransferCashbackBindingE.tvRules.setText(sz8Var.g);
        TextInputEditText textInputEditText = dialogTransferCashbackBindingE.etSum;
        textInputEditText.setText(textInputEditText.getContext().getString(R.string.placeholder_transfer_sum, Float.valueOf(sz8Var.c / 100.0f)));
        le9.a(textInputEditText, new e());
        dialogTransferCashbackBindingE.etPhone.setText(sz8Var.e);
        final String str = sz8Var.f;
        if (str != null) {
            c75 c75Var = new c75(new v75() { // from class: oz8
                @Override // defpackage.v75
                public final void a(c75.a aVar) {
                    TransferPhoneDialog.a aVar2 = TransferPhoneDialog.f;
                    h37<Bitmap> h37VarN = a.e(this.b.e().etPhone).b().N(str);
                    h37VarN.K(new qz8(aVar), h37VarN);
                }
            });
            he7 he7Var = ne7.c;
            nq5.a(he7Var, "scheduler is null");
            yb8.j(new s75(new y75(c75Var, he7Var), rj.a()), null, new f(dialogTransferCashbackBindingE, this), 3);
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public final void showInvalidTransferSumError() {
        e().tilSum.setError(getString(R.string.error_invalid_transfer_sum));
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public final void showLoadingInfo(boolean z) {
        e().btnTransfer.setLoading(z);
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public final void showMinTransferSumNotReached(int i2) {
        e().tilSum.setError(getString(R.string.error_min_transfer_sum_not_reached, Integer.valueOf(i2 / 100), Integer.valueOf(i2 % 100)));
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public final void showPromocodes(List<zj9> list) {
        list.getClass();
        RecyclerView recyclerView = e().rvPromocodes;
        if (list.isEmpty()) {
            recyclerView.setVisibility(8);
            return;
        }
        recyclerView.setVisibility(0);
        recyclerView.setNestedScrollingEnabled(false);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(recyclerView.getContext());
        linearLayoutManager.setStackFromEnd(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setAdapter(new jz7(R.layout.layout_coupon_promocodes, list, new g(), h.f, i.f));
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public final void showTransferFailedBottomSheet(xz8.a aVar) {
        aVar.getClass();
        TransferPhoneFailBottomSheet transferPhoneFailBottomSheet = this.e;
        if (transferPhoneFailBottomSheet != null) {
            transferPhoneFailBottomSheet.dismiss();
        }
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        TransferPhoneFailBottomSheet transferPhoneFailBottomSheet2 = new TransferPhoneFailBottomSheet(contextRequireContext, aVar);
        transferPhoneFailBottomSheet2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: pz8
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                TransferPhoneDialog.a aVar2 = TransferPhoneDialog.f;
                this.b.dismiss();
            }
        });
        this.e = transferPhoneFailBottomSheet2;
        transferPhoneFailBottomSheet2.show();
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
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

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public final void showTransferMoneySuccess(String str) {
        String string;
        str.getClass();
        dismiss();
        Context context = getContext();
        if (context != null) {
            String string2 = getString(R.string.cheque_request_sum, str);
            string2.getClass();
            pb2 pb2Var = pb2.a;
            Date time = Calendar.getInstance().getTime();
            time.getClass();
            pb2Var.getClass();
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTime(time);
            calendar.getClass();
            if (pb2.d(calendar, calendar2)) {
                Context context2 = CheckScanApplication.c;
                string = CheckScanApplication.a.a().getString(R.string.today);
            } else {
                calendar.add(6, -1);
                if (pb2.d(calendar, calendar2)) {
                    Context context3 = CheckScanApplication.c;
                    string = CheckScanApplication.a.a().getString(R.string.yesterday);
                } else {
                    string = ((SimpleDateFormat) pb2.d.getValue()).format(time);
                }
            }
            Context context4 = CheckScanApplication.c;
            String string3 = CheckScanApplication.a.a().getString(R.string.wordy_date_format_with_time, string, ((SimpleDateFormat) pb2.b.getValue()).format(time));
            string3.getClass();
            new TransferSuccessDialog(context, string2, string3).show();
            getParentFragmentManager().setFragmentResult("TRANSFER_PHONE_DIALOG_REQUEST_KEY", BundleKt.bundleOf(new b36("TRANSFER_PHONE_DIALOG_REQUEST_KEY", rz8.INSTANCE)));
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public final void showTransferringMoney(boolean z) {
        e().btnTransfer.setLoading(z);
        setCancelable(!z);
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public final void showWrongTransferSum() {
        e().tilSum.setError(getString(R.string.error_max_transfer_sum_wrong));
    }

    @Override // com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView
    public final void startTransferToCoupon(int i2) {
        dismiss();
        Context context = getContext();
        if (context != null) {
            new TransferCouponDialog(context, "", 1, i2, "").show();
        }
    }
}
