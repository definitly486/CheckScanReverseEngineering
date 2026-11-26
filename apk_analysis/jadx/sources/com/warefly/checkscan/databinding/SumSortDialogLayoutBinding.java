package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class SumSortDialogLayoutBinding implements ViewBinding {
    public final ImageView btnClose;
    public final TextView btnDiscard;
    public final TextView btnShow;
    public final TextInputEditText etFrom;
    public final TextInputEditText etUnder;
    private final ConstraintLayout rootView;
    public final TextInputLayout tilFrom;
    public final TextInputLayout tilUnder;
    public final TextView tvDialogHeader;
    public final View viewHeader;

    private SumSortDialogLayoutBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2, TextInputEditText textInputEditText, TextInputEditText textInputEditText2, TextInputLayout textInputLayout, TextInputLayout textInputLayout2, TextView textView3, View view) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.btnDiscard = textView;
        this.btnShow = textView2;
        this.etFrom = textInputEditText;
        this.etUnder = textInputEditText2;
        this.tilFrom = textInputLayout;
        this.tilUnder = textInputLayout2;
        this.tvDialogHeader = textView3;
        this.viewHeader = view;
    }

    public static SumSortDialogLayoutBinding bind(View view) {
        int i = R.id.btn_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageView != null) {
            i = R.id.btn_discard;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_discard);
            if (textView != null) {
                i = R.id.btn_show;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_show);
                if (textView2 != null) {
                    i = R.id.et_from;
                    TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_from);
                    if (textInputEditText != null) {
                        i = R.id.et_under;
                        TextInputEditText textInputEditText2 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_under);
                        if (textInputEditText2 != null) {
                            i = R.id.til_from;
                            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_from);
                            if (textInputLayout != null) {
                                i = R.id.til_under;
                                TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_under);
                                if (textInputLayout2 != null) {
                                    i = R.id.tv_dialog_header;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_dialog_header);
                                    if (textView3 != null) {
                                        i = R.id.view_header;
                                        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_header);
                                        if (viewFindChildViewById != null) {
                                            return new SumSortDialogLayoutBinding((ConstraintLayout) view, imageView, textView, textView2, textInputEditText, textInputEditText2, textInputLayout, textInputLayout2, textView3, viewFindChildViewById);
                                        }
                                    }
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

    public static SumSortDialogLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.sum_sort_dialog_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static SumSortDialogLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
