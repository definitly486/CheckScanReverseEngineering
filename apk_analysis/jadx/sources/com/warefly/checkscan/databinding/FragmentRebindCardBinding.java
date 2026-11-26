package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentRebindCardBinding implements ViewBinding {
    public final ImageButton btnClose;
    public final TextView btnRebind;
    public final ImageView ivPlaceholder;
    private final ConstraintLayout rootView;
    public final AppCompatTextView tvSubtitle;
    public final TextView tvTitle;

    private FragmentRebindCardBinding(ConstraintLayout constraintLayout, ImageButton imageButton, TextView textView, ImageView imageView, AppCompatTextView appCompatTextView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnClose = imageButton;
        this.btnRebind = textView;
        this.ivPlaceholder = imageView;
        this.tvSubtitle = appCompatTextView;
        this.tvTitle = textView2;
    }

    public static FragmentRebindCardBinding bind(View view) {
        int i = R.id.btn_close;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageButton != null) {
            i = R.id.btn_rebind;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_rebind);
            if (textView != null) {
                i = R.id.iv_placeholder;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_placeholder);
                if (imageView != null) {
                    i = R.id.tv_subtitle;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                    if (appCompatTextView != null) {
                        i = R.id.tv_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView2 != null) {
                            return new FragmentRebindCardBinding((ConstraintLayout) view, imageButton, textView, imageView, appCompatTextView, textView2);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentRebindCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_rebind_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentRebindCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
