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
public final class ShopPlaceLayoutBinding implements ViewBinding {
    public final Barrier barrier;
    public final ImageView ivPlacePic;
    private final ConstraintLayout rootView;
    public final TextView tvChequeDatetime;
    public final TextView tvChequePlaceAddress;
    public final TextView tvChequePlaceName;

    private ShopPlaceLayoutBinding(ConstraintLayout constraintLayout, Barrier barrier, ImageView imageView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.barrier = barrier;
        this.ivPlacePic = imageView;
        this.tvChequeDatetime = textView;
        this.tvChequePlaceAddress = textView2;
        this.tvChequePlaceName = textView3;
    }

    public static ShopPlaceLayoutBinding bind(View view) {
        int i = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i = R.id.iv_place_pic;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_place_pic);
            if (imageView != null) {
                i = R.id.tv_cheque_datetime;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cheque_datetime);
                if (textView != null) {
                    i = R.id.tv_cheque_place_address;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cheque_place_address);
                    if (textView2 != null) {
                        i = R.id.tv_cheque_place_name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cheque_place_name);
                        if (textView3 != null) {
                            return new ShopPlaceLayoutBinding((ConstraintLayout) view, barrier, imageView, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ShopPlaceLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.shop_place_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ShopPlaceLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
