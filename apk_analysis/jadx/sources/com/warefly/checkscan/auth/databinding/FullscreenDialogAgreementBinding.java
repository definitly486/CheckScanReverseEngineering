package com.warefly.checkscan.auth.databinding;

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

/* JADX INFO: loaded from: classes.dex */
public final class FullscreenDialogAgreementBinding implements ViewBinding {
    public final ImageView btnClose;
    public final ProgressBar pbLoading;
    private final ConstraintLayout rootView;
    public final TextView tvDialogTitle;
    public final View viewDialogHeader;
    public final WebView wvAgreement;

    private FullscreenDialogAgreementBinding(ConstraintLayout constraintLayout, ImageView imageView, ProgressBar progressBar, TextView textView, View view, WebView webView) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.pbLoading = progressBar;
        this.tvDialogTitle = textView;
        this.viewDialogHeader = view;
        this.wvAgreement = webView;
    }

    public static FullscreenDialogAgreementBinding bind(View view) {
        int i = R.id.btn_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageView != null) {
            i = R.id.pb_loading;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_loading);
            if (progressBar != null) {
                i = R.id.tv_dialog_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_dialog_title);
                if (textView != null) {
                    i = R.id.view_dialog_header;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_dialog_header);
                    if (viewFindChildViewById != null) {
                        i = R.id.wv_agreement;
                        WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.wv_agreement);
                        if (webView != null) {
                            return new FullscreenDialogAgreementBinding((ConstraintLayout) view, imageView, progressBar, textView, viewFindChildViewById, webView);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FullscreenDialogAgreementBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fullscreen_dialog_agreement, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FullscreenDialogAgreementBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
