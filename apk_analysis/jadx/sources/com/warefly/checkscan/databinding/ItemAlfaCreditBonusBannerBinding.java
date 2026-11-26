package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.Barrier;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemAlfaCreditBonusBannerBinding implements ViewBinding {
    public final Barrier barrier;
    public final TextView btnAction;
    public final TextView btnHide;
    public final ImageView image;
    private final CardView rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private ItemAlfaCreditBonusBannerBinding(CardView cardView, Barrier barrier, TextView textView, TextView textView2, ImageView imageView, TextView textView3, TextView textView4) {
        this.rootView = cardView;
        this.barrier = barrier;
        this.btnAction = textView;
        this.btnHide = textView2;
        this.image = imageView;
        this.tvDescription = textView3;
        this.tvTitle = textView4;
    }

    public static ItemAlfaCreditBonusBannerBinding bind(View view) {
        int i = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i = R.id.btn_action;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
            if (textView != null) {
                i = R.id.btn_hide;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_hide);
                if (textView2 != null) {
                    i = R.id.image;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image);
                    if (imageView != null) {
                        i = R.id.tv_description;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                        if (textView3 != null) {
                            i = R.id.tv_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView4 != null) {
                                return new ItemAlfaCreditBonusBannerBinding((CardView) view, barrier, textView, textView2, imageView, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemAlfaCreditBonusBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_alfa_credit_bonus_banner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CardView getRoot() {
        return this.rootView;
    }

    public static ItemAlfaCreditBonusBannerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
