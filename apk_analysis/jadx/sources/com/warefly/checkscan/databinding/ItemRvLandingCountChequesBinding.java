package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvLandingCountChequesBinding implements ViewBinding {
    public final LinearProgressIndicator pbProgress;
    private final LinearLayout rootView;
    public final TextView tvFrom;
    public final TextView tvProgress;
    public final TextView tvReward;
    public final TextView tvTo;

    private ItemRvLandingCountChequesBinding(LinearLayout linearLayout, LinearProgressIndicator linearProgressIndicator, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.pbProgress = linearProgressIndicator;
        this.tvFrom = textView;
        this.tvProgress = textView2;
        this.tvReward = textView3;
        this.tvTo = textView4;
    }

    public static ItemRvLandingCountChequesBinding bind(View view) {
        int i = R.id.pb_progress;
        LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) ViewBindings.findChildViewById(view, R.id.pb_progress);
        if (linearProgressIndicator != null) {
            i = R.id.tv_from;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_from);
            if (textView != null) {
                i = R.id.tv_progress;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_progress);
                if (textView2 != null) {
                    i = R.id.tv_reward;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_reward);
                    if (textView3 != null) {
                        i = R.id.tv_to;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_to);
                        if (textView4 != null) {
                            return new ItemRvLandingCountChequesBinding((LinearLayout) view, linearProgressIndicator, textView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvLandingCountChequesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_landing_count_cheques, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvLandingCountChequesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
