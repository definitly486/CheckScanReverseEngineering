package com.warefly.checkscan.presentation.qrHand.howFindData.view;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentHowFindDataInChequeBinding;
import com.warefly.checkscan.presentation.qrHand.howFindData.presenter.HowFindDataInChequePresenter;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.e;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class HowFindDataInChequeFragment extends BaseFragment<FragmentHowFindDataInChequeBinding> implements HowFindDataInChequeView {
    public static final /* synthetic */ ze4<Object>[] h;
    public final int f = R.layout.fragment_how_find_data_in_cheque;
    public final ol4 g = new ol4(FragmentHowFindDataInChequeBinding.class);
    public HowFindDataInChequePresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            HowFindDataInChequePresenter howFindDataInChequePresenter = HowFindDataInChequeFragment.this.presenter;
            if (howFindDataInChequePresenter != null) {
                howFindDataInChequePresenter.onBackClick();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(HowFindDataInChequeFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentHowFindDataInChequeBinding;", 0);
        x07.a.getClass();
        h = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ImageView imageView = ((FragmentHowFindDataInChequeBinding) this.g.getValue(this, h[0])).btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
    }

    public final HowFindDataInChequePresenter providePresenter() {
        return new HowFindDataInChequePresenter((uf3) n2.c(uf3.class, e.e(this), j(), null));
    }
}
