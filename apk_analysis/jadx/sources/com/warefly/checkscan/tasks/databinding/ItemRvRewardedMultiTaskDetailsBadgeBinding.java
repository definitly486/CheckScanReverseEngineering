package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvRewardedMultiTaskDetailsBadgeBinding implements ViewBinding {
    public final ImageView ivBadgeIcon;
    public final ImageView ivQuestion;
    private final ConstraintLayout rootView;

    private ItemRvRewardedMultiTaskDetailsBadgeBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2) {
        this.rootView = constraintLayout;
        this.ivBadgeIcon = imageView;
        this.ivQuestion = imageView2;
    }

    public static ItemRvRewardedMultiTaskDetailsBadgeBinding bind(View view) {
        int i = R.id.iv_badge_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_badge_icon);
        if (imageView != null) {
            i = R.id.iv_question;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_question);
            if (imageView2 != null) {
                return new ItemRvRewardedMultiTaskDetailsBadgeBinding((ConstraintLayout) view, imageView, imageView2);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvRewardedMultiTaskDetailsBadgeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_rewarded_multi_task_details_badge, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvRewardedMultiTaskDetailsBadgeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
