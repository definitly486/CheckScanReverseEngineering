package com.warefly.checkscan.support.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutSimpleTryAgainBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutSpinnerLoadingBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentSupportSectionsBinding implements ViewBinding {
    public final LayoutSpinnerLoadingBinding incldLoading;
    public final LayoutSimpleTryAgainBinding incldTryAgain;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;

    private FragmentSupportSectionsBinding(ConstraintLayout constraintLayout, LayoutSpinnerLoadingBinding layoutSpinnerLoadingBinding, LayoutSimpleTryAgainBinding layoutSimpleTryAgainBinding, RecyclerView recyclerView) {
        this.rootView = constraintLayout;
        this.incldLoading = layoutSpinnerLoadingBinding;
        this.incldTryAgain = layoutSimpleTryAgainBinding;
        this.rvContent = recyclerView;
    }

    public static FragmentSupportSectionsBinding bind(View view) {
        int i = R.id.incld_loading;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_loading);
        if (viewFindChildViewById != null) {
            LayoutSpinnerLoadingBinding layoutSpinnerLoadingBindingBind = LayoutSpinnerLoadingBinding.bind(viewFindChildViewById);
            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.incld_try_again);
            if (viewFindChildViewById2 != null) {
                LayoutSimpleTryAgainBinding layoutSimpleTryAgainBindingBind = LayoutSimpleTryAgainBinding.bind(viewFindChildViewById2);
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                if (recyclerView != null) {
                    return new FragmentSupportSectionsBinding((ConstraintLayout) view, layoutSpinnerLoadingBindingBind, layoutSimpleTryAgainBindingBind, recyclerView);
                }
                i = R.id.rv_content;
            } else {
                i = R.id.incld_try_again;
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentSupportSectionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_support_sections, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentSupportSectionsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
