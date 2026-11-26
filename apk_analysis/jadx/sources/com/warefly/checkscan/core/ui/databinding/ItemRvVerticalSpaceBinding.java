package com.warefly.checkscan.core.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvVerticalSpaceBinding implements ViewBinding {
    private final Space rootView;
    public final Space spacer;

    private ItemRvVerticalSpaceBinding(Space space, Space space2) {
        this.rootView = space;
        this.spacer = space2;
    }

    public static ItemRvVerticalSpaceBinding bind(View view) {
        if (view != null) {
            Space space = (Space) view;
            return new ItemRvVerticalSpaceBinding(space, space);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvVerticalSpaceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_vertical_space, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public Space getRoot() {
        return this.rootView;
    }

    public static ItemRvVerticalSpaceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
