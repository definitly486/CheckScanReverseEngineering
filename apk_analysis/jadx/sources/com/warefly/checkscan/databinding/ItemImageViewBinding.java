package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemImageViewBinding implements ViewBinding {
    private final ImageView rootView;

    private ItemImageViewBinding(ImageView imageView) {
        this.rootView = imageView;
    }

    public static ItemImageViewBinding bind(View view) {
        if (view != null) {
            return new ItemImageViewBinding((ImageView) view);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemImageViewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_image_view, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ImageView getRoot() {
        return this.rootView;
    }

    public static ItemImageViewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
