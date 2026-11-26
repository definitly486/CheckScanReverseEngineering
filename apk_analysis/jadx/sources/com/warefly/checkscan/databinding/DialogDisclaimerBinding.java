package com.warefly.checkscan.databinding;

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
public final class DialogDisclaimerBinding implements ViewBinding {
    public final ImageView btnClose;
    private final ConstraintLayout rootView;
    public final TextView tvDialogHeader;
    public final TextView tvNotCorrectFormatFirst;
    public final TextView tvNotCorrectFormatSecond;
    public final TextView tvNumFirst;
    public final TextView tvNumSecond;
    public final View viewDialogHeader;

    private DialogDisclaimerBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, View view) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.tvDialogHeader = textView;
        this.tvNotCorrectFormatFirst = textView2;
        this.tvNotCorrectFormatSecond = textView3;
        this.tvNumFirst = textView4;
        this.tvNumSecond = textView5;
        this.viewDialogHeader = view;
    }

    public static DialogDisclaimerBinding bind(View view) {
        int i = R.id.btn_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageView != null) {
            i = R.id.tv_dialog_header;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_dialog_header);
            if (textView != null) {
                i = R.id.tv_not_correct_format_first;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_not_correct_format_first);
                if (textView2 != null) {
                    i = R.id.tv_not_correct_format_second;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_not_correct_format_second);
                    if (textView3 != null) {
                        i = R.id.tv_num_first;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_num_first);
                        if (textView4 != null) {
                            i = R.id.tv_num_second;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_num_second);
                            if (textView5 != null) {
                                i = R.id.view_dialog_header;
                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_dialog_header);
                                if (viewFindChildViewById != null) {
                                    return new DialogDisclaimerBinding((ConstraintLayout) view, imageView, textView, textView2, textView3, textView4, textView5, viewFindChildViewById);
                                }
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogDisclaimerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_disclaimer, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogDisclaimerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
