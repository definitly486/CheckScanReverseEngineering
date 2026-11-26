package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogFullScreenPhotoBinding implements ViewBinding {
    public final ViewPager photosViewPager;
    private final ConstraintLayout rootView;

    private DialogFullScreenPhotoBinding(ConstraintLayout constraintLayout, ViewPager viewPager) {
        this.rootView = constraintLayout;
        this.photosViewPager = viewPager;
    }

    public static DialogFullScreenPhotoBinding bind(View view) {
        ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.photos_view_pager);
        if (viewPager != null) {
            return new DialogFullScreenPhotoBinding((ConstraintLayout) view, viewPager);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.photos_view_pager)));
        return null;
    }

    public static DialogFullScreenPhotoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_full_screen_photo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogFullScreenPhotoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
