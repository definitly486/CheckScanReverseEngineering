package com.warefly.checkscan.bonuses.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class ItemRvShopsPreviewRectangleBinding implements ViewBinding {
    public final ImageView btnFave;
    public final Guideline guide;
    public final ImageView ivLogo;
    public final ImageView ivPowerCode;
    public final Barrier ofdBarrier;
    private final ConstraintLayout rootView;
    public final AppCompatTextView tvOfd;
    public final TextView tvTitle;
    public final TextView tvValue;
    public final View viewDivider;

    private ItemRvShopsPreviewRectangleBinding(ConstraintLayout constraintLayout, ImageView imageView, Guideline guideline, ImageView imageView2, ImageView imageView3, Barrier barrier, AppCompatTextView appCompatTextView, TextView textView, TextView textView2, View view) {
        this.rootView = constraintLayout;
        this.btnFave = imageView;
        this.guide = guideline;
        this.ivLogo = imageView2;
        this.ivPowerCode = imageView3;
        this.ofdBarrier = barrier;
        this.tvOfd = appCompatTextView;
        this.tvTitle = textView;
        this.tvValue = textView2;
        this.viewDivider = view;
    }

    public static ItemRvShopsPreviewRectangleBinding bind(View view) {
        int i = R.id.btn_fave;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_fave);
        if (imageView != null) {
            i = R.id.guide;
            Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guide);
            if (guideline != null) {
                i = R.id.iv_logo;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                if (imageView2 != null) {
                    i = R.id.iv_power_code;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_power_code);
                    if (imageView3 != null) {
                        i = R.id.ofd_barrier;
                        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.ofd_barrier);
                        if (barrier != null) {
                            i = R.id.tv_ofd;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_ofd);
                            if (appCompatTextView != null) {
                                i = R.id.tv_title;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView != null) {
                                    i = R.id.tv_value;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_value);
                                    if (textView2 != null) {
                                        i = R.id.view_divider;
                                        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_divider);
                                        if (viewFindChildViewById != null) {
                                            return new ItemRvShopsPreviewRectangleBinding((ConstraintLayout) view, imageView, guideline, imageView2, imageView3, barrier, appCompatTextView, textView, textView2, viewFindChildViewById);
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

    public static ItemRvShopsPreviewRectangleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_shops_preview_rectangle, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvShopsPreviewRectangleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
