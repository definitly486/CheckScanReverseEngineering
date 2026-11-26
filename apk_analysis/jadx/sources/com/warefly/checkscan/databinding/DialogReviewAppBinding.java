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
import com.warefly.checkscan.ui.rating.SmilerRatingBar;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogReviewAppBinding implements ViewBinding {
    public final TextView btnAction;
    public final TextView btnSendReview;
    public final TextInputEditText etComment;
    public final ImageView ivIndicator;
    private final ConstraintLayout rootView;
    public final SmilerRatingBar srb;
    public final TextInputLayout tilComment;
    public final TextView tvDescription;
    public final TextView tvSubDescription;
    public final TextView tvSubTitle;
    public final TextView tvTitle;

    private DialogReviewAppBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextInputEditText textInputEditText, ImageView imageView, SmilerRatingBar smilerRatingBar, TextInputLayout textInputLayout, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = constraintLayout;
        this.btnAction = textView;
        this.btnSendReview = textView2;
        this.etComment = textInputEditText;
        this.ivIndicator = imageView;
        this.srb = smilerRatingBar;
        this.tilComment = textInputLayout;
        this.tvDescription = textView3;
        this.tvSubDescription = textView4;
        this.tvSubTitle = textView5;
        this.tvTitle = textView6;
    }

    public static DialogReviewAppBinding bind(View view) {
        int i = R.id.btn_action;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (textView != null) {
            i = R.id.btn_send_review;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_send_review);
            if (textView2 != null) {
                i = R.id.et_comment;
                TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_comment);
                if (textInputEditText != null) {
                    i = R.id.iv_indicator;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_indicator);
                    if (imageView != null) {
                        i = R.id.srb;
                        SmilerRatingBar smilerRatingBar = (SmilerRatingBar) ViewBindings.findChildViewById(view, R.id.srb);
                        if (smilerRatingBar != null) {
                            i = R.id.til_comment;
                            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_comment);
                            if (textInputLayout != null) {
                                i = R.id.tv_description;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                                if (textView3 != null) {
                                    i = R.id.tv_sub_description;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sub_description);
                                    if (textView4 != null) {
                                        i = R.id.tv_sub_title;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sub_title);
                                        if (textView5 != null) {
                                            i = R.id.tv_title;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                            if (textView6 != null) {
                                                return new DialogReviewAppBinding((ConstraintLayout) view, textView, textView2, textInputEditText, imageView, smilerRatingBar, textInputLayout, textView3, textView4, textView5, textView6);
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

    public static DialogReviewAppBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_review_app, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogReviewAppBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
