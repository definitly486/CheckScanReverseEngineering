package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogUserBankCardStatusBinding implements ViewBinding {
    public final TextView btnAction;
    public final ImageView btnClose;
    public final ImageView ivStatusPic;
    private final ConstraintLayout rootView;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private DialogUserBankCardStatusBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, ImageView imageView2, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnAction = textView;
        this.btnClose = imageView;
        this.ivStatusPic = imageView2;
        this.tvSubtitle = textView2;
        this.tvTitle = textView3;
    }

    public static DialogUserBankCardStatusBinding bind(View view) {
        int i = R.id.btn_action;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (textView != null) {
            i = R.id.btn_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
            if (imageView != null) {
                i = R.id.iv_status_pic;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_status_pic);
                if (imageView2 != null) {
                    i = R.id.tv_subtitle;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                    if (textView2 != null) {
                        i = R.id.tv_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView3 != null) {
                            return new DialogUserBankCardStatusBinding((ConstraintLayout) view, textView, imageView, imageView2, textView2, textView3);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogUserBankCardStatusBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_user_bank_card_status, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogUserBankCardStatusBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
