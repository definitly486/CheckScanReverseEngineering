package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentReplenismentCardBinding implements ViewBinding {
    public final ImageView btnBack;
    public final TextView btnReplenishmentCard;
    public final Guideline guideline;
    public final ImageView ivCard;
    public final ConstraintLayout layoutCard;
    private final ConstraintLayout rootView;
    public final TextInputLayout tilCards;
    public final TextInputLayout tilSum;
    public final TextView tvBalance;
    public final TextView tvCardHint;
    public final TextView tvTitle;

    private FragmentReplenismentCardBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, Guideline guideline, ImageView imageView2, ConstraintLayout constraintLayout2, TextInputLayout textInputLayout, TextInputLayout textInputLayout2, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.btnBack = imageView;
        this.btnReplenishmentCard = textView;
        this.guideline = guideline;
        this.ivCard = imageView2;
        this.layoutCard = constraintLayout2;
        this.tilCards = textInputLayout;
        this.tilSum = textInputLayout2;
        this.tvBalance = textView2;
        this.tvCardHint = textView3;
        this.tvTitle = textView4;
    }

    public static FragmentReplenismentCardBinding bind(View view) {
        int i = R.id.btn_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageView != null) {
            i = R.id.btn_replenishment_card;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_replenishment_card);
            if (textView != null) {
                i = R.id.guideline;
                Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline);
                if (guideline != null) {
                    i = R.id.iv_card;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_card);
                    if (imageView2 != null) {
                        i = R.id.layout_card;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layout_card);
                        if (constraintLayout != null) {
                            i = R.id.til_cards;
                            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_cards);
                            if (textInputLayout != null) {
                                i = R.id.til_sum;
                                TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_sum);
                                if (textInputLayout2 != null) {
                                    i = R.id.tv_balance;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_balance);
                                    if (textView2 != null) {
                                        i = R.id.tv_card_hint;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_card_hint);
                                        if (textView3 != null) {
                                            i = R.id.tv_title;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                            if (textView4 != null) {
                                                return new FragmentReplenismentCardBinding((ConstraintLayout) view, imageView, textView, guideline, imageView2, constraintLayout, textInputLayout, textInputLayout2, textView2, textView3, textView4);
                                            }
                                        }
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

    public static FragmentReplenismentCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_replenisment_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentReplenismentCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
