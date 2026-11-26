package com.warefly.checkscan.support.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarTitle18TransparentBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentSupportQuestionsBinding implements ViewBinding {
    public final LayoutToolbarTitle18TransparentBinding incldToolbar;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;

    private FragmentSupportQuestionsBinding(ConstraintLayout constraintLayout, LayoutToolbarTitle18TransparentBinding layoutToolbarTitle18TransparentBinding, RecyclerView recyclerView) {
        this.rootView = constraintLayout;
        this.incldToolbar = layoutToolbarTitle18TransparentBinding;
        this.rvContent = recyclerView;
    }

    public static FragmentSupportQuestionsBinding bind(View view) {
        int i = R.id.incld_toolbar;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_toolbar);
        if (viewFindChildViewById != null) {
            LayoutToolbarTitle18TransparentBinding layoutToolbarTitle18TransparentBindingBind = LayoutToolbarTitle18TransparentBinding.bind(viewFindChildViewById);
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
            if (recyclerView != null) {
                return new FragmentSupportQuestionsBinding((ConstraintLayout) view, layoutToolbarTitle18TransparentBindingBind, recyclerView);
            }
            i = R.id.rv_content;
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentSupportQuestionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_support_questions, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentSupportQuestionsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
