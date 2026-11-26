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
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutWebviewBinding implements ViewBinding {
    public final ImageView btnBack;
    public final ImageView btnCloseWeb;
    public final ImageView btnInfo;
    public final ImageView btnShare;
    public final ImageView ivLabel;
    public final ProgressBar pbLoading;
    private final ConstraintLayout rootView;
    public final ConstraintLayout toolbar;
    public final TextView tvLabel;
    public final WebView webviewContent;

    private LayoutWebviewBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ProgressBar progressBar, ConstraintLayout constraintLayout2, TextView textView, WebView webView) {
        this.rootView = constraintLayout;
        this.btnBack = imageView;
        this.btnCloseWeb = imageView2;
        this.btnInfo = imageView3;
        this.btnShare = imageView4;
        this.ivLabel = imageView5;
        this.pbLoading = progressBar;
        this.toolbar = constraintLayout2;
        this.tvLabel = textView;
        this.webviewContent = webView;
    }

    public static LayoutWebviewBinding bind(View view) {
        int i = R.id.btn_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageView != null) {
            i = R.id.btn_close_web;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close_web);
            if (imageView2 != null) {
                i = R.id.btn_info;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_info);
                if (imageView3 != null) {
                    i = R.id.btn_share;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_share);
                    if (imageView4 != null) {
                        i = R.id.iv_label;
                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_label);
                        if (imageView5 != null) {
                            i = R.id.pb_loading;
                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_loading);
                            if (progressBar != null) {
                                i = R.id.toolbar;
                                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.toolbar);
                                if (constraintLayout != null) {
                                    i = R.id.tv_label;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_label);
                                    if (textView != null) {
                                        i = R.id.webview_content;
                                        WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.webview_content);
                                        if (webView != null) {
                                            return new LayoutWebviewBinding((ConstraintLayout) view, imageView, imageView2, imageView3, imageView4, imageView5, progressBar, constraintLayout, textView, webView);
                                        }
                                    }
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

    public static LayoutWebviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_webview, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutWebviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
