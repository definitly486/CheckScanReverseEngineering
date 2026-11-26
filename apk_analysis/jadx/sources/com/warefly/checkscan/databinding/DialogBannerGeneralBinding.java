package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutAdsBadgeBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogBannerGeneralBinding implements ViewBinding {
    public final Button btnMain;
    public final TextView btnSub;
    public final ImageView image;
    public final LayoutAdsBadgeBinding incldAdsBadge;
    public final LinearLayout layoutRoot;
    private final LinearLayout rootView;
    public final TextView tvDateTime;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private DialogBannerGeneralBinding(LinearLayout linearLayout, Button button, TextView textView, ImageView imageView, LayoutAdsBadgeBinding layoutAdsBadgeBinding, LinearLayout linearLayout2, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.btnMain = button;
        this.btnSub = textView;
        this.image = imageView;
        this.incldAdsBadge = layoutAdsBadgeBinding;
        this.layoutRoot = linearLayout2;
        this.tvDateTime = textView2;
        this.tvSubtitle = textView3;
        this.tvTitle = textView4;
    }

    public static DialogBannerGeneralBinding bind(View view) {
        int i = R.id.btn_main;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_main);
        if (button != null) {
            i = R.id.btn_sub;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_sub);
            if (textView != null) {
                i = R.id.image;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image);
                if (imageView != null) {
                    i = R.id.incld_ads_badge;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_ads_badge);
                    if (viewFindChildViewById != null) {
                        LayoutAdsBadgeBinding layoutAdsBadgeBindingBind = LayoutAdsBadgeBinding.bind(viewFindChildViewById);
                        LinearLayout linearLayout = (LinearLayout) view;
                        i = R.id.tv_date_time;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_date_time);
                        if (textView2 != null) {
                            i = R.id.tv_subtitle;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                            if (textView3 != null) {
                                i = R.id.tv_title;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView4 != null) {
                                    return new DialogBannerGeneralBinding(linearLayout, button, textView, imageView, layoutAdsBadgeBindingBind, linearLayout, textView2, textView3, textView4);
                                }
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogBannerGeneralBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_banner_general, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogBannerGeneralBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
