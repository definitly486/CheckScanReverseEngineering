package com.warefly.checkscan.profile.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutProfileGiftBadgeBinding implements ViewBinding {
    public final ImageView btnEdit;
    public final MaterialCardView mcvBadge;
    private final MaterialCardView rootView;
    public final TextView tvBadgeText;

    private LayoutProfileGiftBadgeBinding(MaterialCardView materialCardView, ImageView imageView, MaterialCardView materialCardView2, TextView textView) {
        this.rootView = materialCardView;
        this.btnEdit = imageView;
        this.mcvBadge = materialCardView2;
        this.tvBadgeText = textView;
    }

    public static LayoutProfileGiftBadgeBinding bind(View view) {
        int i = R.id.btn_edit;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_edit);
        if (imageView != null) {
            MaterialCardView materialCardView = (MaterialCardView) view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_badge_text);
            if (textView != null) {
                return new LayoutProfileGiftBadgeBinding(materialCardView, imageView, materialCardView, textView);
            }
            i = R.id.tv_badge_text;
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutProfileGiftBadgeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_profile_gift_badge, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static LayoutProfileGiftBadgeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
