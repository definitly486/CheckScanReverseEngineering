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
public final class DialogAffiliationInfoBinding implements ViewBinding {
    public final TextView btnClose;
    public final ImageView ivBanner;
    private final ConstraintLayout rootView;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private DialogAffiliationInfoBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnClose = textView;
        this.ivBanner = imageView;
        this.tvSubtitle = textView2;
        this.tvTitle = textView3;
    }

    public static DialogAffiliationInfoBinding bind(View view) {
        int i = R.id.btn_close;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (textView != null) {
            i = R.id.iv_banner;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
            if (imageView != null) {
                i = R.id.tv_subtitle;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                if (textView2 != null) {
                    i = R.id.tv_title;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView3 != null) {
                        return new DialogAffiliationInfoBinding((ConstraintLayout) view, textView, imageView, textView2, textView3);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogAffiliationInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_affiliation_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogAffiliationInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
