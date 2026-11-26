package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvCheckboxTaskStepsButtonBlockBinding implements ViewBinding {
    public final LoadingButton btnAction;
    public final ImageView ivTick;
    private final ConstraintLayout rootView;
    public final LinearLayout stepContainer;
    public final TextView tvTitle;

    private ItemRvCheckboxTaskStepsButtonBlockBinding(ConstraintLayout constraintLayout, LoadingButton loadingButton, ImageView imageView, LinearLayout linearLayout, TextView textView) {
        this.rootView = constraintLayout;
        this.btnAction = loadingButton;
        this.ivTick = imageView;
        this.stepContainer = linearLayout;
        this.tvTitle = textView;
    }

    public static ItemRvCheckboxTaskStepsButtonBlockBinding bind(View view) {
        int i = R.id.btn_action;
        LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (loadingButton != null) {
            i = R.id.iv_tick;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_tick);
            if (imageView != null) {
                i = R.id.step_container;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.step_container);
                if (linearLayout != null) {
                    i = R.id.tv_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView != null) {
                        return new ItemRvCheckboxTaskStepsButtonBlockBinding((ConstraintLayout) view, loadingButton, imageView, linearLayout, textView);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvCheckboxTaskStepsButtonBlockBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_checkbox_task_steps_button_block, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvCheckboxTaskStepsButtonBlockBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
