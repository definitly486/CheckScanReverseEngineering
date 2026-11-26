package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.SafeImageView;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarBackIconBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentAddScreenshotsBinding implements ViewBinding {
    public final AppCompatTextView btnLoadScreenshotBank;
    public final AppCompatTextView btnLoadScreenshotShop;
    public final AppCompatTextView btnScreenshotBank;
    public final AppCompatTextView btnScreenshotShop;
    public final AppCompatTextView btnUpload;
    public final ImageView ivBank;
    public final ImageView ivShop;
    public final SafeImageView ivShopScreenshot;
    private final LinearLayout rootView;
    public final LayoutToolbarBackIconBinding toolbar;
    public final Barrier topBorderBottom;
    public final Barrier topBorderBottomShop;
    public final AppCompatTextView tvHelpScreenshots;
    public final AppCompatTextView tvScreenshotBankDescription;
    public final AppCompatTextView tvScreenshotBankTitle;
    public final AppCompatTextView tvScreenshotShopDescription;
    public final AppCompatTextView tvScreenshotShopTitle;

    private FragmentAddScreenshotsBinding(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, ImageView imageView, ImageView imageView2, SafeImageView safeImageView, LayoutToolbarBackIconBinding layoutToolbarBackIconBinding, Barrier barrier, Barrier barrier2, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10) {
        this.rootView = linearLayout;
        this.btnLoadScreenshotBank = appCompatTextView;
        this.btnLoadScreenshotShop = appCompatTextView2;
        this.btnScreenshotBank = appCompatTextView3;
        this.btnScreenshotShop = appCompatTextView4;
        this.btnUpload = appCompatTextView5;
        this.ivBank = imageView;
        this.ivShop = imageView2;
        this.ivShopScreenshot = safeImageView;
        this.toolbar = layoutToolbarBackIconBinding;
        this.topBorderBottom = barrier;
        this.topBorderBottomShop = barrier2;
        this.tvHelpScreenshots = appCompatTextView6;
        this.tvScreenshotBankDescription = appCompatTextView7;
        this.tvScreenshotBankTitle = appCompatTextView8;
        this.tvScreenshotShopDescription = appCompatTextView9;
        this.tvScreenshotShopTitle = appCompatTextView10;
    }

    public static FragmentAddScreenshotsBinding bind(View view) {
        int i = R.id.btn_load_screenshot_bank;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_load_screenshot_bank);
        if (appCompatTextView != null) {
            i = R.id.btn_load_screenshot_shop;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_load_screenshot_shop);
            if (appCompatTextView2 != null) {
                i = R.id.btn_screenshot_bank;
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_screenshot_bank);
                if (appCompatTextView3 != null) {
                    i = R.id.btn_screenshot_shop;
                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_screenshot_shop);
                    if (appCompatTextView4 != null) {
                        i = R.id.btn_upload;
                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_upload);
                        if (appCompatTextView5 != null) {
                            i = R.id.iv_bank;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_bank);
                            if (imageView != null) {
                                i = R.id.iv_shop;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_shop);
                                if (imageView2 != null) {
                                    i = R.id.iv_shop_screenshot;
                                    SafeImageView safeImageView = (SafeImageView) ViewBindings.findChildViewById(view, R.id.iv_shop_screenshot);
                                    if (safeImageView != null) {
                                        i = R.id.toolbar;
                                        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.toolbar);
                                        if (viewFindChildViewById != null) {
                                            LayoutToolbarBackIconBinding layoutToolbarBackIconBindingBind = LayoutToolbarBackIconBinding.bind(viewFindChildViewById);
                                            i = R.id.top_border_bottom;
                                            Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.top_border_bottom);
                                            if (barrier != null) {
                                                i = R.id.top_border_bottom_shop;
                                                Barrier barrier2 = (Barrier) ViewBindings.findChildViewById(view, R.id.top_border_bottom_shop);
                                                if (barrier2 != null) {
                                                    i = R.id.tv_help_screenshots;
                                                    AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_help_screenshots);
                                                    if (appCompatTextView6 != null) {
                                                        i = R.id.tv_screenshot_bank_description;
                                                        AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_screenshot_bank_description);
                                                        if (appCompatTextView7 != null) {
                                                            i = R.id.tv_screenshot_bank_title;
                                                            AppCompatTextView appCompatTextView8 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_screenshot_bank_title);
                                                            if (appCompatTextView8 != null) {
                                                                i = R.id.tv_screenshot_shop_description;
                                                                AppCompatTextView appCompatTextView9 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_screenshot_shop_description);
                                                                if (appCompatTextView9 != null) {
                                                                    i = R.id.tv_screenshot_shop_title;
                                                                    AppCompatTextView appCompatTextView10 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_screenshot_shop_title);
                                                                    if (appCompatTextView10 != null) {
                                                                        return new FragmentAddScreenshotsBinding((LinearLayout) view, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, imageView, imageView2, safeImageView, layoutToolbarBackIconBindingBind, barrier, barrier2, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10);
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
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentAddScreenshotsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_add_screenshots, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentAddScreenshotsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
