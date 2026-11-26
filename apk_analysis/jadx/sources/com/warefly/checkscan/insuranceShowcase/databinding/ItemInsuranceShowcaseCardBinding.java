package com.warefly.checkscan.insuranceShowcase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemInsuranceShowcaseCardBinding implements ViewBinding {
    public final TextView btnAction;
    public final ConstraintLayout clLogo;
    public final ImageView ivBadge;
    public final ImageView ivLogo;
    public final MaterialCardView mcContainer;
    private final MaterialCardView rootView;
    public final TextView tvDeadline;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private ItemInsuranceShowcaseCardBinding(MaterialCardView materialCardView, TextView textView, ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, MaterialCardView materialCardView2, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = materialCardView;
        this.btnAction = textView;
        this.clLogo = constraintLayout;
        this.ivBadge = imageView;
        this.ivLogo = imageView2;
        this.mcContainer = materialCardView2;
        this.tvDeadline = textView2;
        this.tvSubtitle = textView3;
        this.tvTitle = textView4;
    }

    public static ItemInsuranceShowcaseCardBinding bind(View view) {
        int i = R.id.btn_action;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (textView != null) {
            i = R.id.cl_logo;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.cl_logo);
            if (constraintLayout != null) {
                i = R.id.iv_badge;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_badge);
                if (imageView != null) {
                    i = R.id.iv_logo;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                    if (imageView2 != null) {
                        MaterialCardView materialCardView = (MaterialCardView) view;
                        i = R.id.tv_deadline;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_deadline);
                        if (textView2 != null) {
                            i = R.id.tv_subtitle;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                            if (textView3 != null) {
                                i = R.id.tv_title;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView4 != null) {
                                    return new ItemInsuranceShowcaseCardBinding(materialCardView, textView, constraintLayout, imageView, imageView2, materialCardView, textView2, textView3, textView4);
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

    public static ItemInsuranceShowcaseCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_insurance_showcase_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemInsuranceShowcaseCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
