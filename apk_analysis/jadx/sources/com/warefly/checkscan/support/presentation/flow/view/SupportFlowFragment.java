package com.warefly.checkscan.support.presentation.flow.view;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.support.presentation.flow.SupportReason;
import com.warefly.checkscan.support.presentation.flow.presenter.SupportFlowPresenter;
import defpackage.bs6;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class SupportFlowFragment extends FlowFragment<LayoutContainerBinding> implements SupportFlowView {
    public static final a j;
    public static final /* synthetic */ ze4<Object>[] k;
    public SupportFlowPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(SupportFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
        j = new a();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0028  */
    public final SupportFlowPresenter providePresenter() {
        SupportReason supportReason;
        Parcelable parcelable;
        Bundle arguments = getArguments();
        if (arguments == null) {
            supportReason = SupportReason.Sections.b;
        } else {
            if (Build.VERSION.SDK_INT >= 33) {
                parcelable = (Parcelable) arguments.getParcelable("REASON_FLOW_KEY", SupportReason.class);
            } else {
                Parcelable parcelable2 = arguments.getParcelable("REASON_FLOW_KEY");
                if (!(parcelable2 instanceof SupportReason)) {
                    parcelable2 = null;
                }
                parcelable = (SupportReason) parcelable2;
            }
            supportReason = (SupportReason) parcelable;
            if (supportReason == null) {
                supportReason = SupportReason.Sections.b;
            }
        }
        return new SupportFlowPresenter(supportReason);
    }
}
