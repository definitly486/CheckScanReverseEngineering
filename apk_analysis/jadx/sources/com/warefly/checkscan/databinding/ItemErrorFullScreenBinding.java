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
public final class ItemErrorFullScreenBinding implements ViewBinding {
    public final TextView btnErrorBack;
    public final ImageButton btnErrorClose;
    public final ImageView image;
    private final ConstraintLayout rootView;
    public final TextView tvErrorDescription;
    public final TextView tvTitleError;

    private ItemErrorFullScreenBinding(ConstraintLayout constraintLayout, TextView textView, ImageButton imageButton, ImageView imageView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnErrorBack = textView;
        this.btnErrorClose = imageButton;
        this.image = imageView;
        this.tvErrorDescription = textView2;
        this.tvTitleError = textView3;
    }

    public static ItemErrorFullScreenBinding bind(View view) {
        int i = R.id.btn_error_back;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_error_back);
        if (textView != null) {
            i = R.id.btn_error_close;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_error_close);
            if (imageButton != null) {
                i = R.id.image;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image);
                if (imageView != null) {
                    i = R.id.tv_error_description;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_error_description);
                    if (textView2 != null) {
                        i = R.id.tv_title_error;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title_error);
                        if (textView3 != null) {
                            return new ItemErrorFullScreenBinding((ConstraintLayout) view, textView, imageButton, imageView, textView2, textView3);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemErrorFullScreenBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_error_full_screen, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemErrorFullScreenBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
