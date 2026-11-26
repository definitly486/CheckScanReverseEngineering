package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogSystemIosOneButtonBinding implements ViewBinding {
    public final TextView btnAction;
    public final View divider;
    private final LinearLayout rootView;
    public final TextView tvMessage;
    public final TextView tvTitle;

    private DialogSystemIosOneButtonBinding(LinearLayout linearLayout, TextView textView, View view, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.btnAction = textView;
        this.divider = view;
        this.tvMessage = textView2;
        this.tvTitle = textView3;
    }

    public static DialogSystemIosOneButtonBinding bind(View view) {
        int i = R.id.btn_action;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (textView != null) {
            i = R.id.divider;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
            if (viewFindChildViewById != null) {
                i = R.id.tv_message;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_message);
                if (textView2 != null) {
                    i = R.id.tv_title;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView3 != null) {
                        return new DialogSystemIosOneButtonBinding((LinearLayout) view, textView, viewFindChildViewById, textView2, textView3);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogSystemIosOneButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_system_ios_one_button, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogSystemIosOneButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
