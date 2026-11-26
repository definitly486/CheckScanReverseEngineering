package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class RvFullscreenPhotoBinding implements ViewBinding {
    private final ImageView rootView;
    public final ImageView rvPhoto;

    private RvFullscreenPhotoBinding(ImageView imageView, ImageView imageView2) {
        this.rootView = imageView;
        this.rvPhoto = imageView2;
    }

    public static RvFullscreenPhotoBinding bind(View view) {
        if (view != null) {
            ImageView imageView = (ImageView) view;
            return new RvFullscreenPhotoBinding(imageView, imageView);
        }
        o2.d("rootView");
        return null;
    }

    public static RvFullscreenPhotoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.rv_fullscreen_photo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ImageView getRoot() {
        return this.rootView;
    }

    public static RvFullscreenPhotoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
