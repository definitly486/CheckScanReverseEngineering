package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class CardNotIssuedLayoutBinding implements ViewBinding {
    public final Button btnGoToBanks;
    public final ImageView ivDialogLogo;
    private final ConstraintLayout rootView;
    public final TextView tvDialogDescription;
    public final TextView tvDialogTitle;

    private CardNotIssuedLayoutBinding(ConstraintLayout constraintLayout, Button button, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnGoToBanks = button;
        this.ivDialogLogo = imageView;
        this.tvDialogDescription = textView;
        this.tvDialogTitle = textView2;
    }

    public static CardNotIssuedLayoutBinding bind(View view) {
        int i = R.id.btn_go_to_banks;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_go_to_banks);
        if (button != null) {
            i = R.id.iv_dialog_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_dialog_logo);
            if (imageView != null) {
                i = R.id.tv_dialog_description;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_dialog_description);
                if (textView != null) {
                    i = R.id.tv_dialog_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_dialog_title);
                    if (textView2 != null) {
                        return new CardNotIssuedLayoutBinding((ConstraintLayout) view, button, imageView, textView, textView2);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static CardNotIssuedLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.card_not_issued_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static CardNotIssuedLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
