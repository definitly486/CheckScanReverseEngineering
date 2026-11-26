package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentScankitBinding implements ViewBinding {
    public final Barrier barrierControls;
    public final ImageView btnBack;
    public final TextView btnByHand;
    public final AppCompatImageView btnFlash;
    public final AppCompatImageView btnGallery;
    public final TextView btnTryNewScanner;
    public final FrameLayout frameScankit;
    public final AppCompatImageView ivDot;
    public final AppCompatImageView ivScanner;
    public final CameraPermissionRationaleLayoutBinding permissionRationale;
    private final ConstraintLayout rootView;
    public final TextView tvFlash;

    private FragmentScankitBinding(ConstraintLayout constraintLayout, Barrier barrier, ImageView imageView, TextView textView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, TextView textView2, FrameLayout frameLayout, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, CameraPermissionRationaleLayoutBinding cameraPermissionRationaleLayoutBinding, TextView textView3) {
        this.rootView = constraintLayout;
        this.barrierControls = barrier;
        this.btnBack = imageView;
        this.btnByHand = textView;
        this.btnFlash = appCompatImageView;
        this.btnGallery = appCompatImageView2;
        this.btnTryNewScanner = textView2;
        this.frameScankit = frameLayout;
        this.ivDot = appCompatImageView3;
        this.ivScanner = appCompatImageView4;
        this.permissionRationale = cameraPermissionRationaleLayoutBinding;
        this.tvFlash = textView3;
    }

    public static FragmentScankitBinding bind(View view) {
        int i = R.id.barrier_controls;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier_controls);
        if (barrier != null) {
            i = R.id.btn_back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
            if (imageView != null) {
                i = R.id.btn_by_hand;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_by_hand);
                if (textView != null) {
                    i = R.id.btn_flash;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.btn_flash);
                    if (appCompatImageView != null) {
                        i = R.id.btn_gallery;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.btn_gallery);
                        if (appCompatImageView2 != null) {
                            i = R.id.btn_try_new_scanner;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_try_new_scanner);
                            if (textView2 != null) {
                                i = R.id.frame_scankit;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.frame_scankit);
                                if (frameLayout != null) {
                                    i = R.id.iv_dot;
                                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.iv_dot);
                                    if (appCompatImageView3 != null) {
                                        i = R.id.iv_scanner;
                                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.iv_scanner);
                                        if (appCompatImageView4 != null) {
                                            i = R.id.permission_rationale;
                                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.permission_rationale);
                                            if (viewFindChildViewById != null) {
                                                CameraPermissionRationaleLayoutBinding cameraPermissionRationaleLayoutBindingBind = CameraPermissionRationaleLayoutBinding.bind(viewFindChildViewById);
                                                i = R.id.tv_flash;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_flash);
                                                if (textView3 != null) {
                                                    return new FragmentScankitBinding((ConstraintLayout) view, barrier, imageView, textView, appCompatImageView, appCompatImageView2, textView2, frameLayout, appCompatImageView3, appCompatImageView4, cameraPermissionRationaleLayoutBindingBind, textView3);
                                                }
                                            }
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

    public static FragmentScankitBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_scankit, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentScankitBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
