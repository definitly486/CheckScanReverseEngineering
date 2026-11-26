package com.warefly.checkscan.profile.presentation.main.dialogs.enter.view;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.View;
import android.view.Window;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.graphics.Insets;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentKt;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialogFragment;
import com.warefly.checkscan.profile.databinding.DialogProfilePromocodeEnterBinding;
import com.warefly.checkscan.profile.domain.entities.PromocodeBlock;
import com.warefly.checkscan.profile.presentation.main.dialogs.ProfilePromocodeSuccessBottomSheet;
import com.warefly.checkscan.profile.presentation.main.dialogs.enter.presenter.ProfilePromocodeEnterPresenter;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.gl4;
import defpackage.j59;
import defpackage.k6;
import defpackage.lb7;
import defpackage.lm6;
import defpackage.m2;
import defpackage.nl3;
import defpackage.og4;
import defpackage.pl2;
import defpackage.q6;
import defpackage.q96;
import defpackage.x07;
import defpackage.ze4;
import defpackage.zm2;

/* JADX INFO: loaded from: classes5.dex */
public final class ProfilePromocodeEnterBottomSheet extends BaseBottomSheetDialogFragment<DialogProfilePromocodeEnterBinding> implements ProfilePromocodeEnterView {
    public static final a e;
    public static final /* synthetic */ ze4<Object>[] f;
    public final gl4 c = new gl4(DialogProfilePromocodeEnterBinding.class);
    public ProfilePromocodeSuccessBottomSheet d;
    public ProfilePromocodeEnterPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements bm3<Boolean, Insets, j59> {
        public b() {
            super(2);
        }

        @Override // defpackage.bm3
        public final j59 invoke(Boolean bool, Insets insets) {
            boolean zBooleanValue = bool.booleanValue();
            Insets insets2 = insets;
            insets2.getClass();
            DialogProfilePromocodeEnterBinding dialogProfilePromocodeEnterBindingD = ProfilePromocodeEnterBottomSheet.this.d();
            if (zBooleanValue) {
                ConstraintLayout root = dialogProfilePromocodeEnterBindingD.getRoot();
                root.getClass();
                root.setPadding(root.getPaddingLeft(), root.getPaddingTop(), root.getPaddingRight(), insets2.bottom);
            } else {
                ConstraintLayout root2 = dialogProfilePromocodeEnterBindingD.getRoot();
                root2.getClass();
                root2.setPadding(root2.getPaddingLeft(), root2.getPaddingTop(), root2.getPaddingRight(), pl2.e(32));
            }
            return j59.a;
        }
    }

    public static final class c implements TextWatcher {
        public c() {
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            ProfilePromocodeEnterPresenter profilePromocodeEnterPresenter = ProfilePromocodeEnterBottomSheet.this.presenter;
            if (profilePromocodeEnterPresenter != null) {
                profilePromocodeEnterPresenter.onPromocodeTextChanged(charSequence.toString());
            } else {
                aa4.j("presenter");
                throw null;
            }
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ProfilePromocodeEnterPresenter profilePromocodeEnterPresenter = ProfilePromocodeEnterBottomSheet.this.presenter;
            if (profilePromocodeEnterPresenter != null) {
                profilePromocodeEnterPresenter.onPromocodeButtonActivate();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(ProfilePromocodeEnterBottomSheet.class, "binding", "getBinding()Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeEnterBinding;", 0);
        x07.a.getClass();
        f = new ze4[]{bs6Var};
        e = new a();
    }

    public final DialogProfilePromocodeEnterBinding d() {
        return (DialogProfilePromocodeEnterBinding) this.c.getValue(this, f[0]);
    }

    @Override // com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterView
    public final void dismissSheet() {
        d().tilField.clearFocus();
        dismiss();
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialogFragment, androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        if (Build.VERSION.SDK_INT < 30) {
            BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(requireContext(), R.style.BottomSheetWithKeyboard);
            bottomSheetDialog.getBehavior().setState(3);
            return bottomSheetDialog;
        }
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.getClass();
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        Parcelable parcelable;
        Window window;
        view.getClass();
        super.onViewCreated(view, bundle);
        b bVar = new b();
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            Dialog dialog = getDialog();
            if (dialog == null || (window = dialog.getWindow()) == null) {
                window = requireActivity().getWindow();
            }
            getViewLifecycleOwner().getLifecycle().addObserver(new zm2(window, this, bVar));
        }
        Bundle bundleRequireArguments = requireArguments();
        bundleRequireArguments.getClass();
        if (i >= 33) {
            parcelable = (Parcelable) bundleRequireArguments.getParcelable("PROMOCODE_BLOCK_KEY", PromocodeBlock.class);
        } else {
            Parcelable parcelable2 = bundleRequireArguments.getParcelable("PROMOCODE_BLOCK_KEY");
            if (!(parcelable2 instanceof PromocodeBlock)) {
                parcelable2 = null;
            }
            parcelable = (PromocodeBlock) parcelable2;
        }
        PromocodeBlock promocodeBlock = (PromocodeBlock) parcelable;
        DialogProfilePromocodeEnterBinding dialogProfilePromocodeEnterBindingD = d();
        dialogProfilePromocodeEnterBindingD.tvTitle.setText(promocodeBlock != null ? promocodeBlock.b : null);
        dialogProfilePromocodeEnterBindingD.etField.setInputType(1);
        dialogProfilePromocodeEnterBindingD.etField.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(20)});
        dialogProfilePromocodeEnterBindingD.etField.setOnFocusChangeListener(new lm6());
        dialogProfilePromocodeEnterBindingD.etField.addTextChangedListener(new c());
        dialogProfilePromocodeEnterBindingD.btnOk.setText(promocodeBlock != null ? promocodeBlock.c : null);
        LoadingButton loadingButton = dialogProfilePromocodeEnterBindingD.btnOk;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new d()));
        dialogProfilePromocodeEnterBindingD.etField.postDelayed(new q96(dialogProfilePromocodeEnterBindingD, 1), 200L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ProfilePromocodeEnterPresenter providePresenter() {
        return new ProfilePromocodeEnterPresenter((k6) (this instanceof og4 ? m2.c(k6.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(k6.class), null, null)));
    }

    @Override // com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterView
    public final void showButtonLoading(boolean z) {
        d().btnOk.setLoading(z);
    }

    @Override // com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterView
    public final void showPromocodeError(boolean z, String str) {
        TextInputLayout textInputLayout = d().tilField;
        textInputLayout.setErrorEnabled(z);
        if (!z) {
            str = null;
        } else if (str == null) {
            str = textInputLayout.getContext().getString(R.string.profile_promocode_enter_error);
            str.getClass();
        }
        textInputLayout.setError(str);
    }

    @Override // com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterView
    public final void showPromocodeSuccessBottomSheet(q6 q6Var) {
        q6Var.getClass();
        FragmentKt.setFragmentResult(this, "PROMOCODE_ACTIVATED_REQUEST_KEY", BundleKt.bundleOf());
        Context context = getContext();
        if (context != null) {
            ProfilePromocodeSuccessBottomSheet profilePromocodeSuccessBottomSheet = this.d;
            if (profilePromocodeSuccessBottomSheet != null) {
                profilePromocodeSuccessBottomSheet.dismiss();
            }
            ProfilePromocodeSuccessBottomSheet profilePromocodeSuccessBottomSheet2 = new ProfilePromocodeSuccessBottomSheet(context, false, q6Var);
            this.d = profilePromocodeSuccessBottomSheet2;
            profilePromocodeSuccessBottomSheet2.show();
        }
    }
}
