package com.warefly.checkscan.shared.infoBottomSheet.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class BottomSheetSimpleInfoBinding implements ViewBinding {
    public final TextView btnClose;
    public final ImageView ivIndicator;
    private final ConstraintLayout rootView;
    public final TextView tvBody;
    public final TextView tvTitle;

    private BottomSheetSimpleInfoBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnClose = textView;
        this.ivIndicator = imageView;
        this.tvBody = textView2;
        this.tvTitle = textView3;
    }

    public static BottomSheetSimpleInfoBinding bind(View view) {
        int i = R.id.btn_close;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (textView != null) {
            i = R.id.iv_indicator;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_indicator);
            if (imageView != null) {
                i = R.id.tv_body;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_body);
                if (textView2 != null) {
                    i = R.id.tv_title;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView3 != null) {
                        return new BottomSheetSimpleInfoBinding((ConstraintLayout) view, textView, imageView, textView2, textView3);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static BottomSheetSimpleInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.bottom_sheet_simple_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static BottomSheetSimpleInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
