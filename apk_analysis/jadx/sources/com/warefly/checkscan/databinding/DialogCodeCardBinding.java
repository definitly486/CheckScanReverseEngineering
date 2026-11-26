package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogCodeCardBinding implements ViewBinding {
    public final CardView card;
    public final ImageView ivBadge;
    public final ImageView ivQrCode;
    private final ConstraintLayout rootView;
    public final TextView tvTitle;

    private DialogCodeCardBinding(ConstraintLayout constraintLayout, CardView cardView, ImageView imageView, ImageView imageView2, TextView textView) {
        this.rootView = constraintLayout;
        this.card = cardView;
        this.ivBadge = imageView;
        this.ivQrCode = imageView2;
        this.tvTitle = textView;
    }

    public static DialogCodeCardBinding bind(View view) {
        int i = R.id.card;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.card);
        if (cardView != null) {
            i = R.id.iv_badge;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_badge);
            if (imageView != null) {
                i = R.id.iv_qr_code;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_qr_code);
                if (imageView2 != null) {
                    i = R.id.tv_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView != null) {
                        return new DialogCodeCardBinding((ConstraintLayout) view, cardView, imageView, imageView2, textView);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogCodeCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_code_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogCodeCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
