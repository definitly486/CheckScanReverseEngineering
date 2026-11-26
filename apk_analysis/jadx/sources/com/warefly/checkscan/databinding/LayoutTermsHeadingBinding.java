package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutTermsHeadingBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final TextView tvRewardsHeader;
    public final TextView tvRewardsTitle;

    private LayoutTermsHeadingBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.tvRewardsHeader = textView;
        this.tvRewardsTitle = textView2;
    }

    public static LayoutTermsHeadingBinding bind(View view) {
        int i = R.id.tv_rewards_header;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_rewards_header);
        if (textView != null) {
            i = R.id.tv_rewards_title;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_rewards_title);
            if (textView2 != null) {
                return new LayoutTermsHeadingBinding((ConstraintLayout) view, textView, textView2);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutTermsHeadingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_terms_heading, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutTermsHeadingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
