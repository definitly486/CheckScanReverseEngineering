package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class BannerLayoutBinding implements ViewBinding {
    public final ImageView btnCloseDear;
    public final TextView btnGoToFav;
    public final ConstraintLayout layoutDearUser;
    private final ConstraintLayout rootView;
    public final TextView tvDearUser;
    public final TextView tvYouAdded;

    private BannerLayoutBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, ConstraintLayout constraintLayout2, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnCloseDear = imageView;
        this.btnGoToFav = textView;
        this.layoutDearUser = constraintLayout2;
        this.tvDearUser = textView2;
        this.tvYouAdded = textView3;
    }

    public static BannerLayoutBinding bind(View view) {
        int i = R.id.btn_close_dear;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close_dear);
        if (imageView != null) {
            i = R.id.btn_go_to_fav;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_go_to_fav);
            if (textView != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                i = R.id.tv_dear_user;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_dear_user);
                if (textView2 != null) {
                    i = R.id.tv_you_added;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_you_added);
                    if (textView3 != null) {
                        return new BannerLayoutBinding(constraintLayout, imageView, textView, constraintLayout, textView2, textView3);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static BannerLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.banner_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static BannerLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
