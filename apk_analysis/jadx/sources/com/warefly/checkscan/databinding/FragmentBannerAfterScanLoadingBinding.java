package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutAdsBadgeBinding;
import com.warefly.checkscan.subscription.databinding.AnonSplashScanResultBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentBannerAfterScanLoadingBinding implements ViewBinding {
    public final LinearLayout bannerPlaceholder;
    public final Barrier barrierBanner;
    public final TextView btnAccept;
    public final ImageView btnCloseSplash;
    public final ImageButton btnResultClose;
    public final Group groupDone;
    public final Group groupProgress;
    public final LayoutAdsBadgeBinding incldAdsBadge;
    public final LayoutWithoutSplashBannerLoadingBinding incldLoadingWithoutSplash;
    public final AnonSplashScanResultBinding incldSubscriptionAnon;
    public final ImageView ivPicture;
    public final ImageView ivScanResultBanner;
    public final ImageView ivSplashDone;
    public final LinearLayout layoutChequeLoad;
    public final ConstraintLayout layoutLoading;
    public final LinearProgressIndicator pbSplashLoading;
    private final FrameLayout rootView;
    public final TextView tvResult;
    public final TextView tvSplashDone;
    public final TextView tvSplashLoading;
    public final TextView tvSplashSecsLeft;
    public final TextView tvTitle;

    private FragmentBannerAfterScanLoadingBinding(FrameLayout frameLayout, LinearLayout linearLayout, Barrier barrier, TextView textView, ImageView imageView, ImageButton imageButton, Group group, Group group2, LayoutAdsBadgeBinding layoutAdsBadgeBinding, LayoutWithoutSplashBannerLoadingBinding layoutWithoutSplashBannerLoadingBinding, AnonSplashScanResultBinding anonSplashScanResultBinding, ImageView imageView2, ImageView imageView3, ImageView imageView4, LinearLayout linearLayout2, ConstraintLayout constraintLayout, LinearProgressIndicator linearProgressIndicator, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = frameLayout;
        this.bannerPlaceholder = linearLayout;
        this.barrierBanner = barrier;
        this.btnAccept = textView;
        this.btnCloseSplash = imageView;
        this.btnResultClose = imageButton;
        this.groupDone = group;
        this.groupProgress = group2;
        this.incldAdsBadge = layoutAdsBadgeBinding;
        this.incldLoadingWithoutSplash = layoutWithoutSplashBannerLoadingBinding;
        this.incldSubscriptionAnon = anonSplashScanResultBinding;
        this.ivPicture = imageView2;
        this.ivScanResultBanner = imageView3;
        this.ivSplashDone = imageView4;
        this.layoutChequeLoad = linearLayout2;
        this.layoutLoading = constraintLayout;
        this.pbSplashLoading = linearProgressIndicator;
        this.tvResult = textView2;
        this.tvSplashDone = textView3;
        this.tvSplashLoading = textView4;
        this.tvSplashSecsLeft = textView5;
        this.tvTitle = textView6;
    }

    public static FragmentBannerAfterScanLoadingBinding bind(View view) {
        int i = R.id.banner_placeholder;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.banner_placeholder);
        if (linearLayout != null) {
            i = R.id.barrier_banner;
            Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier_banner);
            if (barrier != null) {
                i = R.id.btn_accept;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_accept);
                if (textView != null) {
                    i = R.id.btn_close_splash;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close_splash);
                    if (imageView != null) {
                        i = R.id.btn_result_close;
                        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_result_close);
                        if (imageButton != null) {
                            i = R.id.group_done;
                            Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_done);
                            if (group != null) {
                                i = R.id.group_progress;
                                Group group2 = (Group) ViewBindings.findChildViewById(view, R.id.group_progress);
                                if (group2 != null) {
                                    i = R.id.incld_ads_badge;
                                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_ads_badge);
                                    if (viewFindChildViewById != null) {
                                        LayoutAdsBadgeBinding layoutAdsBadgeBindingBind = LayoutAdsBadgeBinding.bind(viewFindChildViewById);
                                        i = R.id.incld_loading_without_splash;
                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.incld_loading_without_splash);
                                        if (viewFindChildViewById2 != null) {
                                            LayoutWithoutSplashBannerLoadingBinding layoutWithoutSplashBannerLoadingBindingBind = LayoutWithoutSplashBannerLoadingBinding.bind(viewFindChildViewById2);
                                            i = R.id.incld_subscription_anon;
                                            View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.incld_subscription_anon);
                                            if (viewFindChildViewById3 != null) {
                                                AnonSplashScanResultBinding anonSplashScanResultBindingBind = AnonSplashScanResultBinding.bind(viewFindChildViewById3);
                                                i = R.id.iv_picture;
                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_picture);
                                                if (imageView2 != null) {
                                                    i = R.id.iv_scan_result_banner;
                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_scan_result_banner);
                                                    if (imageView3 != null) {
                                                        i = R.id.iv_splash_done;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_splash_done);
                                                        if (imageView4 != null) {
                                                            i = R.id.layout_cheque_load;
                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_cheque_load);
                                                            if (linearLayout2 != null) {
                                                                i = R.id.layout_loading;
                                                                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layout_loading);
                                                                if (constraintLayout != null) {
                                                                    i = R.id.pb_splash_loading;
                                                                    LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) ViewBindings.findChildViewById(view, R.id.pb_splash_loading);
                                                                    if (linearProgressIndicator != null) {
                                                                        i = R.id.tv_result;
                                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_result);
                                                                        if (textView2 != null) {
                                                                            i = R.id.tv_splash_done;
                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_splash_done);
                                                                            if (textView3 != null) {
                                                                                i = R.id.tv_splash_loading;
                                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_splash_loading);
                                                                                if (textView4 != null) {
                                                                                    i = R.id.tv_splash_secs_left;
                                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_splash_secs_left);
                                                                                    if (textView5 != null) {
                                                                                        i = R.id.tv_title;
                                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                                                        if (textView6 != null) {
                                                                                            return new FragmentBannerAfterScanLoadingBinding((FrameLayout) view, linearLayout, barrier, textView, imageView, imageButton, group, group2, layoutAdsBadgeBindingBind, layoutWithoutSplashBannerLoadingBindingBind, anonSplashScanResultBindingBind, imageView2, imageView3, imageView4, linearLayout2, constraintLayout, linearProgressIndicator, textView2, textView3, textView4, textView5, textView6);
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
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentBannerAfterScanLoadingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_banner_after_scan_loading, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FragmentBannerAfterScanLoadingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
