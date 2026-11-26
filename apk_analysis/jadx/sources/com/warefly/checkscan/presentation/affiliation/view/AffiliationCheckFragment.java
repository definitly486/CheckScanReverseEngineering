package com.warefly.checkscan.presentation.affiliation.view;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.navigation.NavArgsLazy;
import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentAffiliationCheckBinding;
import com.warefly.checkscan.presentation.affiliation.dialogs.AffiliationInfoDialog;
import com.warefly.checkscan.presentation.affiliation.dialogs.AffiliationResultDialog;
import com.warefly.checkscan.presentation.affiliation.presenter.AffiliationCheckPresenter;
import defpackage.aa4;
import defpackage.bh6;
import defpackage.bs6;
import defpackage.c9;
import defpackage.fb;
import defpackage.gb;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.uf3;
import defpackage.x07;
import defpackage.x9;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class AffiliationCheckFragment extends BaseFragment<FragmentAffiliationCheckBinding> implements AffiliationCheckView {
    public static final /* synthetic */ ze4<Object>[] j;
    public final ol4 f = new ol4(FragmentAffiliationCheckBinding.class);
    public final NavArgsLazy g = new NavArgsLazy(x07.a(gb.class), new g());
    public AffiliationInfoDialog h;
    public AffiliationResultDialog i;
    public AffiliationCheckPresenter presenter;

    public static final class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            AffiliationCheckFragment.this.o().validateLinkFormat(String.valueOf(editable));
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AffiliationCheckFragment.this.o().onBackPressed();
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
            AffiliationCheckFragment.this.o().checkLink();
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
            AffiliationCheckFragment.this.o().clearLinkInput();
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
            AffiliationCheckFragment.this.o().copyPasteLink();
            return j59.a;
        }
    }

    public static final class f extends gh4 implements ll3<j59> {
        public f() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            AffiliationCheckFragment.this.o().onBackPressed();
            return j59.a;
        }
    }

    public static final class g implements ll3<Bundle> {
        public g() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            AffiliationCheckFragment affiliationCheckFragment = AffiliationCheckFragment.this;
            Bundle arguments = affiliationCheckFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(affiliationCheckFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(AffiliationCheckFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public final void clearInput() {
        n().etLink.setText((CharSequence) null);
    }

    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public final void enableCheckButton(boolean z) {
        n().btnCheck.setEnabled(z);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return R.layout.fragment_affiliation_check;
    }

    public final FragmentAffiliationCheckBinding n() {
        return (FragmentAffiliationCheckBinding) this.f.getValue(this, j[0]);
    }

    public final AffiliationCheckPresenter o() {
        AffiliationCheckPresenter affiliationCheckPresenter = this.presenter;
        if (affiliationCheckPresenter != null) {
            return affiliationCheckPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentAffiliationCheckBinding fragmentAffiliationCheckBindingN = n();
        fragmentAffiliationCheckBindingN.viewToolbar.tvToolbarTitle.setText(getString(R.string.affiliation_toolbar_title));
        ImageView imageView = fragmentAffiliationCheckBindingN.viewToolbar.btnFave;
        imageView.getClass();
        imageView.setVisibility(8);
        ImageView imageView2 = fragmentAffiliationCheckBindingN.viewToolbar.btnShare;
        imageView2.getClass();
        imageView2.setVisibility(8);
        ImageView imageView3 = fragmentAffiliationCheckBindingN.viewToolbar.btnBack;
        imageView3.getClass();
        imageView3.setOnClickListener(new lb7(new b()));
        TextView textView = fragmentAffiliationCheckBindingN.tvSubtitle;
        String string = getString(R.string.affiliation_tv_subtitle);
        string.getClass();
        String string2 = getString(R.string.affiliation_tv_subtitle_clicable);
        string2.getClass();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) string);
        spannableStringBuilder.append((CharSequence) string2);
        spannableStringBuilder.setSpan(new fb(this), string.length(), spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(new StyleSpan(1), string.length(), spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor(requireContext(), R.color.readilyBlue)), string.length(), spannableStringBuilder.length(), 33);
        textView.setText(spannableStringBuilder);
        fragmentAffiliationCheckBindingN.tvSubtitle.setMovementMethod(LinkMovementMethod.getInstance());
        TextInputEditText textInputEditText = fragmentAffiliationCheckBindingN.etLink;
        textInputEditText.getClass();
        textInputEditText.addTextChangedListener(new a());
        TextView textView2 = fragmentAffiliationCheckBindingN.btnCheck;
        textView2.getClass();
        textView2.setOnClickListener(new lb7(new c()));
        ImageView imageView4 = fragmentAffiliationCheckBindingN.btnClearInput;
        imageView4.getClass();
        imageView4.setOnClickListener(new lb7(new d()));
        TextView textView3 = fragmentAffiliationCheckBindingN.btnCopyPaste;
        textView3.getClass();
        textView3.setOnClickListener(new lb7(new e()));
    }

    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public final void pasteFromClipboard() {
        Object systemService = requireContext().getSystemService("clipboard");
        systemService.getClass();
        ClipData primaryClip = ((ClipboardManager) systemService).getPrimaryClip();
        ClipData.Item itemAt = primaryClip != null ? primaryClip.getItemAt(0) : null;
        CharSequence text = itemAt != null ? itemAt.getText() : null;
        if (text != null) {
            n().etLink.setText(text.toString());
            return;
        }
        Uri uri = itemAt != null ? itemAt.getUri() : null;
        if (uri != null) {
            n().etLink.setText(uri.toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AffiliationCheckPresenter providePresenter() {
        NavArgsLazy navArgsLazy = this.g;
        return new AffiliationCheckPresenter(((gb) navArgsLazy.getValue()).a, ((gb) navArgsLazy.getValue()).b, (x9) m2.c(x9.class, defpackage.e.e(this), null, null), (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null));
    }

    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public final void setLinkCheckingLoading(boolean z) {
        FragmentAffiliationCheckBinding fragmentAffiliationCheckBindingN = n();
        ProgressBar progressBar = fragmentAffiliationCheckBindingN.pbLinkCheckInProgress;
        if (z) {
            progressBar.getClass();
            progressBar.setVisibility(0);
            fragmentAffiliationCheckBindingN.btnCheck.setText((CharSequence) null);
        } else {
            progressBar.getClass();
            progressBar.setVisibility(8);
            fragmentAffiliationCheckBindingN.btnCheck.setText(getString(R.string.affiliation_btn_check));
        }
    }

    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public final void setNoError() {
        n().tilLink.setError(null);
    }

    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public final void showClearButton(boolean z) {
        ImageView imageView = n().btnClearInput;
        imageView.getClass();
        imageView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public final void showHowToCopyDialog() {
        AffiliationInfoDialog affiliationInfoDialog = this.h;
        if (affiliationInfoDialog != null) {
            affiliationInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            AffiliationInfoDialog affiliationInfoDialog2 = new AffiliationInfoDialog(context);
            this.h = affiliationInfoDialog2;
            affiliationInfoDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public final void showNotFoundError() {
        n().tilLink.setError(getString(R.string.affiliation_not_found_error));
    }

    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public final void showNotValidLinkError() {
        n().tilLink.setError(getString(R.string.affiliation_not_valid_link_error));
    }

    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public final void showResultDialog(bh6 bh6Var) {
        bh6Var.getClass();
        AffiliationResultDialog affiliationResultDialog = this.i;
        if (affiliationResultDialog != null) {
            affiliationResultDialog.dismiss();
        }
        AffiliationResultDialog affiliationResultDialog2 = new AffiliationResultDialog(bh6Var, new f());
        m(affiliationResultDialog2);
        this.i = affiliationResultDialog2;
    }

    @Override // com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView
    public final void showUnexpectedError() {
        n().tilLink.setError(getString(R.string.affiliation_unexpected_error));
    }
}
