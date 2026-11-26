package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvBalanceCardPendingBinding implements ViewBinding {
    public final AppCompatTextView btnAboutCash;
    public final ImageButton btnControlCardAction;
    public final ImageView ivLogo;
    public final ConstraintLayout layoutHeaderCard;
    private final ConstraintLayout rootView;
    public final AppCompatTextView tvControlCard;
    public final View viewBackground;

    private ItemRvBalanceCardPendingBinding(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, ImageButton imageButton, ImageView imageView, ConstraintLayout constraintLayout2, AppCompatTextView appCompatTextView2, View view) {
        this.rootView = constraintLayout;
        this.btnAboutCash = appCompatTextView;
        this.btnControlCardAction = imageButton;
        this.ivLogo = imageView;
        this.layoutHeaderCard = constraintLayout2;
        this.tvControlCard = appCompatTextView2;
        this.viewBackground = view;
    }

    public static ItemRvBalanceCardPendingBinding bind(View view) {
        int i = R.id.btn_about_cash;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_about_cash);
        if (appCompatTextView != null) {
            i = R.id.btn_control_card_action;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_control_card_action);
            if (imageButton != null) {
                i = R.id.iv_logo;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                if (imageView != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    i = R.id.tv_control_card;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_control_card);
                    if (appCompatTextView2 != null) {
                        i = R.id.view_background;
                        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_background);
                        if (viewFindChildViewById != null) {
                            return new ItemRvBalanceCardPendingBinding(constraintLayout, appCompatTextView, imageButton, imageView, constraintLayout, appCompatTextView2, viewFindChildViewById);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvBalanceCardPendingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_card_pending, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBalanceCardPendingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
