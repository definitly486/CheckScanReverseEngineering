package com.warefly.checkscan.core.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class SlideProgressBinding implements ViewBinding {
    public final View backProgress;
    public final View frontProgress;
    public final View maxProgress;
    private final FrameLayout rootView;

    private SlideProgressBinding(FrameLayout frameLayout, View view, View view2, View view3) {
        this.rootView = frameLayout;
        this.backProgress = view;
        this.frontProgress = view2;
        this.maxProgress = view3;
    }

    public static SlideProgressBinding bind(View view) {
        int i = R.id.back_progress;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.back_progress);
        if (viewFindChildViewById != null) {
            i = R.id.front_progress;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.front_progress);
            if (viewFindChildViewById2 != null) {
                i = R.id.max_progress;
                View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.max_progress);
                if (viewFindChildViewById3 != null) {
                    return new SlideProgressBinding((FrameLayout) view, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static SlideProgressBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.slide_progress, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static SlideProgressBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
