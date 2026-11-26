package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvCheckboxTaskStepsDescriptionBinding implements ViewBinding {
    private final TextView rootView;
    public final TextView tvDescription;

    private ItemRvCheckboxTaskStepsDescriptionBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.tvDescription = textView2;
    }

    public static ItemRvCheckboxTaskStepsDescriptionBinding bind(View view) {
        if (view != null) {
            TextView textView = (TextView) view;
            return new ItemRvCheckboxTaskStepsDescriptionBinding(textView, textView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvCheckboxTaskStepsDescriptionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_checkbox_task_steps_description, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    public static ItemRvCheckboxTaskStepsDescriptionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
