package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemBonusPointsBinding implements ViewBinding {
    public final LinearLayout btnAction;
    public final ImageView ivBadge;
    public final ImageView ivButtonCoin;
    public final ImageView ivImage;
    public final MaterialCardView mcCard;
    private final ConstraintLayout rootView;
    public final TextView tvButtonLeft;
    public final TextView tvButtonRight;
    public final TextView tvTimer;
    public final TextView tvTitle;

    private ItemBonusPointsBinding(ConstraintLayout constraintLayout, LinearLayout linearLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, MaterialCardView materialCardView, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.btnAction = linearLayout;
        this.ivBadge = imageView;
        this.ivButtonCoin = imageView2;
        this.ivImage = imageView3;
        this.mcCard = materialCardView;
        this.tvButtonLeft = textView;
        this.tvButtonRight = textView2;
        this.tvTimer = textView3;
        this.tvTitle = textView4;
    }

    public static ItemBonusPointsBinding bind(View view) {
        int i = R.id.btn_action;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (linearLayout != null) {
            i = R.id.iv_badge;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_badge);
            if (imageView != null) {
                i = R.id.iv_button_coin;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_button_coin);
                if (imageView2 != null) {
                    i = R.id.iv_image;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_image);
                    if (imageView3 != null) {
                        i = R.id.mc_card;
                        MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.mc_card);
                        if (materialCardView != null) {
                            i = R.id.tv_button_left;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_button_left);
                            if (textView != null) {
                                i = R.id.tv_button_right;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_button_right);
                                if (textView2 != null) {
                                    i = R.id.tv_timer;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_timer);
                                    if (textView3 != null) {
                                        i = R.id.tv_title;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                        if (textView4 != null) {
                                            return new ItemBonusPointsBinding((ConstraintLayout) view, linearLayout, imageView, imageView2, imageView3, materialCardView, textView, textView2, textView3, textView4);
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

    public static ItemBonusPointsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_bonus_points, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemBonusPointsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
