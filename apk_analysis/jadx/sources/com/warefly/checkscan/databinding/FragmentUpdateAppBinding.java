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
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentUpdateAppBinding implements ViewBinding {
    public final TextView btnFeedback;
    public final TextView btnUpdate;
    public final ImageView ivBubbles;
    public final ImageView ivHalo;
    public final ImageView ivLeaves;
    public final ImageView ivOuterCircle;
    public final ProgressBar pbLoading;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvNum;

    private FragmentUpdateAppBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ProgressBar progressBar, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.btnFeedback = textView;
        this.btnUpdate = textView2;
        this.ivBubbles = imageView;
        this.ivHalo = imageView2;
        this.ivLeaves = imageView3;
        this.ivOuterCircle = imageView4;
        this.pbLoading = progressBar;
        this.tvDescription = textView3;
        this.tvNum = textView4;
    }

    public static FragmentUpdateAppBinding bind(View view) {
        int i = R.id.btn_feedback;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_feedback);
        if (textView != null) {
            i = R.id.btn_update;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_update);
            if (textView2 != null) {
                i = R.id.iv_bubbles;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_bubbles);
                if (imageView != null) {
                    i = R.id.iv_halo;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_halo);
                    if (imageView2 != null) {
                        i = R.id.iv_leaves;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_leaves);
                        if (imageView3 != null) {
                            i = R.id.iv_outer_circle;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_outer_circle);
                            if (imageView4 != null) {
                                i = R.id.pb_loading;
                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_loading);
                                if (progressBar != null) {
                                    i = R.id.tv_description;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                                    if (textView3 != null) {
                                        i = R.id.tv_num;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_num);
                                        if (textView4 != null) {
                                            return new FragmentUpdateAppBinding((ConstraintLayout) view, textView, textView2, imageView, imageView2, imageView3, imageView4, progressBar, textView3, textView4);
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

    public static FragmentUpdateAppBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_update_app, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentUpdateAppBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
