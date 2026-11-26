package com.warefly.checkscan.presentation.createCard.view;

import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentKt;
import androidx.navigation.NavArgsLazy;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import com.warefly.checkscan.databinding.FragmentCreateCardBinding;
import com.warefly.checkscan.presentation.createCard.presenter.CreateCardPresenter;
import com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebFullScreenDialog;
import defpackage.aa4;
import defpackage.ah;
import defpackage.b36;
import defpackage.b62;
import defpackage.bm3;
import defpackage.bs6;
import defpackage.c62;
import defpackage.c9;
import defpackage.ca0;
import defpackage.gh4;
import defpackage.i3;
import defpackage.j59;
import defpackage.jf6;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.p76;
import defpackage.ta8;
import defpackage.uf3;
import defpackage.v89;
import defpackage.w8;
import defpackage.x07;
import defpackage.ze4;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class CreateCardFragment extends BaseFragment<FragmentCreateCardBinding> implements CreateCardView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final NavArgsLazy f = new NavArgsLazy(x07.a(c62.class), new e());
    public final int g = R.layout.fragment_create_card;
    public final ol4 h = new ol4(FragmentCreateCardBinding.class);
    public LoadingDialog i;
    public UpridWebFullScreenDialog j;
    public CreateCardPresenter presenter;

    public static final class a extends gh4 implements nl3<String, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(String str) {
            ze4<Object>[] ze4VarArr = CreateCardFragment.k;
            CreateCardFragment createCardFragment = CreateCardFragment.this;
            Editable text = createCardFragment.n().etPhone.getText();
            String string = text != null ? text.toString() : null;
            if (string != null) {
                createCardFragment.o().onNumberChanged(string);
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements bm3<String, Bundle, j59> {
        public b() {
            super(2);
        }

        @Override // defpackage.bm3
        public final j59 invoke(String str, Bundle bundle) {
            String str2 = str;
            Bundle bundle2 = bundle;
            str2.getClass();
            bundle2.getClass();
            CreateCardFragment createCardFragment = CreateCardFragment.this;
            FragmentKt.clearFragmentResult(createCardFragment, str2);
            Serializable serializable = bundle2.getSerializable("UPRID_RESULT_KEY");
            v89 v89Var = serializable instanceof v89 ? (v89) serializable : null;
            if (v89Var != null) {
                v89Var.c(createCardFragment.o());
            }
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
            CreateCardFragment.this.o().onBackClick();
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
            ze4<Object>[] ze4VarArr = CreateCardFragment.k;
            CreateCardFragment createCardFragment = CreateCardFragment.this;
            Editable text = createCardFragment.n().etPhone.getText();
            String string = text != null ? text.toString() : null;
            if (string != null) {
                createCardFragment.o().onIssueClick(string);
            }
            return j59.a;
        }
    }

    public static final class e implements ll3<Bundle> {
        public e() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            CreateCardFragment createCardFragment = CreateCardFragment.this;
            Bundle arguments = createCardFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(createCardFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(CreateCardFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public final void dismissUpridDialog() {
        UpridWebFullScreenDialog upridWebFullScreenDialog = this.j;
        if (upridWebFullScreenDialog != null) {
            upridWebFullScreenDialog.dismiss();
        }
    }

    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public final void editNumberClick() {
        p();
    }

    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public final void enableIssueButton(boolean z) {
        n().btnIssueCard.setEnabled(z);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.g;
    }

    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public final void isHaveNumber(boolean z, boolean z2, String str) {
        if (!z) {
            p();
            return;
        }
        FragmentCreateCardBinding fragmentCreateCardBindingN = n();
        if (!z2) {
            fragmentCreateCardBindingN.tvTitle.setText(getString(R.string.fragment_create_card_title_text_error_number));
            fragmentCreateCardBindingN.tvDescriptionError.setVisibility(0);
            fragmentCreateCardBindingN.layoutPhoneCard.getRoot().setBackground(getResources().getDrawable(R.drawable.backgraound_white_radius_10_stroke, null));
            TextView textView = fragmentCreateCardBindingN.layoutPhoneCard.tvNumber;
            if (str == null) {
                ah.f("Required value was null.");
                return;
            }
            textView.setText(str);
            fragmentCreateCardBindingN.btnIssueCard.setVisibility(8);
            fragmentCreateCardBindingN.tvChangePhoneHint.setVisibility(8);
            fragmentCreateCardBindingN.tilPhone.setVisibility(8);
            TextView textView2 = fragmentCreateCardBindingN.btnChangeNumber;
            textView2.setVisibility(0);
            textView2.setOnClickListener(new lb7(new w8(this, 2)));
            return;
        }
        TextView textView3 = fragmentCreateCardBindingN.tvChangePhoneHint;
        SpannableString spannableString = new SpannableString(getString(R.string.fragment_create_card_hint_change_number));
        spannableString.setSpan(new b62(this), ta8.K(spannableString, "в профиле.", 0, false, 6), spannableString.length() - 1, 18);
        spannableString.setSpan(new UnderlineSpan(), ta8.K(spannableString, "в профиле.", 0, false, 6), spannableString.length() - 1, 18);
        textView3.setText(spannableString);
        fragmentCreateCardBindingN.tvChangePhoneHint.setMovementMethod(LinkMovementMethod.getInstance());
        fragmentCreateCardBindingN.tvTitle.setText(getString(R.string.fragment_create_card_title_text_have_number));
        fragmentCreateCardBindingN.etPhone.setText(str);
        TextView textView4 = fragmentCreateCardBindingN.layoutPhoneCard.tvNumber;
        if (str == null) {
            ah.f("Required value was null.");
            return;
        }
        textView4.setText(str);
        fragmentCreateCardBindingN.tvDescriptionError.setVisibility(8);
        fragmentCreateCardBindingN.tilPhone.setVisibility(8);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        o().onBackClick();
        return false;
    }

    public final FragmentCreateCardBinding n() {
        return (FragmentCreateCardBinding) this.h.getValue(this, k[0]);
    }

    public final CreateCardPresenter o() {
        CreateCardPresenter createCardPresenter = this.presenter;
        if (createCardPresenter != null) {
            return createCardPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentKt.clearFragmentResult(this, "UPRID_RESULT_KEY");
        FragmentCreateCardBinding fragmentCreateCardBindingN = n();
        ImageView imageView = fragmentCreateCardBindingN.btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new c()));
        TextView textView = fragmentCreateCardBindingN.btnIssueCard;
        textView.getClass();
        textView.setOnClickListener(new lb7(new d()));
        fragmentCreateCardBindingN.etPhone.addTextChangedListener(new p76(11, "+# ### ### ####", new a()));
        FragmentKt.setFragmentResultListener(this, "UPRID_RESULT_KEY", new b());
    }

    public final void p() {
        FragmentCreateCardBinding fragmentCreateCardBindingN = n();
        fragmentCreateCardBindingN.btnChangeNumber.setVisibility(8);
        fragmentCreateCardBindingN.btnIssueCard.setVisibility(0);
        fragmentCreateCardBindingN.tvTitle.setText(getString(R.string.fragment_create_card_title_text));
        fragmentCreateCardBindingN.layoutPhoneCard.getRoot().setVisibility(8);
        fragmentCreateCardBindingN.tvDescriptionError.setVisibility(8);
        fragmentCreateCardBindingN.btnIssueCard.setEnabled(false);
        fragmentCreateCardBindingN.tilPhone.setVisibility(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CreateCardPresenter providePresenter() {
        return new CreateCardPresenter((uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null), (i3) m2.c(i3.class, defpackage.e.e(this), null, null), (ca0) m2.c(ca0.class, defpackage.e.e(this), null, null), ((c62) this.f.getValue()).a);
    }

    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public final void showError(String str) {
        String string = getString(R.string.some_error);
        string.getClass();
        View view = getView();
        if (view != null) {
            if (str == null) {
                str = string;
            }
            oz1.e(view, str);
        }
    }

    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public final void showIncorrectPhoneMessage(boolean z) {
        n().tilPhone.setError(z ? getString(R.string.fragment_create_card_error_description) : null);
    }

    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public final void showLoading(boolean z) {
        LoadingDialog loadingDialog = this.i;
        if (!z) {
            if (loadingDialog != null) {
                loadingDialog.dismiss();
            }
        } else {
            if (loadingDialog != null) {
                loadingDialog.dismiss();
            }
            LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
            m(loadingDialogB);
            this.i = loadingDialogB;
        }
    }

    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public final void showLoadingSpinner(boolean z) {
        ConstraintLayout root = n().incldLoadingSpinner.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public final void showPhoneUsedError() {
        View view = getView();
        if (view != null) {
            oz1.d(R.string.fragment_verification_phone_description_error, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public final void showTimeConfirmError() {
        View view = getView();
        if (view != null) {
            oz1.d(R.string.fragment_create_card_time_confirm_error, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.createCard.view.CreateCardView
    public final void showUpridWebDialog(String str) {
        str.getClass();
        UpridWebFullScreenDialog upridWebFullScreenDialog = this.j;
        if (upridWebFullScreenDialog != null) {
            upridWebFullScreenDialog.dismiss();
        }
        UpridWebFullScreenDialog.f.getClass();
        UpridWebFullScreenDialog upridWebFullScreenDialog2 = new UpridWebFullScreenDialog();
        upridWebFullScreenDialog2.setArguments(BundleKt.bundleOf(new b36("URL_KEY", str)));
        this.j = upridWebFullScreenDialog2;
        m(upridWebFullScreenDialog2);
    }
}
