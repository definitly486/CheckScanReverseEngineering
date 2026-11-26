package com.warefly.checkscan.bonuses.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class ItemRvTitleWithSubtitleBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final AppCompatTextView tvSubtitle;
    public final AppCompatTextView tvTitle;

    private ItemRvTitleWithSubtitleBinding(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = linearLayout;
        this.tvSubtitle = appCompatTextView;
        this.tvTitle = appCompatTextView2;
    }

    public static ItemRvTitleWithSubtitleBinding bind(View view) {
        int i = R.id.tv_subtitle;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
        if (appCompatTextView != null) {
            i = R.id.tv_title;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (appCompatTextView2 != null) {
                return new ItemRvTitleWithSubtitleBinding((LinearLayout) view, appCompatTextView, appCompatTextView2);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvTitleWithSubtitleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_title_with_subtitle, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvTitleWithSubtitleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
