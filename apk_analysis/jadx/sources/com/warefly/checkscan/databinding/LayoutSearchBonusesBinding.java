package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutSearchBonusesBinding implements ViewBinding {
    public final ImageView btnLocation;
    public final ImageView btnRemoveSearch;
    public final View btnSearch;
    public final AppCompatEditText etSearch;
    public final ImageView ivSearch;
    private final ConstraintLayout rootView;
    public final TextView tvSearchHint;

    private LayoutSearchBonusesBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, View view, AppCompatEditText appCompatEditText, ImageView imageView3, TextView textView) {
        this.rootView = constraintLayout;
        this.btnLocation = imageView;
        this.btnRemoveSearch = imageView2;
        this.btnSearch = view;
        this.etSearch = appCompatEditText;
        this.ivSearch = imageView3;
        this.tvSearchHint = textView;
    }

    public static LayoutSearchBonusesBinding bind(View view) {
        int i = R.id.btn_location;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_location);
        if (imageView != null) {
            i = R.id.btn_remove_search;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_remove_search);
            if (imageView2 != null) {
                i = R.id.btn_search;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.btn_search);
                if (viewFindChildViewById != null) {
                    i = R.id.et_search;
                    AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, R.id.et_search);
                    if (appCompatEditText != null) {
                        i = R.id.iv_search;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_search);
                        if (imageView3 != null) {
                            i = R.id.tv_search_hint;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_search_hint);
                            if (textView != null) {
                                return new LayoutSearchBonusesBinding((ConstraintLayout) view, imageView, imageView2, viewFindChildViewById, appCompatEditText, imageView3, textView);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutSearchBonusesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_search_bonuses, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutSearchBonusesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
