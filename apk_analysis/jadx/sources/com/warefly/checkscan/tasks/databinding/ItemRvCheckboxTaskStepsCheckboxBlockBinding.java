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
public final class ItemRvCheckboxTaskStepsCheckboxBlockBinding implements ViewBinding {
    public final LoadingButton btnAction;
    public final ImageView ivTick;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;
    public final LinearLayout stepContainer;
    public final TextView tvDecription;
    public final TextView tvTitle;

    private ItemRvCheckboxTaskStepsCheckboxBlockBinding(ConstraintLayout constraintLayout, LoadingButton loadingButton, ImageView imageView, RecyclerView recyclerView, LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnAction = loadingButton;
        this.ivTick = imageView;
        this.rvContent = recyclerView;
        this.stepContainer = linearLayout;
        this.tvDecription = textView;
        this.tvTitle = textView2;
    }

    public static ItemRvCheckboxTaskStepsCheckboxBlockBinding bind(View view) {
        int i = R.id.btn_action;
        LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (loadingButton != null) {
            i = R.id.iv_tick;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_tick);
            if (imageView != null) {
                i = R.id.rv_content;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                if (recyclerView != null) {
                    i = R.id.step_container;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.step_container);
                    if (linearLayout != null) {
                        i = R.id.tv_decription;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_decription);
                        if (textView != null) {
                            i = R.id.tv_title;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView2 != null) {
                                return new ItemRvCheckboxTaskStepsCheckboxBlockBinding((ConstraintLayout) view, loadingButton, imageView, recyclerView, linearLayout, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvCheckboxTaskStepsCheckboxBlockBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_checkbox_task_steps_checkbox_block, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvCheckboxTaskStepsCheckboxBlockBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
