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
public final class ItemWaitPlasticCardBinding implements ViewBinding {
    public final TextView btnAboutCash;
    public final ImageView ivLogo;
    public final ImageView ivMirLogo;
    public final ConstraintLayout layoutHeaderCard;
    private final CardView rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;
    public final View viewBottomHeader;

    private ItemWaitPlasticCardBinding(CardView cardView, TextView textView, ImageView imageView, ImageView imageView2, ConstraintLayout constraintLayout, TextView textView2, TextView textView3, View view) {
        this.rootView = cardView;
        this.btnAboutCash = textView;
        this.ivLogo = imageView;
        this.ivMirLogo = imageView2;
        this.layoutHeaderCard = constraintLayout;
        this.tvDescription = textView2;
        this.tvTitle = textView3;
        this.viewBottomHeader = view;
    }

    public static ItemWaitPlasticCardBinding bind(View view) {
        int i = R.id.btn_about_cash;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_about_cash);
        if (textView != null) {
            i = R.id.iv_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
            if (imageView != null) {
                i = R.id.iv_mir_logo;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_mir_logo);
                if (imageView2 != null) {
                    i = R.id.layout_header_card;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layout_header_card);
                    if (constraintLayout != null) {
                        i = R.id.tv_description;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                        if (textView2 != null) {
                            i = R.id.tv_title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView3 != null) {
                                i = R.id.view_bottom_header;
                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_bottom_header);
                                if (viewFindChildViewById != null) {
                                    return new ItemWaitPlasticCardBinding((CardView) view, textView, imageView, imageView2, constraintLayout, textView2, textView3, viewFindChildViewById);
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

    public static ItemWaitPlasticCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_wait_plastic_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CardView getRoot() {
        return this.rootView;
    }

    public static ItemWaitPlasticCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
