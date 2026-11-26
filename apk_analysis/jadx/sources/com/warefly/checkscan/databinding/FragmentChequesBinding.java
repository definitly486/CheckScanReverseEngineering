package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.constraintlayout.widget.Guideline;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentChequesBinding implements ViewBinding {
    public final AppBarLayout appbars;
    public final TextView btnExportCheques;
    public final ImageView btnYouHaveMissed;
    public final Group groupEmpty;
    public final Guideline guideline3;
    public final LayoutAdWideBannerWithOrdBinding incldAdWideBannerWithOrd;
    public final ImageView ivGoScan;
    public final ImageView ivNoReceipts;
    public final ImageView ivStatistics;
    public final ImageView ivYouHaveMissed;
    public final ItemChequesProgressAlfaBinding layoutAlfaProgress;
    public final ConstraintLayout layoutAllBanners;
    public final CoordinatorLayout layoutCheques;
    public final ConstraintLayout layoutYouHaveMissed;
    public final ConstraintLayout layoutYourElectricChecks;
    public final ConstraintLayout layoutYourStatistics;
    public final CircularProgressIndicator pbElectricChecks;
    private final ConstraintLayout rootView;
    public final RecyclerView rvCheques2;
    public final RecyclerView rvSorts;
    public final TextView tvCheques;
    public final AppCompatTextView tvEmptyChequesDescription;
    public final TextView tvEmptyChequesSubtitle;
    public final AppCompatTextView tvEmptyChequesTitle;
    public final TextView tvSpentForMonth;
    public final TextView tvStatisticsValue;
    public final TextView tvYouHaveMissed;
    public final TextView tvYourChecks;
    public final BannerLayoutBinding viewBanner;
    public final ItemPollBinding viewPoll;
    public final ItemPollBanerBinding viewSurvey;

    private FragmentChequesBinding(ConstraintLayout constraintLayout, AppBarLayout appBarLayout, TextView textView, ImageView imageView, Group group, Guideline guideline, LayoutAdWideBannerWithOrdBinding layoutAdWideBannerWithOrdBinding, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ItemChequesProgressAlfaBinding itemChequesProgressAlfaBinding, ConstraintLayout constraintLayout2, CoordinatorLayout coordinatorLayout, ConstraintLayout constraintLayout3, ConstraintLayout constraintLayout4, ConstraintLayout constraintLayout5, CircularProgressIndicator circularProgressIndicator, RecyclerView recyclerView, RecyclerView recyclerView2, TextView textView2, AppCompatTextView appCompatTextView, TextView textView3, AppCompatTextView appCompatTextView2, TextView textView4, TextView textView5, TextView textView6, TextView textView7, BannerLayoutBinding bannerLayoutBinding, ItemPollBinding itemPollBinding, ItemPollBanerBinding itemPollBanerBinding) {
        this.rootView = constraintLayout;
        this.appbars = appBarLayout;
        this.btnExportCheques = textView;
        this.btnYouHaveMissed = imageView;
        this.groupEmpty = group;
        this.guideline3 = guideline;
        this.incldAdWideBannerWithOrd = layoutAdWideBannerWithOrdBinding;
        this.ivGoScan = imageView2;
        this.ivNoReceipts = imageView3;
        this.ivStatistics = imageView4;
        this.ivYouHaveMissed = imageView5;
        this.layoutAlfaProgress = itemChequesProgressAlfaBinding;
        this.layoutAllBanners = constraintLayout2;
        this.layoutCheques = coordinatorLayout;
        this.layoutYouHaveMissed = constraintLayout3;
        this.layoutYourElectricChecks = constraintLayout4;
        this.layoutYourStatistics = constraintLayout5;
        this.pbElectricChecks = circularProgressIndicator;
        this.rvCheques2 = recyclerView;
        this.rvSorts = recyclerView2;
        this.tvCheques = textView2;
        this.tvEmptyChequesDescription = appCompatTextView;
        this.tvEmptyChequesSubtitle = textView3;
        this.tvEmptyChequesTitle = appCompatTextView2;
        this.tvSpentForMonth = textView4;
        this.tvStatisticsValue = textView5;
        this.tvYouHaveMissed = textView6;
        this.tvYourChecks = textView7;
        this.viewBanner = bannerLayoutBinding;
        this.viewPoll = itemPollBinding;
        this.viewSurvey = itemPollBanerBinding;
    }

    public static FragmentChequesBinding bind(View view) {
        int i = R.id.appbars;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.appbars);
        if (appBarLayout != null) {
            i = R.id.btn_export_cheques;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_export_cheques);
            if (textView != null) {
                i = R.id.btn_you_have_missed;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_you_have_missed);
                if (imageView != null) {
                    i = R.id.group_empty;
                    Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_empty);
                    if (group != null) {
                        i = R.id.guideline3;
                        Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline3);
                        if (guideline != null) {
                            i = R.id.incld_ad_wide_banner_with_ord;
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_ad_wide_banner_with_ord);
                            if (viewFindChildViewById != null) {
                                LayoutAdWideBannerWithOrdBinding layoutAdWideBannerWithOrdBindingBind = LayoutAdWideBannerWithOrdBinding.bind(viewFindChildViewById);
                                i = R.id.iv_go_scan;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_go_scan);
                                if (imageView2 != null) {
                                    i = R.id.iv_no_receipts;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_no_receipts);
                                    if (imageView3 != null) {
                                        i = R.id.iv_statistics;
                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_statistics);
                                        if (imageView4 != null) {
                                            i = R.id.iv_you_have_missed;
                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_you_have_missed);
                                            if (imageView5 != null) {
                                                i = R.id.layout_alfa_progress;
                                                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.layout_alfa_progress);
                                                if (viewFindChildViewById2 != null) {
                                                    ItemChequesProgressAlfaBinding itemChequesProgressAlfaBindingBind = ItemChequesProgressAlfaBinding.bind(viewFindChildViewById2);
                                                    i = R.id.layout_all_banners;
                                                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layout_all_banners);
                                                    if (constraintLayout != null) {
                                                        i = R.id.layout_cheques;
                                                        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(view, R.id.layout_cheques);
                                                        if (coordinatorLayout != null) {
                                                            i = R.id.layout_you_have_missed;
                                                            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layout_you_have_missed);
                                                            if (constraintLayout2 != null) {
                                                                i = R.id.layout_your_electric_checks;
                                                                ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layout_your_electric_checks);
                                                                if (constraintLayout3 != null) {
                                                                    i = R.id.layout_your_statistics;
                                                                    ConstraintLayout constraintLayout4 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layout_your_statistics);
                                                                    if (constraintLayout4 != null) {
                                                                        i = R.id.pb_electric_checks;
                                                                        CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ViewBindings.findChildViewById(view, R.id.pb_electric_checks);
                                                                        if (circularProgressIndicator != null) {
                                                                            i = R.id.rv_cheques2;
                                                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_cheques2);
                                                                            if (recyclerView != null) {
                                                                                i = R.id.rv_sorts;
                                                                                RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_sorts);
                                                                                if (recyclerView2 != null) {
                                                                                    i = R.id.tv_cheques;
                                                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cheques);
                                                                                    if (textView2 != null) {
                                                                                        i = R.id.tv_empty_cheques_description;
                                                                                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_empty_cheques_description);
                                                                                        if (appCompatTextView != null) {
                                                                                            i = R.id.tv_empty_cheques_subtitle;
                                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_empty_cheques_subtitle);
                                                                                            if (textView3 != null) {
                                                                                                i = R.id.tv_empty_cheques_title;
                                                                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_empty_cheques_title);
                                                                                                if (appCompatTextView2 != null) {
                                                                                                    i = R.id.tv_spent_for_month;
                                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_spent_for_month);
                                                                                                    if (textView4 != null) {
                                                                                                        i = R.id.tv_statistics_value;
                                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_statistics_value);
                                                                                                        if (textView5 != null) {
                                                                                                            i = R.id.tv_you_have_missed;
                                                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_you_have_missed);
                                                                                                            if (textView6 != null) {
                                                                                                                i = R.id.tv_your_checks;
                                                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_your_checks);
                                                                                                                if (textView7 != null) {
                                                                                                                    i = R.id.view_banner;
                                                                                                                    View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.view_banner);
                                                                                                                    if (viewFindChildViewById3 != null) {
                                                                                                                        BannerLayoutBinding bannerLayoutBindingBind = BannerLayoutBinding.bind(viewFindChildViewById3);
                                                                                                                        i = R.id.view_poll;
                                                                                                                        View viewFindChildViewById4 = ViewBindings.findChildViewById(view, R.id.view_poll);
                                                                                                                        if (viewFindChildViewById4 != null) {
                                                                                                                            ItemPollBinding itemPollBindingBind = ItemPollBinding.bind(viewFindChildViewById4);
                                                                                                                            i = R.id.view_survey;
                                                                                                                            View viewFindChildViewById5 = ViewBindings.findChildViewById(view, R.id.view_survey);
                                                                                                                            if (viewFindChildViewById5 != null) {
                                                                                                                                return new FragmentChequesBinding((ConstraintLayout) view, appBarLayout, textView, imageView, group, guideline, layoutAdWideBannerWithOrdBindingBind, imageView2, imageView3, imageView4, imageView5, itemChequesProgressAlfaBindingBind, constraintLayout, coordinatorLayout, constraintLayout2, constraintLayout3, constraintLayout4, circularProgressIndicator, recyclerView, recyclerView2, textView2, appCompatTextView, textView3, appCompatTextView2, textView4, textView5, textView6, textView7, bannerLayoutBindingBind, itemPollBindingBind, ItemPollBanerBinding.bind(viewFindChildViewById5));
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

    public static FragmentChequesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_cheques, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentChequesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
