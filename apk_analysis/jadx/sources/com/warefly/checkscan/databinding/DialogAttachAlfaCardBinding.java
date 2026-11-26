package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.design.resources.databinding.LayoutPreviewsLoadingBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogAttachAlfaCardBinding implements ViewBinding {
    public final WebView bottomWebView;
    public final ImageView btnClose;
    public final Guideline guideline;
    public final Guideline guideline1;
    public final Guideline guidelineHorizontal;
    public final View header;
    public final ConstraintLayout layoutRoot;
    private final ConstraintLayout rootView;
    public final WebView topWebView;
    public final TextView tvTitle;
    public final LayoutPreviewsLoadingBinding viewLoading;

    private DialogAttachAlfaCardBinding(ConstraintLayout constraintLayout, WebView webView, ImageView imageView, Guideline guideline, Guideline guideline2, Guideline guideline3, View view, ConstraintLayout constraintLayout2, WebView webView2, TextView textView, LayoutPreviewsLoadingBinding layoutPreviewsLoadingBinding) {
        this.rootView = constraintLayout;
        this.bottomWebView = webView;
        this.btnClose = imageView;
        this.guideline = guideline;
        this.guideline1 = guideline2;
        this.guidelineHorizontal = guideline3;
        this.header = view;
        this.layoutRoot = constraintLayout2;
        this.topWebView = webView2;
        this.tvTitle = textView;
        this.viewLoading = layoutPreviewsLoadingBinding;
    }

    public static DialogAttachAlfaCardBinding bind(View view) {
        int i = R.id.bottom_web_view;
        WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.bottom_web_view);
        if (webView != null) {
            i = R.id.btn_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
            if (imageView != null) {
                i = R.id.guideline;
                Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline);
                if (guideline != null) {
                    i = R.id.guideline1;
                    Guideline guideline2 = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline1);
                    if (guideline2 != null) {
                        i = R.id.guideline_horizontal;
                        Guideline guideline3 = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline_horizontal);
                        if (guideline3 != null) {
                            i = R.id.header;
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.header);
                            if (viewFindChildViewById != null) {
                                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                i = R.id.top_web_view;
                                WebView webView2 = (WebView) ViewBindings.findChildViewById(view, R.id.top_web_view);
                                if (webView2 != null) {
                                    i = R.id.tv_title;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                    if (textView != null) {
                                        i = R.id.view_loading;
                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_loading);
                                        if (viewFindChildViewById2 != null) {
                                            return new DialogAttachAlfaCardBinding(constraintLayout, webView, imageView, guideline, guideline2, guideline3, viewFindChildViewById, constraintLayout, webView2, textView, LayoutPreviewsLoadingBinding.bind(viewFindChildViewById2));
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

    public static DialogAttachAlfaCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_attach_alfa_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogAttachAlfaCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
