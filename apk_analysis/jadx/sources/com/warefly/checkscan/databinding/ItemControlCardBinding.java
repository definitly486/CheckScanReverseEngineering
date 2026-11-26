package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemControlCardBinding implements ViewBinding {
    public final TextView btnAboutCash;
    public final ImageButton btnControlCardAction;
    public final ImageView ivLogo;
    public final ConstraintLayout layoutHeaderCard;
    private final CardView rootView;
    public final TextView tvControlCard;

    private ItemControlCardBinding(CardView cardView, TextView textView, ImageButton imageButton, ImageView imageView, ConstraintLayout constraintLayout, TextView textView2) {
        this.rootView = cardView;
        this.btnAboutCash = textView;
        this.btnControlCardAction = imageButton;
        this.ivLogo = imageView;
        this.layoutHeaderCard = constraintLayout;
        this.tvControlCard = textView2;
    }

    public static ItemControlCardBinding bind(View view) {
        int i = R.id.btn_about_cash;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_about_cash);
        if (textView != null) {
            i = R.id.btn_control_card_action;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_control_card_action);
            if (imageButton != null) {
                i = R.id.iv_logo;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                if (imageView != null) {
                    i = R.id.layout_header_card;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layout_header_card);
                    if (constraintLayout != null) {
                        i = R.id.tv_control_card;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_control_card);
                        if (textView2 != null) {
                            return new ItemControlCardBinding((CardView) view, textView, imageButton, imageView, constraintLayout, textView2);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemControlCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_control_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CardView getRoot() {
        return this.rootView;
    }

    public static ItemControlCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
