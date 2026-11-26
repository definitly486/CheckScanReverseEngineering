package com.warefly.checkscan.core.ui.databinding;

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
public final class DialogTextPopupBinding implements ViewBinding {
    public final ImageView ivCloseBtn;
    private final ConstraintLayout rootView;
    public final TextView tvTextContent;
    public final TextView tvTextTitle;

    private DialogTextPopupBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.ivCloseBtn = imageView;
        this.tvTextContent = textView;
        this.tvTextTitle = textView2;
    }

    public static DialogTextPopupBinding bind(View view) {
        int i = R.id.iv_close_btn;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close_btn);
        if (imageView != null) {
            i = R.id.tv_text_content;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_text_content);
            if (textView != null) {
                i = R.id.tv_text_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_text_title);
                if (textView2 != null) {
                    return new DialogTextPopupBinding((ConstraintLayout) view, imageView, textView, textView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogTextPopupBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_text_popup, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogTextPopupBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
