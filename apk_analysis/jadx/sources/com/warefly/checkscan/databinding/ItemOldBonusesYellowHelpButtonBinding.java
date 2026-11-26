package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class ItemOldBonusesYellowHelpButtonBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final AppCompatTextView tvFavoritePreviewsAllButton;
    public final AppCompatTextView tvHelpButton;
    public final AppCompatTextView tvTitle;

    private ItemOldBonusesYellowHelpButtonBinding(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.rootView = constraintLayout;
        this.tvFavoritePreviewsAllButton = appCompatTextView;
        this.tvHelpButton = appCompatTextView2;
        this.tvTitle = appCompatTextView3;
    }

    public static ItemOldBonusesYellowHelpButtonBinding bind(View view) {
        int i = R.id.tv_favorite_previews_all_button;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_favorite_previews_all_button);
        if (appCompatTextView != null) {
            i = R.id.tv_help_button;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_help_button);
            if (appCompatTextView2 != null) {
                i = R.id.tv_title;
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (appCompatTextView3 != null) {
                    return new ItemOldBonusesYellowHelpButtonBinding((ConstraintLayout) view, appCompatTextView, appCompatTextView2, appCompatTextView3);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemOldBonusesYellowHelpButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_old_bonuses_yellow_help_button, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemOldBonusesYellowHelpButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
