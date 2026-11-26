package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentSuccessBinding implements ViewBinding {
    public final ImageView btnCloseSuccess;
    public final TextView btnSuccessAction;
    public final ImageView ivDoneCoin;
    private final ScrollView rootView;
    public final TextView tvSuccessDescription;
    public final TextView tvSuccessTitle;
    public final View vSpace;

    private FragmentSuccessBinding(ScrollView scrollView, ImageView imageView, TextView textView, ImageView imageView2, TextView textView2, TextView textView3, View view) {
        this.rootView = scrollView;
        this.btnCloseSuccess = imageView;
        this.btnSuccessAction = textView;
        this.ivDoneCoin = imageView2;
        this.tvSuccessDescription = textView2;
        this.tvSuccessTitle = textView3;
        this.vSpace = view;
    }

    public static FragmentSuccessBinding bind(View view) {
        int i = R.id.btn_close_success;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close_success);
        if (imageView != null) {
            i = R.id.btn_success_action;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_success_action);
            if (textView != null) {
                i = R.id.iv_done_coin;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_done_coin);
                if (imageView2 != null) {
                    i = R.id.tv_success_description;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_success_description);
                    if (textView2 != null) {
                        i = R.id.tv_success_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_success_title);
                        if (textView3 != null) {
                            i = R.id.v_space;
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.v_space);
                            if (viewFindChildViewById != null) {
                                return new FragmentSuccessBinding((ScrollView) view, imageView, textView, imageView2, textView2, textView3, viewFindChildViewById);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentSuccessBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_success, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static FragmentSuccessBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
