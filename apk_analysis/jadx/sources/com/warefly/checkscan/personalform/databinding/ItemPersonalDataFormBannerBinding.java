package com.warefly.checkscan.personalform.databinding;

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
public final class ItemPersonalDataFormBannerBinding implements ViewBinding {
    public final ImageView ivIcon;
    public final MaterialCardView mcvBadge;
    private final MaterialCardView rootView;
    public final TextView tvBadgeText;
    public final TextView tvBannerText;

    private ItemPersonalDataFormBannerBinding(MaterialCardView materialCardView, ImageView imageView, MaterialCardView materialCardView2, TextView textView, TextView textView2) {
        this.rootView = materialCardView;
        this.ivIcon = imageView;
        this.mcvBadge = materialCardView2;
        this.tvBadgeText = textView;
        this.tvBannerText = textView2;
    }

    public static ItemPersonalDataFormBannerBinding bind(View view) {
        int i = R.id.iv_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
        if (imageView != null) {
            i = R.id.mcv_badge;
            MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.mcv_badge);
            if (materialCardView != null) {
                i = R.id.tv_badge_text;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_badge_text);
                if (textView != null) {
                    i = R.id.tv_banner_text;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_banner_text);
                    if (textView2 != null) {
                        return new ItemPersonalDataFormBannerBinding((MaterialCardView) view, imageView, materialCardView, textView, textView2);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemPersonalDataFormBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_personal_data_form_banner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemPersonalDataFormBannerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
