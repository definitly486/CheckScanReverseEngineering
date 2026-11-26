package com.warefly.checkscan.support.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemSupportChildImageBinding implements ViewBinding {
    public final ImageView ivImage;
    private final ConstraintLayout rootView;

    private ItemSupportChildImageBinding(ConstraintLayout constraintLayout, ImageView imageView) {
        this.rootView = constraintLayout;
        this.ivImage = imageView;
    }

    public static ItemSupportChildImageBinding bind(View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_image);
        if (imageView != null) {
            return new ItemSupportChildImageBinding((ConstraintLayout) view, imageView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.iv_image)));
        return null;
    }

    public static ItemSupportChildImageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_support_child_image, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemSupportChildImageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
