package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarBackIconBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentQrHandBinding implements ViewBinding {
    public final AppCompatTextView btnAction;
    public final TextInputEditText etCheckSum;
    public final TextInputEditText etDateTime;
    public final TextInputEditText etFd;
    public final TextInputEditText etFn;
    public final TextInputEditText etFp;
    public final LinearLayout qrCodeFields;
    public final NestedScrollView qrInfo;
    private final ConstraintLayout rootView;
    public final TextInputLayout tilCheckSum;
    public final TextInputLayout tilDateTime;
    public final TextInputLayout tilFd;
    public final TextInputLayout tilFn;
    public final TextInputLayout tilFp;
    public final LayoutToolbarBackIconBinding toolbar;
    public final AppCompatTextView tvHelper;
    public final AppCompatTextView tvHintDate;
    public final AppCompatTextView tvHintFd;
    public final AppCompatTextView tvHintFn;
    public final AppCompatTextView tvHintFp;
    public final AppCompatTextView tvHintSum;
    public final AppCompatTextView tvTitle;

    private FragmentQrHandBinding(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, TextInputEditText textInputEditText, TextInputEditText textInputEditText2, TextInputEditText textInputEditText3, TextInputEditText textInputEditText4, TextInputEditText textInputEditText5, LinearLayout linearLayout, NestedScrollView nestedScrollView, TextInputLayout textInputLayout, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, TextInputLayout textInputLayout4, TextInputLayout textInputLayout5, LayoutToolbarBackIconBinding layoutToolbarBackIconBinding, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8) {
        this.rootView = constraintLayout;
        this.btnAction = appCompatTextView;
        this.etCheckSum = textInputEditText;
        this.etDateTime = textInputEditText2;
        this.etFd = textInputEditText3;
        this.etFn = textInputEditText4;
        this.etFp = textInputEditText5;
        this.qrCodeFields = linearLayout;
        this.qrInfo = nestedScrollView;
        this.tilCheckSum = textInputLayout;
        this.tilDateTime = textInputLayout2;
        this.tilFd = textInputLayout3;
        this.tilFn = textInputLayout4;
        this.tilFp = textInputLayout5;
        this.toolbar = layoutToolbarBackIconBinding;
        this.tvHelper = appCompatTextView2;
        this.tvHintDate = appCompatTextView3;
        this.tvHintFd = appCompatTextView4;
        this.tvHintFn = appCompatTextView5;
        this.tvHintFp = appCompatTextView6;
        this.tvHintSum = appCompatTextView7;
        this.tvTitle = appCompatTextView8;
    }

    public static FragmentQrHandBinding bind(View view) {
        int i = R.id.btn_action;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (appCompatTextView != null) {
            i = R.id.et_check_sum;
            TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_check_sum);
            if (textInputEditText != null) {
                i = R.id.et_date_time;
                TextInputEditText textInputEditText2 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_date_time);
                if (textInputEditText2 != null) {
                    i = R.id.et_fd;
                    TextInputEditText textInputEditText3 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_fd);
                    if (textInputEditText3 != null) {
                        i = R.id.et_fn;
                        TextInputEditText textInputEditText4 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_fn);
                        if (textInputEditText4 != null) {
                            i = R.id.et_fp;
                            TextInputEditText textInputEditText5 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_fp);
                            if (textInputEditText5 != null) {
                                i = R.id.qr_code_fields;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.qr_code_fields);
                                if (linearLayout != null) {
                                    i = R.id.qr_info;
                                    NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, R.id.qr_info);
                                    if (nestedScrollView != null) {
                                        i = R.id.til_check_sum;
                                        TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_check_sum);
                                        if (textInputLayout != null) {
                                            i = R.id.til_date_time;
                                            TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_date_time);
                                            if (textInputLayout2 != null) {
                                                i = R.id.til_fd;
                                                TextInputLayout textInputLayout3 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_fd);
                                                if (textInputLayout3 != null) {
                                                    i = R.id.til_fn;
                                                    TextInputLayout textInputLayout4 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_fn);
                                                    if (textInputLayout4 != null) {
                                                        i = R.id.til_fp;
                                                        TextInputLayout textInputLayout5 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_fp);
                                                        if (textInputLayout5 != null) {
                                                            i = R.id.toolbar;
                                                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.toolbar);
                                                            if (viewFindChildViewById != null) {
                                                                LayoutToolbarBackIconBinding layoutToolbarBackIconBindingBind = LayoutToolbarBackIconBinding.bind(viewFindChildViewById);
                                                                i = R.id.tv_helper;
                                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_helper);
                                                                if (appCompatTextView2 != null) {
                                                                    i = R.id.tv_hint_date;
                                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_hint_date);
                                                                    if (appCompatTextView3 != null) {
                                                                        i = R.id.tv_hint_fd;
                                                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_hint_fd);
                                                                        if (appCompatTextView4 != null) {
                                                                            i = R.id.tv_hint_fn;
                                                                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_hint_fn);
                                                                            if (appCompatTextView5 != null) {
                                                                                i = R.id.tv_hint_fp;
                                                                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_hint_fp);
                                                                                if (appCompatTextView6 != null) {
                                                                                    i = R.id.tv_hint_sum;
                                                                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_hint_sum);
                                                                                    if (appCompatTextView7 != null) {
                                                                                        i = R.id.tv_title;
                                                                                        AppCompatTextView appCompatTextView8 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                                                        if (appCompatTextView8 != null) {
                                                                                            return new FragmentQrHandBinding((ConstraintLayout) view, appCompatTextView, textInputEditText, textInputEditText2, textInputEditText3, textInputEditText4, textInputEditText5, linearLayout, nestedScrollView, textInputLayout, textInputLayout2, textInputLayout3, textInputLayout4, textInputLayout5, layoutToolbarBackIconBindingBind, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8);
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
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentQrHandBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_qr_hand, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentQrHandBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
