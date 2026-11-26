package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemSpecialHorizontalVersionOneBinding implements ViewBinding {
    public final ImageView ivPicture;
    private final MaterialCardView rootView;
    public final AppCompatTextView tvOfd;

    private ItemSpecialHorizontalVersionOneBinding(MaterialCardView materialCardView, ImageView imageView, AppCompatTextView appCompatTextView) {
        this.rootView = materialCardView;
        this.ivPicture = imageView;
        this.tvOfd = appCompatTextView;
    }

    public static ItemSpecialHorizontalVersionOneBinding bind(View view) {
        int i = R.id.iv_picture;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_picture);
        if (imageView != null) {
            i = R.id.tv_ofd;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_ofd);
            if (appCompatTextView != null) {
                return new ItemSpecialHorizontalVersionOneBinding((MaterialCardView) view, imageView, appCompatTextView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemSpecialHorizontalVersionOneBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_special_horizontal_version_one, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemSpecialHorizontalVersionOneBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
