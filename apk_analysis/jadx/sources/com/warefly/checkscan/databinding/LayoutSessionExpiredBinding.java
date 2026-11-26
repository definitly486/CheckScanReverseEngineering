package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutSessionExpiredBinding implements ViewBinding {
    public final TextView btnFeedback;
    public final Button btnGo;
    private final ConstraintLayout rootView;
    public final TextView tvAppVersion;
    public final TextView tvDescription;
    public final TextView tvTitle;
    public final Group viewMessage;

    private LayoutSessionExpiredBinding(ConstraintLayout constraintLayout, TextView textView, Button button, TextView textView2, TextView textView3, TextView textView4, Group group) {
        this.rootView = constraintLayout;
        this.btnFeedback = textView;
        this.btnGo = button;
        this.tvAppVersion = textView2;
        this.tvDescription = textView3;
        this.tvTitle = textView4;
        this.viewMessage = group;
    }

    public static LayoutSessionExpiredBinding bind(View view) {
        int i = R.id.btn_feedback;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_feedback);
        if (textView != null) {
            i = R.id.btn_go;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_go);
            if (button != null) {
                i = R.id.tv_app_version;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_app_version);
                if (textView2 != null) {
                    i = R.id.tv_description;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                    if (textView3 != null) {
                        i = R.id.tv_title;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView4 != null) {
                            i = R.id.view_message;
                            Group group = (Group) ViewBindings.findChildViewById(view, R.id.view_message);
                            if (group != null) {
                                return new LayoutSessionExpiredBinding((ConstraintLayout) view, textView, button, textView2, textView3, textView4, group);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutSessionExpiredBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_session_expired, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutSessionExpiredBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
