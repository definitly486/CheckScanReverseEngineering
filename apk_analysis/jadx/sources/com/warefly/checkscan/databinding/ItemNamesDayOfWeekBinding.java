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
public final class ItemNamesDayOfWeekBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final TextView tvFirst;
    public final TextView tvFive;
    public final TextView tvFour;
    public final TextView tvSecond;
    public final TextView tvSeven;
    public final TextView tvSix;
    public final TextView tvThree;

    private ItemNamesDayOfWeekBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.rootView = constraintLayout;
        this.tvFirst = textView;
        this.tvFive = textView2;
        this.tvFour = textView3;
        this.tvSecond = textView4;
        this.tvSeven = textView5;
        this.tvSix = textView6;
        this.tvThree = textView7;
    }

    public static ItemNamesDayOfWeekBinding bind(View view) {
        int i = R.id.tv_first;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_first);
        if (textView != null) {
            i = R.id.tv_five;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_five);
            if (textView2 != null) {
                i = R.id.tv_four;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_four);
                if (textView3 != null) {
                    i = R.id.tv_second;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_second);
                    if (textView4 != null) {
                        i = R.id.tv_seven;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_seven);
                        if (textView5 != null) {
                            i = R.id.tv_six;
                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_six);
                            if (textView6 != null) {
                                i = R.id.tv_three;
                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_three);
                                if (textView7 != null) {
                                    return new ItemNamesDayOfWeekBinding((ConstraintLayout) view, textView, textView2, textView3, textView4, textView5, textView6, textView7);
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

    public static ItemNamesDayOfWeekBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_names_day_of_week, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemNamesDayOfWeekBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
