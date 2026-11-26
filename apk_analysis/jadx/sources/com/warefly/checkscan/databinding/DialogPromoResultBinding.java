package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogPromoResultBinding implements ViewBinding {
    public final TextView btnAction;
    public final TextView btnChange;
    public final TextView btnSecondaryAction;
    public final Group groupCheckFields;
    public final ImageView ivIcon;
    private final ConstraintLayout rootView;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private DialogPromoResultBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, Group group, ImageView imageView, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.btnAction = textView;
        this.btnChange = textView2;
        this.btnSecondaryAction = textView3;
        this.groupCheckFields = group;
        this.ivIcon = imageView;
        this.tvSubtitle = textView4;
        this.tvTitle = textView5;
    }

    public static DialogPromoResultBinding bind(View view) {
        int i = R.id.btn_action;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (textView != null) {
            i = R.id.btn_change;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_change);
            if (textView2 != null) {
                i = R.id.btn_secondary_action;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_secondary_action);
                if (textView3 != null) {
                    i = R.id.group_check_fields;
                    Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_check_fields);
                    if (group != null) {
                        i = R.id.iv_icon;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
                        if (imageView != null) {
                            i = R.id.tv_subtitle;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                            if (textView4 != null) {
                                i = R.id.tv_title;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView5 != null) {
                                    return new DialogPromoResultBinding((ConstraintLayout) view, textView, textView2, textView3, group, imageView, textView4, textView5);
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

    public static DialogPromoResultBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_promo_result, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogPromoResultBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
