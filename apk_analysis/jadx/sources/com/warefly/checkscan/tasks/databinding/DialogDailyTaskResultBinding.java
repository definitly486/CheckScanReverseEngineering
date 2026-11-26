package com.warefly.checkscan.tasks.databinding;

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
import com.warefly.checkscan.core.ui.databinding.ConfettiLayoutBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogDailyTaskResultBinding implements ViewBinding {
    public final TextView btnAction;
    public final TextView btnSecondaryAction;
    public final ConfettiLayoutBinding incldConfetti;
    public final ImageView ivImage;
    private final ConstraintLayout rootView;
    public final Space spaceBetweenButtons;
    public final Space spaceBottom;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private DialogDailyTaskResultBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ConfettiLayoutBinding confettiLayoutBinding, ImageView imageView, Space space, Space space2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.btnAction = textView;
        this.btnSecondaryAction = textView2;
        this.incldConfetti = confettiLayoutBinding;
        this.ivImage = imageView;
        this.spaceBetweenButtons = space;
        this.spaceBottom = space2;
        this.tvDescription = textView3;
        this.tvTitle = textView4;
    }

    public static DialogDailyTaskResultBinding bind(View view) {
        int i = R.id.btn_action;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (textView != null) {
            i = R.id.btn_secondary_action;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_secondary_action);
            if (textView2 != null) {
                i = R.id.incld_confetti;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_confetti);
                if (viewFindChildViewById != null) {
                    ConfettiLayoutBinding confettiLayoutBindingBind = ConfettiLayoutBinding.bind(viewFindChildViewById);
                    i = R.id.iv_image;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_image);
                    if (imageView != null) {
                        i = R.id.space_between_buttons;
                        Space space = (Space) ViewBindings.findChildViewById(view, R.id.space_between_buttons);
                        if (space != null) {
                            i = R.id.space_bottom;
                            Space space2 = (Space) ViewBindings.findChildViewById(view, R.id.space_bottom);
                            if (space2 != null) {
                                i = R.id.tv_description;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                                if (textView3 != null) {
                                    i = R.id.tv_title;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                    if (textView4 != null) {
                                        return new DialogDailyTaskResultBinding((ConstraintLayout) view, textView, textView2, confettiLayoutBindingBind, imageView, space, space2, textView3, textView4);
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

    public static DialogDailyTaskResultBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_daily_task_result, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogDailyTaskResultBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
