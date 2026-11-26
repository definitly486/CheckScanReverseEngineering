package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.design.resources.databinding.LayoutPreviewsLoadingBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentUpridWebBinding implements ViewBinding {
    public final TextView btnBackPlastic;
    public final FrameLayout layoutRoot;
    private final FrameLayout rootView;
    public final WebView topWebView;
    public final LayoutPreviewsLoadingBinding viewLoading;

    private FragmentUpridWebBinding(FrameLayout frameLayout, TextView textView, FrameLayout frameLayout2, WebView webView, LayoutPreviewsLoadingBinding layoutPreviewsLoadingBinding) {
        this.rootView = frameLayout;
        this.btnBackPlastic = textView;
        this.layoutRoot = frameLayout2;
        this.topWebView = webView;
        this.viewLoading = layoutPreviewsLoadingBinding;
    }

    public static FragmentUpridWebBinding bind(View view) {
        int i = R.id.btn_back_plastic;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_back_plastic);
        if (textView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i = R.id.top_web_view;
            WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.top_web_view);
            if (webView != null) {
                i = R.id.view_loading;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_loading);
                if (viewFindChildViewById != null) {
                    return new FragmentUpridWebBinding(frameLayout, textView, frameLayout, webView, LayoutPreviewsLoadingBinding.bind(viewFindChildViewById));
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentUpridWebBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_uprid_web, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FragmentUpridWebBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
