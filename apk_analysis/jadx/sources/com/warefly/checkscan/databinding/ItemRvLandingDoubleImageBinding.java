package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.CheckBox;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvLandingDoubleImageBinding implements ViewBinding {
    public final CheckBox cbImage;
    public final CheckBox cbImageSecond;
    public final ShapeableImageView image;
    public final ShapeableImageView imageSecond;
    public final FrameLayout placeholderFirst;
    public final FrameLayout placeholderSecond;
    private final LinearLayout rootView;

    private ItemRvLandingDoubleImageBinding(LinearLayout linearLayout, CheckBox checkBox, CheckBox checkBox2, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.rootView = linearLayout;
        this.cbImage = checkBox;
        this.cbImageSecond = checkBox2;
        this.image = shapeableImageView;
        this.imageSecond = shapeableImageView2;
        this.placeholderFirst = frameLayout;
        this.placeholderSecond = frameLayout2;
    }

    public static ItemRvLandingDoubleImageBinding bind(View view) {
        int i = R.id.cb_image;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.cb_image);
        if (checkBox != null) {
            i = R.id.cb_image_second;
            CheckBox checkBox2 = (CheckBox) ViewBindings.findChildViewById(view, R.id.cb_image_second);
            if (checkBox2 != null) {
                i = R.id.image;
                ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, R.id.image);
                if (shapeableImageView != null) {
                    i = R.id.image_second;
                    ShapeableImageView shapeableImageView2 = (ShapeableImageView) ViewBindings.findChildViewById(view, R.id.image_second);
                    if (shapeableImageView2 != null) {
                        i = R.id.placeholder_first;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.placeholder_first);
                        if (frameLayout != null) {
                            i = R.id.placeholder_second;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.placeholder_second);
                            if (frameLayout2 != null) {
                                return new ItemRvLandingDoubleImageBinding((LinearLayout) view, checkBox, checkBox2, shapeableImageView, shapeableImageView2, frameLayout, frameLayout2);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvLandingDoubleImageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_landing_double_image, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvLandingDoubleImageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
