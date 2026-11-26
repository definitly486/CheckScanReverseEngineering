package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.design.resources.databinding.LayoutPreviewsLoadingBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogManagementAlfaBinding implements ViewBinding {
    public final FrameLayout layoutRoot;
    private final FrameLayout rootView;
    public final LayoutPreviewsLoadingBinding viewLoading;
    public final WebView webviewContent;

    private DialogManagementAlfaBinding(FrameLayout frameLayout, FrameLayout frameLayout2, LayoutPreviewsLoadingBinding layoutPreviewsLoadingBinding, WebView webView) {
        this.rootView = frameLayout;
        this.layoutRoot = frameLayout2;
        this.viewLoading = layoutPreviewsLoadingBinding;
        this.webviewContent = webView;
    }

    public static DialogManagementAlfaBinding bind(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i = R.id.view_loading;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_loading);
        if (viewFindChildViewById != null) {
            LayoutPreviewsLoadingBinding layoutPreviewsLoadingBindingBind = LayoutPreviewsLoadingBinding.bind(viewFindChildViewById);
            WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.webview_content);
            if (webView != null) {
                return new DialogManagementAlfaBinding(frameLayout, frameLayout, layoutPreviewsLoadingBindingBind, webView);
            }
            i = R.id.webview_content;
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogManagementAlfaBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_management_alfa, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static DialogManagementAlfaBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
