package com.warefly.checkscan.presentation.update.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.databinding.FragmentUpdateAppBinding;
import com.warefly.checkscan.presentation.update.presenter.UpdatePresenter;
import com.warefly.checkscan.presentation.update.presenter.UpdateView;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.cl4;
import defpackage.e;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.nl3;
import defpackage.nm4;
import defpackage.oi9;
import defpackage.ol4;
import defpackage.po4;
import defpackage.qx6;
import defpackage.t79;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class UpdateFragment extends FlowFragment<FragmentUpdateAppBinding> implements UpdateView {
    public static final /* synthetic */ ze4<Object>[] m;
    public final int j = R.layout.fragment_update_app;
    public final ol4 k = new ol4(FragmentUpdateAppBinding.class);
    public final cl4 l = nm4.a(po4.SYNCHRONIZED, new c());
    public UpdatePresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            UpdatePresenter updatePresenter = UpdateFragment.this.presenter;
            if (updatePresenter != null) {
                updatePresenter.onUpdateClicked();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            UpdatePresenter updatePresenter = UpdateFragment.this.presenter;
            if (updatePresenter != null) {
                updatePresenter.onFeedbackClicked();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class c implements ll3<t79> {
        public c() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, t79] */
        @Override // defpackage.ll3
        public final t79 invoke() {
            return m2.c(t79.class, e.e(UpdateFragment.this), null, null);
        }
    }

    static {
        bs6 bs6Var = new bs6(UpdateFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentUpdateAppBinding;", 0);
        x07.a.getClass();
        m = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final void e(View view) {
        oi9.a(15, view, true);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.j;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentUpdateAppBinding fragmentUpdateAppBinding = (FragmentUpdateAppBinding) this.k.getValue(this, m[0]);
        TextView textView = fragmentUpdateAppBinding.btnUpdate;
        textView.getClass();
        textView.setOnClickListener(new lb7(new a()));
        TextView textView2 = fragmentUpdateAppBinding.btnFeedback;
        textView2.getClass();
        textView2.setOnClickListener(new lb7(new b()));
    }

    @Override // com.warefly.checkscan.presentation.update.presenter.UpdateView
    public final void openFeedback() {
        Context context = getContext();
        if (context != null) {
            qx6.a(context);
        }
    }

    @Override // com.warefly.checkscan.presentation.update.presenter.UpdateView
    public final void openMarketUrl() {
        Context context = getContext();
        if (context != null) {
            ((t79) this.l.getValue()).a(context);
        }
    }

    public final UpdatePresenter providePresenter() {
        return new UpdatePresenter();
    }
}
