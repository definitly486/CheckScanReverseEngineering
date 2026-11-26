package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentCreateCardBinding implements ViewBinding {
    public final ImageView btnBack;
    public final TextView btnChangeNumber;
    public final TextView btnIssueCard;
    public final TextInputEditText etPhone;
    public final LoadingSpinnerBinding incldLoadingSpinner;
    public final ItemPhoneCardBinding layoutPhoneCard;
    private final ConstraintLayout rootView;
    public final TextInputLayout tilPhone;
    public final View toolbar;
    public final TextView tvChangePhoneHint;
    public final TextView tvDescriptionError;
    public final TextView tvErrorNumber;
    public final TextView tvHeader;
    public final TextView tvTitle;

    private FragmentCreateCardBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2, TextInputEditText textInputEditText, LoadingSpinnerBinding loadingSpinnerBinding, ItemPhoneCardBinding itemPhoneCardBinding, TextInputLayout textInputLayout, View view, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.rootView = constraintLayout;
        this.btnBack = imageView;
        this.btnChangeNumber = textView;
        this.btnIssueCard = textView2;
        this.etPhone = textInputEditText;
        this.incldLoadingSpinner = loadingSpinnerBinding;
        this.layoutPhoneCard = itemPhoneCardBinding;
        this.tilPhone = textInputLayout;
        this.toolbar = view;
        this.tvChangePhoneHint = textView3;
        this.tvDescriptionError = textView4;
        this.tvErrorNumber = textView5;
        this.tvHeader = textView6;
        this.tvTitle = textView7;
    }

    public static FragmentCreateCardBinding bind(View view) {
        int i = R.id.btn_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageView != null) {
            i = R.id.btn_change_number;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_change_number);
            if (textView != null) {
                i = R.id.btn_issue_card;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_issue_card);
                if (textView2 != null) {
                    i = R.id.et_phone;
                    TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_phone);
                    if (textInputEditText != null) {
                        i = R.id.incld_loading_spinner;
                        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_loading_spinner);
                        if (viewFindChildViewById != null) {
                            LoadingSpinnerBinding loadingSpinnerBindingBind = LoadingSpinnerBinding.bind(viewFindChildViewById);
                            i = R.id.layout_phone_card;
                            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.layout_phone_card);
                            if (viewFindChildViewById2 != null) {
                                ItemPhoneCardBinding itemPhoneCardBindingBind = ItemPhoneCardBinding.bind(viewFindChildViewById2);
                                i = R.id.til_phone;
                                TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_phone);
                                if (textInputLayout != null) {
                                    i = R.id.toolbar;
                                    View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.toolbar);
                                    if (viewFindChildViewById3 != null) {
                                        i = R.id.tv_change_phone_hint;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_change_phone_hint);
                                        if (textView3 != null) {
                                            i = R.id.tv_description_error;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description_error);
                                            if (textView4 != null) {
                                                i = R.id.tv_error_number;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_error_number);
                                                if (textView5 != null) {
                                                    i = R.id.tv_header;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_header);
                                                    if (textView6 != null) {
                                                        i = R.id.tv_title;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                        if (textView7 != null) {
                                                            return new FragmentCreateCardBinding((ConstraintLayout) view, imageView, textView, textView2, textInputEditText, loadingSpinnerBindingBind, itemPhoneCardBindingBind, textInputLayout, viewFindChildViewById3, textView3, textView4, textView5, textView6, textView7);
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

    public static FragmentCreateCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_create_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCreateCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
