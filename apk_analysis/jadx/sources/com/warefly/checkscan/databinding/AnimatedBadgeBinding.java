package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class AnimatedBadgeBinding implements ViewBinding {
    public final ImageView menuItemBadge;
    private final View rootView;

    private AnimatedBadgeBinding(View view, ImageView imageView) {
        this.rootView = view;
        this.menuItemBadge = imageView;
    }

    public static AnimatedBadgeBinding bind(View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.menu_item_badge);
        if (imageView != null) {
            return new AnimatedBadgeBinding(view, imageView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.menu_item_badge)));
        return null;
    }

    public static AnimatedBadgeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        if (viewGroup != null) {
            layoutInflater.inflate(R.layout.animated_badge, viewGroup);
            return bind(viewGroup);
        }
        o2.d("parent");
        return null;
    }

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return this.rootView;
    }
}
