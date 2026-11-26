package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutCardClosedBinding implements ViewBinding {
    public final TextView btnCheckWhyClosed;
    public final ImageView ivCardClose;
    private final ConstraintLayout rootView;
    public final TextView tvCardCloseDescription;
    public final TextView tvCardCloseTitle;

    private LayoutCardClosedBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnCheckWhyClosed = textView;
        this.ivCardClose = imageView;
        this.tvCardCloseDescription = textView2;
        this.tvCardCloseTitle = textView3;
    }

    public static LayoutCardClosedBinding bind(View view) {
        int i = R.id.btn_check_why_closed;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_check_why_closed);
        if (textView != null) {
            i = R.id.iv_card_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_card_close);
            if (imageView != null) {
                i = R.id.tv_card_close_description;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_card_close_description);
                if (textView2 != null) {
                    i = R.id.tv_card_close_title;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_card_close_title);
                    if (textView3 != null) {
                        return new LayoutCardClosedBinding((ConstraintLayout) view, textView, imageView, textView2, textView3);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutCardClosedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_card_closed, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutCardClosedBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
