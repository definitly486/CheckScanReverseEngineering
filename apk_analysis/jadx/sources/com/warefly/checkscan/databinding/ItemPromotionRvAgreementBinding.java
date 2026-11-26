package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemPromotionRvAgreementBinding implements ViewBinding {
    public final CheckBox checkbox;
    private final ConstraintLayout rootView;
    public final TextView tvCheckbox;

    private ItemPromotionRvAgreementBinding(ConstraintLayout constraintLayout, CheckBox checkBox, TextView textView) {
        this.rootView = constraintLayout;
        this.checkbox = checkBox;
        this.tvCheckbox = textView;
    }

    public static ItemPromotionRvAgreementBinding bind(View view) {
        int i = R.id.checkbox;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.checkbox);
        if (checkBox != null) {
            i = R.id.tv_checkbox;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_checkbox);
            if (textView != null) {
                return new ItemPromotionRvAgreementBinding((ConstraintLayout) view, checkBox, textView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemPromotionRvAgreementBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_promotion_rv_agreement, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemPromotionRvAgreementBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
