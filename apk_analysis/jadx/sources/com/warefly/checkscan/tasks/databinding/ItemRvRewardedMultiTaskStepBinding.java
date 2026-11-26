package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvRewardedMultiTaskStepBinding implements ViewBinding {
    public final LoadingButton btnAction;
    public final LoadingButton btnClaim;
    public final ImageView ivTick;
    public final LinearLayout llButtons;
    private final ConstraintLayout rootView;
    public final RecyclerView rvBadges;
    public final ConstraintLayout stepContainer;
    public final TextView tvRewardSubtitle;
    public final TextView tvTitle;

    private ItemRvRewardedMultiTaskStepBinding(ConstraintLayout constraintLayout, LoadingButton loadingButton, LoadingButton loadingButton2, ImageView imageView, LinearLayout linearLayout, RecyclerView recyclerView, ConstraintLayout constraintLayout2, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnAction = loadingButton;
        this.btnClaim = loadingButton2;
        this.ivTick = imageView;
        this.llButtons = linearLayout;
        this.rvBadges = recyclerView;
        this.stepContainer = constraintLayout2;
        this.tvRewardSubtitle = textView;
        this.tvTitle = textView2;
    }

    public static ItemRvRewardedMultiTaskStepBinding bind(View view) {
        int i = R.id.btn_action;
        LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (loadingButton != null) {
            i = R.id.btn_claim;
            LoadingButton loadingButton2 = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_claim);
            if (loadingButton2 != null) {
                i = R.id.iv_tick;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_tick);
                if (imageView != null) {
                    i = R.id.ll_buttons;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_buttons);
                    if (linearLayout != null) {
                        i = R.id.rv_badges;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_badges);
                        if (recyclerView != null) {
                            i = R.id.step_container;
                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.step_container);
                            if (constraintLayout != null) {
                                i = R.id.tv_reward_subtitle;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_reward_subtitle);
                                if (textView != null) {
                                    i = R.id.tv_title;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                    if (textView2 != null) {
                                        return new ItemRvRewardedMultiTaskStepBinding((ConstraintLayout) view, loadingButton, loadingButton2, imageView, linearLayout, recyclerView, constraintLayout, textView, textView2);
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

    public static ItemRvRewardedMultiTaskStepBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_rewarded_multi_task_step, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvRewardedMultiTaskStepBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
