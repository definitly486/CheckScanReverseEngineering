package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemPollBanerBinding implements ViewBinding {
    public final ImageView btnClose;
    public final Button btnGoPoll;
    public final Guideline guideline;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private ItemPollBanerBinding(ConstraintLayout constraintLayout, ImageView imageView, Button button, Guideline guideline, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.btnGoPoll = button;
        this.guideline = guideline;
        this.tvDescription = textView;
        this.tvTitle = textView2;
    }

    public static ItemPollBanerBinding bind(View view) {
        int i = R.id.btn_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageView != null) {
            i = R.id.btn_go_poll;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_go_poll);
            if (button != null) {
                i = R.id.guideline;
                Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline);
                if (guideline != null) {
                    i = R.id.tv_description;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                    if (textView != null) {
                        i = R.id.tv_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView2 != null) {
                            return new ItemPollBanerBinding((ConstraintLayout) view, imageView, button, guideline, textView, textView2);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemPollBanerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_poll_baner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemPollBanerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
