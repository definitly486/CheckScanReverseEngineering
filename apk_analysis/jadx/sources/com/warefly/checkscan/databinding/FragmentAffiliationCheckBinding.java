package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentAffiliationCheckBinding implements ViewBinding {
    public final TextView btnCheck;
    public final ImageView btnClearInput;
    public final TextView btnCopyPaste;
    public final TextInputEditText etLink;
    public final ProgressBar pbLinkCheckInProgress;
    private final ConstraintLayout rootView;
    public final TextInputLayout tilLink;
    public final TextView tvSubtitle;
    public final TextView tvTitle;
    public final LayoutTextToolbarBinding viewToolbar;

    private FragmentAffiliationCheckBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2, TextInputEditText textInputEditText, ProgressBar progressBar, TextInputLayout textInputLayout, TextView textView3, TextView textView4, LayoutTextToolbarBinding layoutTextToolbarBinding) {
        this.rootView = constraintLayout;
        this.btnCheck = textView;
        this.btnClearInput = imageView;
        this.btnCopyPaste = textView2;
        this.etLink = textInputEditText;
        this.pbLinkCheckInProgress = progressBar;
        this.tilLink = textInputLayout;
        this.tvSubtitle = textView3;
        this.tvTitle = textView4;
        this.viewToolbar = layoutTextToolbarBinding;
    }

    public static FragmentAffiliationCheckBinding bind(View view) {
        int i = R.id.btn_check;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_check);
        if (textView != null) {
            i = R.id.btn_clear_input;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_clear_input);
            if (imageView != null) {
                i = R.id.btn_copy_paste;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_copy_paste);
                if (textView2 != null) {
                    i = R.id.et_link;
                    TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_link);
                    if (textInputEditText != null) {
                        i = R.id.pb_link_check_in_progress;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_link_check_in_progress);
                        if (progressBar != null) {
                            i = R.id.til_link;
                            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_link);
                            if (textInputLayout != null) {
                                i = R.id.tv_subtitle;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                                if (textView3 != null) {
                                    i = R.id.tv_title;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                    if (textView4 != null) {
                                        i = R.id.view_toolbar;
                                        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_toolbar);
                                        if (viewFindChildViewById != null) {
                                            return new FragmentAffiliationCheckBinding((ConstraintLayout) view, textView, imageView, textView2, textInputEditText, progressBar, textInputLayout, textView3, textView4, LayoutTextToolbarBinding.bind(viewFindChildViewById));
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

    public static FragmentAffiliationCheckBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_affiliation_check, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentAffiliationCheckBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
