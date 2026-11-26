package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemQuestionBinding implements ViewBinding {
    public final ImageView btnExpand;
    private final MaterialCardView rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private ItemQuestionBinding(MaterialCardView materialCardView, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = materialCardView;
        this.btnExpand = imageView;
        this.tvDescription = textView;
        this.tvTitle = textView2;
    }

    public static ItemQuestionBinding bind(View view) {
        int i = R.id.btn_expand;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_expand);
        if (imageView != null) {
            i = R.id.tv_description;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
            if (textView != null) {
                i = R.id.tv_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView2 != null) {
                    return new ItemQuestionBinding((MaterialCardView) view, imageView, textView, textView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemQuestionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_question, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemQuestionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
