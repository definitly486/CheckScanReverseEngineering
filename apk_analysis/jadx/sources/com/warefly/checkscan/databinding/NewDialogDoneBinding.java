package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class NewDialogDoneBinding implements ViewBinding {
    public final ImageButton btnCloseDialog;
    public final TextView btnOk;
    public final ImageView ivDialogIcon;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvSubDescription;

    private NewDialogDoneBinding(ConstraintLayout constraintLayout, ImageButton imageButton, TextView textView, ImageView imageView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnCloseDialog = imageButton;
        this.btnOk = textView;
        this.ivDialogIcon = imageView;
        this.tvDescription = textView2;
        this.tvSubDescription = textView3;
    }

    public static NewDialogDoneBinding bind(View view) {
        int i = R.id.btn_close_dialog;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_close_dialog);
        if (imageButton != null) {
            i = R.id.btn_ok;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_ok);
            if (textView != null) {
                i = R.id.iv_dialog_icon;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_dialog_icon);
                if (imageView != null) {
                    i = R.id.tv_description;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                    if (textView2 != null) {
                        i = R.id.tv_sub_description;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sub_description);
                        if (textView3 != null) {
                            return new NewDialogDoneBinding((ConstraintLayout) view, imageButton, textView, imageView, textView2, textView3);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static NewDialogDoneBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.new_dialog_done, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static NewDialogDoneBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
