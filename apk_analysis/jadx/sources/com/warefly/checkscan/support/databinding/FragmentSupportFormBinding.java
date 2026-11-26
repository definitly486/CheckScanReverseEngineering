package com.warefly.checkscan.support.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.CheckBox;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.databinding.LayoutSimpleTryAgainBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutSpinnerLoadingBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentSupportFormBinding implements ViewBinding {
    public final LoadingButton btnConfirm;
    public final CheckBox cbEmailAgreement;
    public final ConstraintLayout container;
    public final TextInputEditText etDescription;
    public final TextInputEditText etEmail;
    public final TextInputEditText etName;
    public final LayoutSimpleTryAgainBinding incldError;
    public final LayoutSpinnerLoadingBinding incldLoading;
    public final ImageView ivBtnBack;
    public final NestedScrollView nestedScrollView;
    private final ConstraintLayout rootView;
    public final TextInputLayout tilDescription;
    public final TextInputLayout tilEmail;
    public final TextInputLayout tilName;
    public final TextView tvDescriptionHint;
    public final TextView tvEmailHint;
    public final TextView tvHeader;
    public final TextView tvNameHint;

    private FragmentSupportFormBinding(ConstraintLayout constraintLayout, LoadingButton loadingButton, CheckBox checkBox, ConstraintLayout constraintLayout2, TextInputEditText textInputEditText, TextInputEditText textInputEditText2, TextInputEditText textInputEditText3, LayoutSimpleTryAgainBinding layoutSimpleTryAgainBinding, LayoutSpinnerLoadingBinding layoutSpinnerLoadingBinding, ImageView imageView, NestedScrollView nestedScrollView, TextInputLayout textInputLayout, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.btnConfirm = loadingButton;
        this.cbEmailAgreement = checkBox;
        this.container = constraintLayout2;
        this.etDescription = textInputEditText;
        this.etEmail = textInputEditText2;
        this.etName = textInputEditText3;
        this.incldError = layoutSimpleTryAgainBinding;
        this.incldLoading = layoutSpinnerLoadingBinding;
        this.ivBtnBack = imageView;
        this.nestedScrollView = nestedScrollView;
        this.tilDescription = textInputLayout;
        this.tilEmail = textInputLayout2;
        this.tilName = textInputLayout3;
        this.tvDescriptionHint = textView;
        this.tvEmailHint = textView2;
        this.tvHeader = textView3;
        this.tvNameHint = textView4;
    }

    public static FragmentSupportFormBinding bind(View view) {
        int i = R.id.btn_confirm;
        LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_confirm);
        if (loadingButton != null) {
            i = R.id.cb_email_agreement;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.cb_email_agreement);
            if (checkBox != null) {
                i = R.id.container;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container);
                if (constraintLayout != null) {
                    i = R.id.et_description;
                    TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_description);
                    if (textInputEditText != null) {
                        i = R.id.et_email;
                        TextInputEditText textInputEditText2 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_email);
                        if (textInputEditText2 != null) {
                            i = R.id.et_name;
                            TextInputEditText textInputEditText3 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_name);
                            if (textInputEditText3 != null) {
                                i = R.id.incld_error;
                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_error);
                                if (viewFindChildViewById != null) {
                                    LayoutSimpleTryAgainBinding layoutSimpleTryAgainBindingBind = LayoutSimpleTryAgainBinding.bind(viewFindChildViewById);
                                    i = R.id.incld_loading;
                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.incld_loading);
                                    if (viewFindChildViewById2 != null) {
                                        LayoutSpinnerLoadingBinding layoutSpinnerLoadingBindingBind = LayoutSpinnerLoadingBinding.bind(viewFindChildViewById2);
                                        i = R.id.iv_btn_back;
                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_btn_back);
                                        if (imageView != null) {
                                            i = R.id.nested_scroll_view;
                                            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, R.id.nested_scroll_view);
                                            if (nestedScrollView != null) {
                                                i = R.id.til_description;
                                                TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_description);
                                                if (textInputLayout != null) {
                                                    i = R.id.til_email;
                                                    TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_email);
                                                    if (textInputLayout2 != null) {
                                                        i = R.id.til_name;
                                                        TextInputLayout textInputLayout3 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_name);
                                                        if (textInputLayout3 != null) {
                                                            i = R.id.tv_description_hint;
                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description_hint);
                                                            if (textView != null) {
                                                                i = R.id.tv_email_hint;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_email_hint);
                                                                if (textView2 != null) {
                                                                    i = R.id.tv_header;
                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_header);
                                                                    if (textView3 != null) {
                                                                        i = R.id.tv_name_hint;
                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name_hint);
                                                                        if (textView4 != null) {
                                                                            return new FragmentSupportFormBinding((ConstraintLayout) view, loadingButton, checkBox, constraintLayout, textInputEditText, textInputEditText2, textInputEditText3, layoutSimpleTryAgainBindingBind, layoutSpinnerLoadingBindingBind, imageView, nestedScrollView, textInputLayout, textInputLayout2, textInputLayout3, textView, textView2, textView3, textView4);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentSupportFormBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_support_form, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentSupportFormBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
