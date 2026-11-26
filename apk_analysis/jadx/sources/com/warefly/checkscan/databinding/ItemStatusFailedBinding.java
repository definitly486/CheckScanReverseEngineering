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
public final class ItemStatusFailedBinding implements ViewBinding {
    public final ImageButton btnCloseBanner;
    public final TextView btnSendAgainUprid;
    public final ImageView image;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvTitleFail;

    private ItemStatusFailedBinding(ConstraintLayout constraintLayout, ImageButton imageButton, TextView textView, ImageView imageView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnCloseBanner = imageButton;
        this.btnSendAgainUprid = textView;
        this.image = imageView;
        this.tvDescription = textView2;
        this.tvTitleFail = textView3;
    }

    public static ItemStatusFailedBinding bind(View view) {
        int i = R.id.btn_close_banner;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_close_banner);
        if (imageButton != null) {
            i = R.id.btn_send_again_uprid;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_send_again_uprid);
            if (textView != null) {
                i = R.id.image;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image);
                if (imageView != null) {
                    i = R.id.tv_description;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                    if (textView2 != null) {
                        i = R.id.tv_title_fail;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title_fail);
                        if (textView3 != null) {
                            return new ItemStatusFailedBinding((ConstraintLayout) view, imageButton, textView, imageView, textView2, textView3);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemStatusFailedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_status_failed, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemStatusFailedBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
