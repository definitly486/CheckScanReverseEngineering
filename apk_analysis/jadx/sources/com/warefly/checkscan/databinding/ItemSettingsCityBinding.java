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
public final class ItemSettingsCityBinding implements ViewBinding {
    public final LayoutDelimiterArrowBinding incldDelimiterCityView;
    private final ConstraintLayout rootView;
    public final TextView tvCityTitle;
    public final TextView tvCityTitleLabel;

    private ItemSettingsCityBinding(ConstraintLayout constraintLayout, LayoutDelimiterArrowBinding layoutDelimiterArrowBinding, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.incldDelimiterCityView = layoutDelimiterArrowBinding;
        this.tvCityTitle = textView;
        this.tvCityTitleLabel = textView2;
    }

    public static ItemSettingsCityBinding bind(View view) {
        int i = R.id.incld_delimiter_city_view;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_delimiter_city_view);
        if (viewFindChildViewById != null) {
            LayoutDelimiterArrowBinding layoutDelimiterArrowBindingBind = LayoutDelimiterArrowBinding.bind(viewFindChildViewById);
            int i2 = R.id.tv_city_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_city_title);
            if (textView != null) {
                i2 = R.id.tv_city_title_label;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_city_title_label);
                if (textView2 != null) {
                    return new ItemSettingsCityBinding((ConstraintLayout) view, layoutDelimiterArrowBindingBind, textView, textView2);
                }
            }
            i = i2;
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemSettingsCityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_settings_city, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemSettingsCityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
