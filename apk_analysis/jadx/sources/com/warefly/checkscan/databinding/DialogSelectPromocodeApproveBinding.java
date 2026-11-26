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
public final class DialogSelectPromocodeApproveBinding implements ViewBinding {
    public final TextView btnPrimary;
    public final TextView btnSecondary;
    public final ImageView ivIndicator;
    public final ImageView ivWarning;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private DialogSelectPromocodeApproveBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ImageView imageView, ImageView imageView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.btnPrimary = textView;
        this.btnSecondary = textView2;
        this.ivIndicator = imageView;
        this.ivWarning = imageView2;
        this.tvDescription = textView3;
        this.tvTitle = textView4;
    }

    public static DialogSelectPromocodeApproveBinding bind(View view) {
        int i = R.id.btn_primary;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_primary);
        if (textView != null) {
            i = R.id.btn_secondary;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_secondary);
            if (textView2 != null) {
                i = R.id.iv_indicator;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_indicator);
                if (imageView != null) {
                    i = R.id.iv_warning;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_warning);
                    if (imageView2 != null) {
                        i = R.id.tv_description;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                        if (textView3 != null) {
                            i = R.id.tv_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView4 != null) {
                                return new DialogSelectPromocodeApproveBinding((ConstraintLayout) view, textView, textView2, imageView, imageView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogSelectPromocodeApproveBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_select_promocode_approve, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogSelectPromocodeApproveBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
