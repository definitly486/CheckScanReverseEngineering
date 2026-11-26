package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.ConfettiLayoutBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogTaskSuccessBinding implements ViewBinding {
    public final TextView btnAbout;
    public final TextView btnOk;
    public final ConfettiLayoutBinding incldConfetti;
    public final ImageView ivIndicator;
    public final ImageView ivLogo;
    private final ConstraintLayout rootView;
    public final RecyclerView rvBadges;
    public final TextView tvDescription;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private DialogTaskSuccessBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ConfettiLayoutBinding confettiLayoutBinding, ImageView imageView, ImageView imageView2, RecyclerView recyclerView, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.btnAbout = textView;
        this.btnOk = textView2;
        this.incldConfetti = confettiLayoutBinding;
        this.ivIndicator = imageView;
        this.ivLogo = imageView2;
        this.rvBadges = recyclerView;
        this.tvDescription = textView3;
        this.tvSubtitle = textView4;
        this.tvTitle = textView5;
    }

    public static DialogTaskSuccessBinding bind(View view) {
        int i = R.id.btn_about;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_about);
        if (textView != null) {
            i = R.id.btn_ok;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_ok);
            if (textView2 != null) {
                i = R.id.incld_confetti;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_confetti);
                if (viewFindChildViewById != null) {
                    ConfettiLayoutBinding confettiLayoutBindingBind = ConfettiLayoutBinding.bind(viewFindChildViewById);
                    i = R.id.iv_indicator;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_indicator);
                    if (imageView != null) {
                        i = R.id.iv_logo;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                        if (imageView2 != null) {
                            i = R.id.rv_badges;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_badges);
                            if (recyclerView != null) {
                                i = R.id.tv_description;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                                if (textView3 != null) {
                                    i = R.id.tv_subtitle;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                                    if (textView4 != null) {
                                        i = R.id.tv_title;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                        if (textView5 != null) {
                                            return new DialogTaskSuccessBinding((ConstraintLayout) view, textView, textView2, confettiLayoutBindingBind, imageView, imageView2, recyclerView, textView3, textView4, textView5);
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

    public static DialogTaskSuccessBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_task_success, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogTaskSuccessBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
