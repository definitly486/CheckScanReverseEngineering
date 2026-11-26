package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogAffiliationResultBinding implements ViewBinding {
    public final View background;
    public final TextView btnBack;
    public final ImageView btnClose;
    public final TextView btnMore;
    public final ConstraintLayout containerButton;
    public final MaterialCardView cvCashback;
    public final Group groupCashback;
    public final ImageView ivLogo;
    private final ConstraintLayout rootView;
    public final View toolbarBackground;
    public final TextView tvDescription;
    public final TextView tvResult;
    public final TextView tvResultNoCashback;
    public final View view;

    private DialogAffiliationResultBinding(ConstraintLayout constraintLayout, View view, TextView textView, ImageView imageView, TextView textView2, ConstraintLayout constraintLayout2, MaterialCardView materialCardView, Group group, ImageView imageView2, View view2, TextView textView3, TextView textView4, TextView textView5, View view3) {
        this.rootView = constraintLayout;
        this.background = view;
        this.btnBack = textView;
        this.btnClose = imageView;
        this.btnMore = textView2;
        this.containerButton = constraintLayout2;
        this.cvCashback = materialCardView;
        this.groupCashback = group;
        this.ivLogo = imageView2;
        this.toolbarBackground = view2;
        this.tvDescription = textView3;
        this.tvResult = textView4;
        this.tvResultNoCashback = textView5;
        this.view = view3;
    }

    public static DialogAffiliationResultBinding bind(View view) {
        int i = R.id.background;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.background);
        if (viewFindChildViewById != null) {
            i = R.id.btn_back;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_back);
            if (textView != null) {
                i = R.id.btn_close;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
                if (imageView != null) {
                    i = R.id.btn_more;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_more);
                    if (textView2 != null) {
                        i = R.id.container_button;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_button);
                        if (constraintLayout != null) {
                            i = R.id.cv_cashback;
                            MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.cv_cashback);
                            if (materialCardView != null) {
                                i = R.id.group_cashback;
                                Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_cashback);
                                if (group != null) {
                                    i = R.id.iv_logo;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                                    if (imageView2 != null) {
                                        i = R.id.toolbar_background;
                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.toolbar_background);
                                        if (viewFindChildViewById2 != null) {
                                            i = R.id.tv_description;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                                            if (textView3 != null) {
                                                i = R.id.tv_result;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_result);
                                                if (textView4 != null) {
                                                    i = R.id.tv_result_no_cashback;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_result_no_cashback);
                                                    if (textView5 != null) {
                                                        i = R.id.view;
                                                        View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.view);
                                                        if (viewFindChildViewById3 != null) {
                                                            return new DialogAffiliationResultBinding((ConstraintLayout) view, viewFindChildViewById, textView, imageView, textView2, constraintLayout, materialCardView, group, imageView2, viewFindChildViewById2, textView3, textView4, textView5, viewFindChildViewById3);
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

    public static DialogAffiliationResultBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_affiliation_result, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogAffiliationResultBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
