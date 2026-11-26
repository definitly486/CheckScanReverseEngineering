package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemPollBinding implements ViewBinding {
    public final ImageView btnClose;
    public final TextView btnComplete;
    public final Group groupContent;
    private final ConstraintLayout rootView;
    public final RecyclerView rvVariants;
    public final TextView tvCompletion;
    public final TextView tvTitle;

    private ItemPollBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, Group group, RecyclerView recyclerView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.btnComplete = textView;
        this.groupContent = group;
        this.rvVariants = recyclerView;
        this.tvCompletion = textView2;
        this.tvTitle = textView3;
    }

    public static ItemPollBinding bind(View view) {
        int i = R.id.btn_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageView != null) {
            i = R.id.btn_complete;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_complete);
            if (textView != null) {
                i = R.id.group_content;
                Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_content);
                if (group != null) {
                    i = R.id.rv_variants;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_variants);
                    if (recyclerView != null) {
                        i = R.id.tv_completion;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_completion);
                        if (textView2 != null) {
                            i = R.id.tv_title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView3 != null) {
                                return new ItemPollBinding((ConstraintLayout) view, imageView, textView, group, recyclerView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemPollBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_poll, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemPollBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
