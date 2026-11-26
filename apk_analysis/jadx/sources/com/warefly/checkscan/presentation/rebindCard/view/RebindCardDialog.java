package com.warefly.checkscan.presentation.rebindCard.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import com.warefly.checkscan.databinding.FragmentRebindCardBinding;
import com.warefly.checkscan.presentation.rebindCard.presenter.RebindCardPresenter;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.e;
import defpackage.gh4;
import defpackage.gl4;
import defpackage.i72;
import defpackage.j59;
import defpackage.lb7;
import defpackage.m2;
import defpackage.nl3;
import defpackage.p51;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class RebindCardDialog extends FullScreenDialog<FragmentRebindCardBinding> implements RebindCardView {
    public static final /* synthetic */ ze4<Object>[] d;
    public final gl4 c;
    public RebindCardPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            RebindCardPresenter rebindCardPresenter = RebindCardDialog.this.presenter;
            if (rebindCardPresenter != null) {
                rebindCardPresenter.onCloseClick();
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
            RebindCardPresenter rebindCardPresenter = RebindCardDialog.this.presenter;
            if (rebindCardPresenter != null) {
                rebindCardPresenter.onRebindClick();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(RebindCardDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentRebindCardBinding;", 0);
        x07.a.getClass();
        d = new ze4[]{bs6Var};
    }

    public RebindCardDialog() {
        super(R.layout.fragment_rebind_card);
        this.c = new gl4(FragmentRebindCardBinding.class);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentRebindCardBinding fragmentRebindCardBinding = (FragmentRebindCardBinding) this.c.getValue(this, d[0]);
        ImageButton imageButton = fragmentRebindCardBinding.btnClose;
        imageButton.getClass();
        imageButton.setOnClickListener(new lb7(new a()));
        TextView textView = fragmentRebindCardBinding.btnRebind;
        textView.getClass();
        textView.setOnClickListener(new lb7(new b()));
    }

    @Override // com.warefly.checkscan.presentation.rebindCard.view.RebindCardView
    public final void openCustomTab(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            i72.b(context, str);
        }
        dismiss();
    }

    public final RebindCardPresenter providePresenter() {
        return new RebindCardPresenter((p51) m2.c(p51.class, e.e(this), null, null));
    }
}
