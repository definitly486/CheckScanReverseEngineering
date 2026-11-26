package com.warefly.checkscan.support.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemSupportSectionsHeaderBinding implements ViewBinding {
    private final TextView rootView;

    private ItemSupportSectionsHeaderBinding(TextView textView) {
        this.rootView = textView;
    }

    public static ItemSupportSectionsHeaderBinding bind(View view) {
        if (view != null) {
            return new ItemSupportSectionsHeaderBinding((TextView) view);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemSupportSectionsHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_support_sections_header, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    public static ItemSupportSectionsHeaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
