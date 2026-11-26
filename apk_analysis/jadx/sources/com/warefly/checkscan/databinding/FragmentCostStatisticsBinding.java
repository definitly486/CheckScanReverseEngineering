package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentCostStatisticsBinding implements ViewBinding {
    public final ImageView btnBackStatistics;
    public final ImageView btnMonthNext;
    public final ImageView btnMonthPrevious;
    public final Guideline guidelineArrows;
    public final ProgressBar pbMonths;
    private final ConstraintLayout rootView;
    public final RecyclerView rvMonths;
    public final ConstraintLayout toolbar;
    public final TextView tvTitle;
    public final ViewPager2 vpStatistics;

    private FragmentCostStatisticsBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, Guideline guideline, ProgressBar progressBar, RecyclerView recyclerView, ConstraintLayout constraintLayout2, TextView textView, ViewPager2 viewPager2) {
        this.rootView = constraintLayout;
        this.btnBackStatistics = imageView;
        this.btnMonthNext = imageView2;
        this.btnMonthPrevious = imageView3;
        this.guidelineArrows = guideline;
        this.pbMonths = progressBar;
        this.rvMonths = recyclerView;
        this.toolbar = constraintLayout2;
        this.tvTitle = textView;
        this.vpStatistics = viewPager2;
    }

    public static FragmentCostStatisticsBinding bind(View view) {
        int i = R.id.btn_back_statistics;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back_statistics);
        if (imageView != null) {
            i = R.id.btn_month_next;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_month_next);
            if (imageView2 != null) {
                i = R.id.btn_month_previous;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_month_previous);
                if (imageView3 != null) {
                    i = R.id.guideline_arrows;
                    Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline_arrows);
                    if (guideline != null) {
                        i = R.id.pb_months;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_months);
                        if (progressBar != null) {
                            i = R.id.rv_months;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_months);
                            if (recyclerView != null) {
                                i = R.id.toolbar;
                                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.toolbar);
                                if (constraintLayout != null) {
                                    i = R.id.tv_title;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                    if (textView != null) {
                                        i = R.id.vp_statistics;
                                        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.vp_statistics);
                                        if (viewPager2 != null) {
                                            return new FragmentCostStatisticsBinding((ConstraintLayout) view, imageView, imageView2, imageView3, guideline, progressBar, recyclerView, constraintLayout, textView, viewPager2);
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

    public static FragmentCostStatisticsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_cost_statistics, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCostStatisticsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
