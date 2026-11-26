package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogRegistrationCardBinding implements ViewBinding {
    public final TextView btnCancel;
    public final TextView btnConfirm;
    public final ImageView image;
    private final LinearLayout rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private DialogRegistrationCardBinding(LinearLayout linearLayout, TextView textView, TextView textView2, ImageView imageView, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.btnCancel = textView;
        this.btnConfirm = textView2;
        this.image = imageView;
        this.tvDescription = textView3;
        this.tvTitle = textView4;
    }

    public static DialogRegistrationCardBinding bind(View view) {
        int i = R.id.btn_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_cancel);
        if (textView != null) {
            i = R.id.btn_confirm;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_confirm);
            if (textView2 != null) {
                i = R.id.image;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image);
                if (imageView != null) {
                    i = R.id.tv_description;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                    if (textView3 != null) {
                        i = R.id.tv_title;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView4 != null) {
                            return new DialogRegistrationCardBinding((LinearLayout) view, textView, textView2, imageView, textView3, textView4);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogRegistrationCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_registration_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogRegistrationCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
