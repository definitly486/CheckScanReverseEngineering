package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutPowercodeDescriptionBinding implements ViewBinding {
    public final Barrier barrier;
    public final ImageView ivLogo;
    private final ConstraintLayout rootView;
    public final ConstraintLayout timerContainer;
    public final TextView tvBottomTitle;
    public final TextView tvBottomValue;
    public final TextView tvPowercodeDescription;

    private LayoutPowercodeDescriptionBinding(ConstraintLayout constraintLayout, Barrier barrier, ImageView imageView, ConstraintLayout constraintLayout2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.barrier = barrier;
        this.ivLogo = imageView;
        this.timerContainer = constraintLayout2;
        this.tvBottomTitle = textView;
        this.tvBottomValue = textView2;
        this.tvPowercodeDescription = textView3;
    }

    public static LayoutPowercodeDescriptionBinding bind(View view) {
        int i = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i = R.id.iv_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
            if (imageView != null) {
                i = R.id.timer_container;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.timer_container);
                if (constraintLayout != null) {
                    i = R.id.tv_bottom_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_bottom_title);
                    if (textView != null) {
                        i = R.id.tv_bottom_value;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_bottom_value);
                        if (textView2 != null) {
                            i = R.id.tv_powercode_description;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_powercode_description);
                            if (textView3 != null) {
                                return new LayoutPowercodeDescriptionBinding((ConstraintLayout) view, barrier, imageView, constraintLayout, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutPowercodeDescriptionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_powercode_description, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutPowercodeDescriptionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
