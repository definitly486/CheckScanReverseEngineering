package com.warefly.checkscan.personalform.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class PersonalDataFormPopupDropDownItemBinding implements ViewBinding {
    private final TextView rootView;
    public final TextView tvTitle;

    private PersonalDataFormPopupDropDownItemBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.tvTitle = textView2;
    }

    public static PersonalDataFormPopupDropDownItemBinding bind(View view) {
        if (view != null) {
            TextView textView = (TextView) view;
            return new PersonalDataFormPopupDropDownItemBinding(textView, textView);
        }
        o2.d("rootView");
        return null;
    }

    public static PersonalDataFormPopupDropDownItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.personal_data_form_popup_drop_down_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    public static PersonalDataFormPopupDropDownItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
