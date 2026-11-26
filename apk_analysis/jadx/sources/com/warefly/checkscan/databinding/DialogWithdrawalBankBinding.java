package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogWithdrawalBankBinding implements ViewBinding {
    public final ImageView btnClose;
    public final LayoutTryAgainBinding incldTryAgain;
    public final ConstraintLayout layoutRoot;
    public final CircularProgressIndicator pbLoading;
    private final ConstraintLayout rootView;
    public final View viewDialogHeader;
    public final WebView webViewContent;

    private DialogWithdrawalBankBinding(ConstraintLayout constraintLayout, ImageView imageView, LayoutTryAgainBinding layoutTryAgainBinding, ConstraintLayout constraintLayout2, CircularProgressIndicator circularProgressIndicator, View view, WebView webView) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.incldTryAgain = layoutTryAgainBinding;
        this.layoutRoot = constraintLayout2;
        this.pbLoading = circularProgressIndicator;
        this.viewDialogHeader = view;
        this.webViewContent = webView;
    }

    public static DialogWithdrawalBankBinding bind(View view) {
        int i = R.id.btn_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageView != null) {
            i = R.id.incld_try_again;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_try_again);
            if (viewFindChildViewById != null) {
                LayoutTryAgainBinding layoutTryAgainBindingBind = LayoutTryAgainBinding.bind(viewFindChildViewById);
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                i = R.id.pb_loading;
                CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ViewBindings.findChildViewById(view, R.id.pb_loading);
                if (circularProgressIndicator != null) {
                    i = R.id.view_dialog_header;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_dialog_header);
                    if (viewFindChildViewById2 != null) {
                        i = R.id.web_view_content;
                        WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.web_view_content);
                        if (webView != null) {
                            return new DialogWithdrawalBankBinding(constraintLayout, imageView, layoutTryAgainBindingBind, constraintLayout, circularProgressIndicator, viewFindChildViewById2, webView);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogWithdrawalBankBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_withdrawal_bank, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogWithdrawalBankBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
