package com.warefly.checkscan.scannerml.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.lottie.LottieAnimationView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentScannerFirstCheckBinding implements ViewBinding {
    public final AppCompatTextView btnAction;
    public final ImageView btnClose;
    public final Group gProgress;
    public final LottieAnimationView ivPlaceholder;
    public final ConstraintLayout parent;
    public final ProgressBar progressCircular;
    private final ConstraintLayout rootView;
    public final AppCompatTextView tvCount;
    public final AppCompatTextView tvDescription;
    public final AppCompatTextView tvTitle;
    public final AppCompatTextView tvTransaction;

    private FragmentScannerFirstCheckBinding(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, ImageView imageView, Group group, LottieAnimationView lottieAnimationView, ConstraintLayout constraintLayout2, ProgressBar progressBar, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5) {
        this.rootView = constraintLayout;
        this.btnAction = appCompatTextView;
        this.btnClose = imageView;
        this.gProgress = group;
        this.ivPlaceholder = lottieAnimationView;
        this.parent = constraintLayout2;
        this.progressCircular = progressBar;
        this.tvCount = appCompatTextView2;
        this.tvDescription = appCompatTextView3;
        this.tvTitle = appCompatTextView4;
        this.tvTransaction = appCompatTextView5;
    }

    public static FragmentScannerFirstCheckBinding bind(View view) {
        int i = R.id.btn_action;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (appCompatTextView != null) {
            i = R.id.btn_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
            if (imageView != null) {
                i = R.id.g_progress;
                Group group = (Group) ViewBindings.findChildViewById(view, R.id.g_progress);
                if (group != null) {
                    i = R.id.iv_placeholder;
                    LottieAnimationView lottieAnimationView = (LottieAnimationView) ViewBindings.findChildViewById(view, R.id.iv_placeholder);
                    if (lottieAnimationView != null) {
                        ConstraintLayout constraintLayout = (ConstraintLayout) view;
                        i = R.id.progress_circular;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progress_circular);
                        if (progressBar != null) {
                            i = R.id.tv_count;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_count);
                            if (appCompatTextView2 != null) {
                                i = R.id.tv_description;
                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                                if (appCompatTextView3 != null) {
                                    i = R.id.tv_title;
                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                    if (appCompatTextView4 != null) {
                                        i = R.id.tv_transaction;
                                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_transaction);
                                        if (appCompatTextView5 != null) {
                                            return new FragmentScannerFirstCheckBinding(constraintLayout, appCompatTextView, imageView, group, lottieAnimationView, constraintLayout, progressBar, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5);
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

    public static FragmentScannerFirstCheckBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_scanner_first_check, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentScannerFirstCheckBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
