package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentElectrochequesOnboardingBinding implements ViewBinding {
    public final ImageView btnBack;
    public final TextView btnConnect;
    public final CoordinatorLayout coordLayout;
    public final ImageView ivBanner;
    private final ConstraintLayout rootView;
    public final RecyclerView rvInsctructions;
    public final RecyclerView rvQuestions;
    public final AppBarLayout toolbarBanner;
    public final TextView tvInstructionsTitle;
    public final TextView tvQuestionsTitle;
    public final View viewCorners;

    private FragmentElectrochequesOnboardingBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, CoordinatorLayout coordinatorLayout, ImageView imageView2, RecyclerView recyclerView, RecyclerView recyclerView2, AppBarLayout appBarLayout, TextView textView2, TextView textView3, View view) {
        this.rootView = constraintLayout;
        this.btnBack = imageView;
        this.btnConnect = textView;
        this.coordLayout = coordinatorLayout;
        this.ivBanner = imageView2;
        this.rvInsctructions = recyclerView;
        this.rvQuestions = recyclerView2;
        this.toolbarBanner = appBarLayout;
        this.tvInstructionsTitle = textView2;
        this.tvQuestionsTitle = textView3;
        this.viewCorners = view;
    }

    public static FragmentElectrochequesOnboardingBinding bind(View view) {
        int i = R.id.btn_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageView != null) {
            i = R.id.btn_connect;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_connect);
            if (textView != null) {
                i = R.id.coord_layout;
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(view, R.id.coord_layout);
                if (coordinatorLayout != null) {
                    i = R.id.iv_banner;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
                    if (imageView2 != null) {
                        i = R.id.rv_insctructions;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_insctructions);
                        if (recyclerView != null) {
                            i = R.id.rv_questions;
                            RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_questions);
                            if (recyclerView2 != null) {
                                i = R.id.toolbar_banner;
                                AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.toolbar_banner);
                                if (appBarLayout != null) {
                                    i = R.id.tv_instructions_title;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_instructions_title);
                                    if (textView2 != null) {
                                        i = R.id.tv_questions_title;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_questions_title);
                                        if (textView3 != null) {
                                            i = R.id.view_corners;
                                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_corners);
                                            if (viewFindChildViewById != null) {
                                                return new FragmentElectrochequesOnboardingBinding((ConstraintLayout) view, imageView, textView, coordinatorLayout, imageView2, recyclerView, recyclerView2, appBarLayout, textView2, textView3, viewFindChildViewById);
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

    public static FragmentElectrochequesOnboardingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_electrocheques_onboarding, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentElectrochequesOnboardingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
