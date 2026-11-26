package com.warefly.checkscan.support.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemSupportQuestionBinding implements ViewBinding {
    public final TextView btnAction;
    public final ImageView ivOpen;
    private final MaterialCardView rootView;
    public final RecyclerView rvChildren;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private ItemSupportQuestionBinding(MaterialCardView materialCardView, TextView textView, ImageView imageView, RecyclerView recyclerView, TextView textView2, TextView textView3) {
        this.rootView = materialCardView;
        this.btnAction = textView;
        this.ivOpen = imageView;
        this.rvChildren = recyclerView;
        this.tvDescription = textView2;
        this.tvTitle = textView3;
    }

    public static ItemSupportQuestionBinding bind(View view) {
        int i = R.id.btn_action;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (textView != null) {
            i = R.id.iv_open;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_open);
            if (imageView != null) {
                i = R.id.rv_children;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_children);
                if (recyclerView != null) {
                    i = R.id.tv_description;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                    if (textView2 != null) {
                        i = R.id.tv_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView3 != null) {
                            return new ItemSupportQuestionBinding((MaterialCardView) view, textView, imageView, recyclerView, textView2, textView3);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemSupportQuestionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_support_question, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemSupportQuestionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
