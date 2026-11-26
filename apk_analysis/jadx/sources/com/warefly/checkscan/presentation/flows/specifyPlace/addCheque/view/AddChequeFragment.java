package com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentAddChequeBinding;
import com.warefly.checkscan.databinding.LayoutQrInfoBinding;
import com.warefly.checkscan.databinding.LayoutQrInfoInternetBinding;
import com.warefly.checkscan.databinding.RejectedReceiptLayoutBinding;
import com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.presenter.AddChequePresenter;
import com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeFragment;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bs6;
import defpackage.fi7;
import defpackage.fu1;
import defpackage.fv6;
import defpackage.gh4;
import defpackage.gw6;
import defpackage.j59;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.p72;
import defpackage.pl2;
import defpackage.uf3;
import defpackage.x07;
import defpackage.yg1;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class AddChequeFragment extends BaseFragment<FragmentAddChequeBinding> implements AddChequeView {
    public static final a h;
    public static final /* synthetic */ ze4<Object>[] i;
    public final int f = R.layout.fragment_add_cheque;
    public final ol4 g = new ol4(FragmentAddChequeBinding.class);
    public AddChequePresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AddChequeFragment.this.o().onBackPressed();
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
            AddChequeFragment addChequeFragment = AddChequeFragment.this;
            addChequeFragment.o().deleteCheque();
            addChequeFragment.o().onBackPressed();
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
            AddChequeFragment addChequeFragment = AddChequeFragment.this;
            addChequeFragment.o().deleteCheque();
            addChequeFragment.o().onBackPressed();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AddChequeFragment addChequeFragment = AddChequeFragment.this;
            addChequeFragment.o().deleteCheque();
            addChequeFragment.o().onBackPressed();
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<View, j59> {
        public f() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AddChequeFragment.this.o().editCheque();
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<View, j59> {
        public g() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AddChequeFragment.this.o().requestChequeAgain();
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
            AddChequeFragment addChequeFragment = AddChequeFragment.this;
            addChequeFragment.o().deleteCheque();
            addChequeFragment.o().onBackPressed();
            return j59.a;
        }
    }

    public static final class i extends gh4 implements nl3<View, j59> {
        public i() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AddChequeFragment.this.o().requestChequeAgain();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(AddChequeFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;", 0);
        x07.a.getClass();
        i = new ze4[]{bs6Var};
        h = new a();
    }

    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public final void finishLoadingFNSStatus() {
        n().incldHeader.btnAction.setLoading(false);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        o().onBackPressed();
        return false;
    }

    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public final void loadUpdatingFNSStatus() {
        n().incldHeader.btnAction.setLoading(true);
    }

    public final FragmentAddChequeBinding n() {
        return (FragmentAddChequeBinding) this.g.getValue(this, i[0]);
    }

    public final AddChequePresenter o() {
        AddChequePresenter addChequePresenter = this.presenter;
        if (addChequePresenter != null) {
            return addChequePresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ImageView imageView = n().btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
    }

    public final AddChequePresenter providePresenter() {
        Object serializable;
        uf3 uf3Var = (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null);
        String string = requireArguments().getString("WAITING_QUEUE_RECEIPT_QR_KEY", "");
        string.getClass();
        Bundle bundleRequireArguments = requireArguments();
        bundleRequireArguments.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            serializable = bundleRequireArguments.getSerializable("SPECIFY_REASON_KEY", fi7.class);
        } else {
            Object serializable2 = bundleRequireArguments.getSerializable("SPECIFY_REASON_KEY");
            if (!(serializable2 instanceof fi7)) {
                serializable2 = null;
            }
            serializable = (fi7) serializable2;
        }
        fi7 fi7Var = (fi7) serializable;
        if (fi7Var == null) {
            ah.f("Specify reason can not be null");
            return null;
        }
        return new AddChequePresenter(uf3Var, string, fi7Var, (yg1) m2.c(yg1.class, defpackage.e.e(this), null, null), (fu1) n2.c(fu1.class, defpackage.e.e(this), p72.g, null), requireArguments().getLong("CHEQUE_REQUEST_ID_KEY"));
    }

    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public final void setToolbarTitle(String str) {
        str.getClass();
        n().toolbarTitle.setText(str);
    }

    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public final void showChequeAlreadyWasScanned() {
        RejectedReceiptLayoutBinding rejectedReceiptLayoutBinding = n().incldHeader;
        rejectedReceiptLayoutBinding.tvHeader.setText(getString(R.string.rejected_cheque));
        rejectedReceiptLayoutBinding.tvReason.setText(getString(R.string.cheque_was_scanned));
        rejectedReceiptLayoutBinding.tvDescription.setText(getString(R.string.cheque_was_scanned_description));
        rejectedReceiptLayoutBinding.tvDescription.setPadding(0, pl2.e(18), 0, pl2.e(18));
        rejectedReceiptLayoutBinding.ivInfo.setImageResource(R.drawable.ic_card_status_rejected);
        rejectedReceiptLayoutBinding.viewDescriptionBackground.setBackgroundResource(R.drawable.background_red);
        rejectedReceiptLayoutBinding.btnAction.setText(getResources().getString(R.string.queue_delete_cheque));
        LoadingButton loadingButton = rejectedReceiptLayoutBinding.btnAction;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new c()));
    }

    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public final void showChequeInvalid() {
        RejectedReceiptLayoutBinding rejectedReceiptLayoutBinding = n().incldHeader;
        rejectedReceiptLayoutBinding.tvHeader.setText(getString(R.string.rejected_cheque));
        rejectedReceiptLayoutBinding.tvReason.setText(getString(R.string.not_valid_according_fns));
        rejectedReceiptLayoutBinding.tvDescription.setText(getString(R.string.not_valid_according_fns_description));
        rejectedReceiptLayoutBinding.ivInfo.setImageResource(R.drawable.ic_card_status_rejected);
        rejectedReceiptLayoutBinding.viewDescriptionBackground.setBackgroundResource(R.drawable.background_red);
        rejectedReceiptLayoutBinding.btnAction.setText(getResources().getString(R.string.queue_delete_cheque));
        LoadingButton loadingButton = rejectedReceiptLayoutBinding.btnAction;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new d()));
    }

    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public final void showChequeNotCorrectFormat() {
        FragmentAddChequeBinding fragmentAddChequeBindingN = n();
        RejectedReceiptLayoutBinding rejectedReceiptLayoutBinding = fragmentAddChequeBindingN.incldHeader;
        rejectedReceiptLayoutBinding.tvHeader.setText(getString(R.string.rejected_cheque));
        rejectedReceiptLayoutBinding.tvReason.setText(getString(R.string.not_correct_format));
        rejectedReceiptLayoutBinding.tvDescription.setText(getString(R.string.not_correct_format_description));
        rejectedReceiptLayoutBinding.ivInfo.setImageResource(R.drawable.ic_card_status_rejected);
        rejectedReceiptLayoutBinding.groupNotCorrectFormat.setVisibility(0);
        rejectedReceiptLayoutBinding.viewDescriptionBackground.setBackgroundResource(R.drawable.background_red);
        rejectedReceiptLayoutBinding.btnAction.setText(getResources().getString(R.string.not_correct_format_action));
        LoadingButton loadingButton = rejectedReceiptLayoutBinding.btnAction;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new f()));
        fragmentAddChequeBindingN.btnDelete.setVisibility(0);
        ImageView imageView = fragmentAddChequeBindingN.btnDelete;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new e()));
    }

    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public final void showCouldntDeleteCheque() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.cheque_queue_couldnt_delete, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public final void showCouldntRefreshCheque() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.cheque_queue_couldnt_refresh, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public final void showFnsNotResponding() {
        FragmentAddChequeBinding fragmentAddChequeBindingN = n();
        RejectedReceiptLayoutBinding rejectedReceiptLayoutBinding = fragmentAddChequeBindingN.incldHeader;
        rejectedReceiptLayoutBinding.tvHeader.setText(getString(R.string.rejected_cheque));
        rejectedReceiptLayoutBinding.tvReason.setText(getString(R.string.fns_not_responding));
        rejectedReceiptLayoutBinding.tvDescription.setText(getString(R.string.fns_not_responding_description));
        rejectedReceiptLayoutBinding.ivInfo.setImageResource(R.drawable.ic_blue_info);
        rejectedReceiptLayoutBinding.viewDescriptionBackground.setBackgroundResource(R.drawable.background_light_blue);
        rejectedReceiptLayoutBinding.btnAction.setText(getResources().getString(R.string.fns_not_responding_action));
        LoadingButton loadingButton = rejectedReceiptLayoutBinding.btnAction;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new g()));
        fragmentAddChequeBindingN.btnDelete.setVisibility(0);
        fragmentAddChequeBindingN.btnDelete.setOnClickListener(new View.OnClickListener() { // from class: n8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddChequeFragment.a aVar = AddChequeFragment.h;
                AddChequeFragment addChequeFragment = this.b;
                addChequeFragment.o().deleteCheque();
                addChequeFragment.o().onBackPressed();
            }
        });
    }

    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public final void showNoShopReceived() {
        FragmentAddChequeBinding fragmentAddChequeBindingN = n();
        RejectedReceiptLayoutBinding rejectedReceiptLayoutBinding = fragmentAddChequeBindingN.incldHeader;
        rejectedReceiptLayoutBinding.tvHeader.setText(getString(R.string.rejected_cheque));
        rejectedReceiptLayoutBinding.tvReason.setVisibility(8);
        rejectedReceiptLayoutBinding.tvDescription.setText(getString(R.string.no_shop_received));
        rejectedReceiptLayoutBinding.ivInfo.setImageResource(R.drawable.ic_blue_info);
        rejectedReceiptLayoutBinding.viewDescriptionBackground.setBackgroundResource(R.drawable.background_light_blue);
        rejectedReceiptLayoutBinding.btnAction.setText(getResources().getString(R.string.no_shop_received_action));
        LoadingButton loadingButton = rejectedReceiptLayoutBinding.btnAction;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new i()));
        fragmentAddChequeBindingN.btnDelete.setVisibility(0);
        ImageView imageView = fragmentAddChequeBindingN.btnDelete;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new h()));
    }

    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public final void showReceiptData(gw6 gw6Var) {
        gw6Var.getClass();
        String str = gw6Var.e;
        FragmentAddChequeBinding fragmentAddChequeBindingN = n();
        fragmentAddChequeBindingN.cardReceiptData.setVisibility(0);
        Float f2 = gw6Var.f;
        TextView textView = fragmentAddChequeBindingN.tvReceiptDataTitle;
        if (f2 != null) {
            textView.setText(getString(R.string.cheque_sum_header));
            fragmentAddChequeBindingN.tvReceiptDataSum.setText(getString(R.string.placeholder_ruble_price, f2));
            fragmentAddChequeBindingN.tvReceiptDataSum.setVisibility(0);
        } else {
            textView.setText(getString(R.string.queue_receipt_data_title));
            fragmentAddChequeBindingN.tvReceiptDataSum.setVisibility(8);
        }
        fragmentAddChequeBindingN.ivReceiptDataQr.setImageBitmap(fv6.a(300, gw6Var.a));
        LayoutQrInfoBinding layoutQrInfoBinding = fragmentAddChequeBindingN.layoutReceiptDataQrInfo;
        layoutQrInfoBinding.tvFn.setText(gw6Var.b);
        layoutQrInfoBinding.tvFpd.setText(gw6Var.c);
        layoutQrInfoBinding.tvFd.setText(gw6Var.d);
        LayoutQrInfoInternetBinding layoutQrInfoInternetBinding = layoutQrInfoBinding.layoutInn;
        layoutQrInfoInternetBinding.getRoot().setVisibility(str == null ? 8 : 0);
        layoutQrInfoInternetBinding.tvINN.setText(str);
        layoutQrInfoInternetBinding.tvLegalFace.setVisibility(8);
    }
}
