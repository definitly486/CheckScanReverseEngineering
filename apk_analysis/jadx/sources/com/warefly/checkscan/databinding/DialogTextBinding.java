package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogTextBinding implements ViewBinding {
    public final TextView btnOk;
    private final ConstraintLayout rootView;
    public final NestedScrollView scroll;
    public final TextView tvText;

    private DialogTextBinding(ConstraintLayout constraintLayout, TextView textView, NestedScrollView nestedScrollView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnOk = textView;
        this.scroll = nestedScrollView;
        this.tvText = textView2;
    }

    public static DialogTextBinding bind(View view) {
        int i = R.id.btn_ok;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_ok);
        if (textView != null) {
            i = R.id.scroll;
            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, R.id.scroll);
            if (nestedScrollView != null) {
                i = R.id.tv_text;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_text);
                if (textView2 != null) {
                    return new DialogTextBinding((ConstraintLayout) view, textView, nestedScrollView, textView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogTextBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_text, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogTextBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
