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
public final class ItemRvPromoSelectCardConditionBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;
    public final TextView tvValueDescription;
    public final TextView tvValueTitle;

    private ItemRvPromoSelectCardConditionBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.tvDescription = textView;
        this.tvTitle = textView2;
        this.tvValueDescription = textView3;
        this.tvValueTitle = textView4;
    }

    public static ItemRvPromoSelectCardConditionBinding bind(View view) {
        int i = R.id.tv_description;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
        if (textView != null) {
            i = R.id.tv_title;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (textView2 != null) {
                i = R.id.tv_value_description;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_value_description);
                if (textView3 != null) {
                    i = R.id.tv_value_title;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_value_title);
                    if (textView4 != null) {
                        return new ItemRvPromoSelectCardConditionBinding((ConstraintLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvPromoSelectCardConditionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_promo_select_card_condition, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvPromoSelectCardConditionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
