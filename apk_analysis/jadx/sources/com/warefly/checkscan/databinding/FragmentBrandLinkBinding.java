package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.design.resources.databinding.LayoutPreviewsLoadingBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentBrandLinkBinding implements ViewBinding {
    public final ImageView btnBack;
    public final LayoutBrandlinkNotAuthBinding incldBrandlinkNotAuth;
    public final ImageView ivNoImages;
    public final ProgressBar pbLoading;
    private final ConstraintLayout rootView;
    public final TextView tvBrandlinks;
    public final LayoutPreviewsLoadingBinding viewLoading;
    public final WebView wvBrandlink;

    private FragmentBrandLinkBinding(ConstraintLayout constraintLayout, ImageView imageView, LayoutBrandlinkNotAuthBinding layoutBrandlinkNotAuthBinding, ImageView imageView2, ProgressBar progressBar, TextView textView, LayoutPreviewsLoadingBinding layoutPreviewsLoadingBinding, WebView webView) {
        this.rootView = constraintLayout;
        this.btnBack = imageView;
        this.incldBrandlinkNotAuth = layoutBrandlinkNotAuthBinding;
        this.ivNoImages = imageView2;
        this.pbLoading = progressBar;
        this.tvBrandlinks = textView;
        this.viewLoading = layoutPreviewsLoadingBinding;
        this.wvBrandlink = webView;
    }

    public static FragmentBrandLinkBinding bind(View view) {
        int i = R.id.btn_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageView != null) {
            i = R.id.incld_brandlink_not_auth;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_brandlink_not_auth);
            if (viewFindChildViewById != null) {
                LayoutBrandlinkNotAuthBinding layoutBrandlinkNotAuthBindingBind = LayoutBrandlinkNotAuthBinding.bind(viewFindChildViewById);
                i = R.id.iv_no_images;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_no_images);
                if (imageView2 != null) {
                    i = R.id.pb_loading;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_loading);
                    if (progressBar != null) {
                        i = R.id.tv_brandlinks;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_brandlinks);
                        if (textView != null) {
                            i = R.id.view_loading;
                            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_loading);
                            if (viewFindChildViewById2 != null) {
                                LayoutPreviewsLoadingBinding layoutPreviewsLoadingBindingBind = LayoutPreviewsLoadingBinding.bind(viewFindChildViewById2);
                                i = R.id.wv_brandlink;
                                WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.wv_brandlink);
                                if (webView != null) {
                                    return new FragmentBrandLinkBinding((ConstraintLayout) view, imageView, layoutBrandlinkNotAuthBindingBind, imageView2, progressBar, textView, layoutPreviewsLoadingBindingBind, webView);
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

    public static FragmentBrandLinkBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_brand_link, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentBrandLinkBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
