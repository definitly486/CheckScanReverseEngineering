package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogAssignmentBinding implements ViewBinding {
    public final TextView btnAction;
    public final TextView btnSecondAction;
    public final ImageView ivIndicator;
    public final ImageView ivLogo;
    private final ConstraintLayout rootView;
    public final Space topSpacer;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private DialogAssignmentBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ImageView imageView, ImageView imageView2, Space space, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.btnAction = textView;
        this.btnSecondAction = textView2;
        this.ivIndicator = imageView;
        this.ivLogo = imageView2;
        this.topSpacer = space;
        this.tvDescription = textView3;
        this.tvTitle = textView4;
    }

    public static DialogAssignmentBinding bind(View view) {
        int i = R.id.btn_action;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (textView != null) {
            i = R.id.btn_second_action;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_second_action);
            if (textView2 != null) {
                i = R.id.iv_indicator;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_indicator);
                if (imageView != null) {
                    i = R.id.iv_logo;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                    if (imageView2 != null) {
                        i = R.id.top_spacer;
                        Space space = (Space) ViewBindings.findChildViewById(view, R.id.top_spacer);
                        if (space != null) {
                            i = R.id.tv_description;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                            if (textView3 != null) {
                                i = R.id.tv_title;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView4 != null) {
                                    return new DialogAssignmentBinding((ConstraintLayout) view, textView, textView2, imageView, imageView2, space, textView3, textView4);
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

    public static DialogAssignmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_assignment, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogAssignmentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
