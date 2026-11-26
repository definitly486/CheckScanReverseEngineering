package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvDailyTaskBinding implements ViewBinding {
    public final ImageView ivValueBackground;
    public final MaterialCardView mcvTask;
    private final MaterialCardView rootView;
    public final TextView tvTitle;
    public final TextView tvValue;

    private ItemRvDailyTaskBinding(MaterialCardView materialCardView, ImageView imageView, MaterialCardView materialCardView2, TextView textView, TextView textView2) {
        this.rootView = materialCardView;
        this.ivValueBackground = imageView;
        this.mcvTask = materialCardView2;
        this.tvTitle = textView;
        this.tvValue = textView2;
    }

    public static ItemRvDailyTaskBinding bind(View view) {
        int i = R.id.iv_value_background;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_value_background);
        if (imageView != null) {
            MaterialCardView materialCardView = (MaterialCardView) view;
            i = R.id.tv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (textView != null) {
                i = R.id.tv_value;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_value);
                if (textView2 != null) {
                    return new ItemRvDailyTaskBinding(materialCardView, imageView, materialCardView, textView, textView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvDailyTaskBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_daily_task, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvDailyTaskBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
