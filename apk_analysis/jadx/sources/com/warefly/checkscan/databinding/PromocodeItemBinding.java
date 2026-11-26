package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class PromocodeItemBinding implements ViewBinding {
    public final ImageView btnFave;
    public final View divider;
    public final Barrier iconBarrier;
    public final ImageView ivIcon;
    private final ConstraintLayout rootView;
    public final TextView tvBadge;
    public final TextView tvSale;
    public final TextView tvSaleSubtitle;
    public final TextView tvSubtitle;
    public final TextView tvTitle;
    public final View viewIconBackground;

    private PromocodeItemBinding(ConstraintLayout constraintLayout, ImageView imageView, View view, Barrier barrier, ImageView imageView2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, View view2) {
        this.rootView = constraintLayout;
        this.btnFave = imageView;
        this.divider = view;
        this.iconBarrier = barrier;
        this.ivIcon = imageView2;
        this.tvBadge = textView;
        this.tvSale = textView2;
        this.tvSaleSubtitle = textView3;
        this.tvSubtitle = textView4;
        this.tvTitle = textView5;
        this.viewIconBackground = view2;
    }

    public static PromocodeItemBinding bind(View view) {
        int i = R.id.btn_fave;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_fave);
        if (imageView != null) {
            i = R.id.divider;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
            if (viewFindChildViewById != null) {
                i = R.id.icon_barrier;
                Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.icon_barrier);
                if (barrier != null) {
                    i = R.id.iv_icon;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
                    if (imageView2 != null) {
                        i = R.id.tv_badge;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_badge);
                        if (textView != null) {
                            i = R.id.tv_sale;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sale);
                            if (textView2 != null) {
                                i = R.id.tv_sale_subtitle;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sale_subtitle);
                                if (textView3 != null) {
                                    i = R.id.tv_subtitle;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                                    if (textView4 != null) {
                                        i = R.id.tv_title;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                        if (textView5 != null) {
                                            i = R.id.view_icon_background;
                                            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_icon_background);
                                            if (viewFindChildViewById2 != null) {
                                                return new PromocodeItemBinding((ConstraintLayout) view, imageView, viewFindChildViewById, barrier, imageView2, textView, textView2, textView3, textView4, textView5, viewFindChildViewById2);
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

    public static PromocodeItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.promocode_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static PromocodeItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
