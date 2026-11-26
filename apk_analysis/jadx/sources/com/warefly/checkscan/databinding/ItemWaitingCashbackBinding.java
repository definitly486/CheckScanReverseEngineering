package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemWaitingCashbackBinding implements ViewBinding {
    public final ImageButton btnCloseDialog;
    public final TextView btnWait;
    public final ImageView ivWaitPlaceholder;
    private final ConstraintLayout rootView;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private ItemWaitingCashbackBinding(ConstraintLayout constraintLayout, ImageButton imageButton, TextView textView, ImageView imageView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnCloseDialog = imageButton;
        this.btnWait = textView;
        this.ivWaitPlaceholder = imageView;
        this.tvSubtitle = textView2;
        this.tvTitle = textView3;
    }

    public static ItemWaitingCashbackBinding bind(View view) {
        int i = R.id.btn_close_dialog;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_close_dialog);
        if (imageButton != null) {
            i = R.id.btn_wait;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_wait);
            if (textView != null) {
                i = R.id.iv_wait_placeholder;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_wait_placeholder);
                if (imageView != null) {
                    i = R.id.tv_subtitle;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                    if (textView2 != null) {
                        i = R.id.tv_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView3 != null) {
                            return new ItemWaitingCashbackBinding((ConstraintLayout) view, imageButton, textView, imageView, textView2, textView3);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemWaitingCashbackBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_waiting_cashback, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemWaitingCashbackBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
