package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutGreetingSignUpMessageBinding implements ViewBinding {
    public final Button btnGo;
    private final ConstraintLayout rootView;
    public final TextView tvClarification;
    public final TextView tvFnsClarification;
    public final TextView tvGreeting;

    private LayoutGreetingSignUpMessageBinding(ConstraintLayout constraintLayout, Button button, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnGo = button;
        this.tvClarification = textView;
        this.tvFnsClarification = textView2;
        this.tvGreeting = textView3;
    }

    public static LayoutGreetingSignUpMessageBinding bind(View view) {
        int i = R.id.btn_go;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_go);
        if (button != null) {
            i = R.id.tv_clarification;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_clarification);
            if (textView != null) {
                i = R.id.tv_fns_clarification;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fns_clarification);
                if (textView2 != null) {
                    i = R.id.tv_greeting;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_greeting);
                    if (textView3 != null) {
                        return new LayoutGreetingSignUpMessageBinding((ConstraintLayout) view, button, textView, textView2, textView3);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutGreetingSignUpMessageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_greeting_sign_up_message, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutGreetingSignUpMessageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
