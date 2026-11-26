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
import com.warefly.checkscan.core.ui.databinding.LayoutAdsBadgeBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemNotificationCardBinding implements ViewBinding {
    public final TextView btnGo;
    public final LayoutAdsBadgeBinding incldAdsBadge;
    public final ImageView ivBanner;
    private final ConstraintLayout rootView;
    public final TextView tvNotifBody;
    public final TextView tvNotifDate;
    public final TextView tvNotifTitle;

    private ItemNotificationCardBinding(ConstraintLayout constraintLayout, TextView textView, LayoutAdsBadgeBinding layoutAdsBadgeBinding, ImageView imageView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.btnGo = textView;
        this.incldAdsBadge = layoutAdsBadgeBinding;
        this.ivBanner = imageView;
        this.tvNotifBody = textView2;
        this.tvNotifDate = textView3;
        this.tvNotifTitle = textView4;
    }

    public static ItemNotificationCardBinding bind(View view) {
        int i = R.id.btn_go;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_go);
        if (textView != null) {
            i = R.id.incld_ads_badge;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_ads_badge);
            if (viewFindChildViewById != null) {
                LayoutAdsBadgeBinding layoutAdsBadgeBindingBind = LayoutAdsBadgeBinding.bind(viewFindChildViewById);
                i = R.id.iv_banner;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
                if (imageView != null) {
                    i = R.id.tv_notif_body;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_notif_body);
                    if (textView2 != null) {
                        i = R.id.tv_notif_date;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_notif_date);
                        if (textView3 != null) {
                            i = R.id.tv_notif_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_notif_title);
                            if (textView4 != null) {
                                return new ItemNotificationCardBinding((ConstraintLayout) view, textView, layoutAdsBadgeBindingBind, imageView, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemNotificationCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_notification_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemNotificationCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
