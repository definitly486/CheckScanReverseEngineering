package com.warefly.checkscan.shared.universalWebView.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutAppbarTitleBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutSimpleTryAgainBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutSpinnerLoadingBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentUniversalWebViewBinding implements ViewBinding {
    public final FrameLayout flFullScreenContainer;
    public final FrameLayout flWebViewContainer;
    public final LayoutSimpleTryAgainBinding incldError;
    public final LayoutSpinnerLoadingBinding incldLoading;
    public final ProgressBar pbPageProgress;
    private final ConstraintLayout rootView;
    public final SwipeRefreshLayout srlContent;
    public final LayoutAppbarTitleBinding toolbar;

    private FragmentUniversalWebViewBinding(ConstraintLayout constraintLayout, FrameLayout frameLayout, FrameLayout frameLayout2, LayoutSimpleTryAgainBinding layoutSimpleTryAgainBinding, LayoutSpinnerLoadingBinding layoutSpinnerLoadingBinding, ProgressBar progressBar, SwipeRefreshLayout swipeRefreshLayout, LayoutAppbarTitleBinding layoutAppbarTitleBinding) {
        this.rootView = constraintLayout;
        this.flFullScreenContainer = frameLayout;
        this.flWebViewContainer = frameLayout2;
        this.incldError = layoutSimpleTryAgainBinding;
        this.incldLoading = layoutSpinnerLoadingBinding;
        this.pbPageProgress = progressBar;
        this.srlContent = swipeRefreshLayout;
        this.toolbar = layoutAppbarTitleBinding;
    }

    public static FragmentUniversalWebViewBinding bind(View view) {
        int i = R.id.fl_full_screen_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_full_screen_container);
        if (frameLayout != null) {
            i = R.id.fl_web_view_container;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_web_view_container);
            if (frameLayout2 != null) {
                i = R.id.incld_error;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_error);
                if (viewFindChildViewById != null) {
                    LayoutSimpleTryAgainBinding layoutSimpleTryAgainBindingBind = LayoutSimpleTryAgainBinding.bind(viewFindChildViewById);
                    i = R.id.incld_loading;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.incld_loading);
                    if (viewFindChildViewById2 != null) {
                        LayoutSpinnerLoadingBinding layoutSpinnerLoadingBindingBind = LayoutSpinnerLoadingBinding.bind(viewFindChildViewById2);
                        i = R.id.pb_page_progress;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_page_progress);
                        if (progressBar != null) {
                            i = R.id.srl_content;
                            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.srl_content);
                            if (swipeRefreshLayout != null) {
                                i = R.id.toolbar;
                                View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.toolbar);
                                if (viewFindChildViewById3 != null) {
                                    return new FragmentUniversalWebViewBinding((ConstraintLayout) view, frameLayout, frameLayout2, layoutSimpleTryAgainBindingBind, layoutSpinnerLoadingBindingBind, progressBar, swipeRefreshLayout, LayoutAppbarTitleBinding.bind(viewFindChildViewById3));
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

    public static FragmentUniversalWebViewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_universal_web_view, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentUniversalWebViewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
