package com.warefly.checkscan.presentation.scanner.info.view;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarBackIconBinding;
import com.warefly.checkscan.presentation.scanner.info.presenter.ScannerInfoPresenter;
import com.warefly.checkscan.scannerml.databinding.FragmentScannerInfoBinding;
import defpackage.aa4;
import defpackage.ae7;
import defpackage.bs6;
import defpackage.c58;
import defpackage.cl4;
import defpackage.e;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.nm4;
import defpackage.ol4;
import defpackage.po4;
import defpackage.pz3;
import defpackage.s47;
import defpackage.uf3;
import defpackage.v05;
import defpackage.wd7;
import defpackage.x07;
import defpackage.zd7;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ScannerInfoFragment extends BaseFragment<FragmentScannerInfoBinding> implements ScannerInfoView {
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_scanner_info;
    public final ol4 g = new ol4(FragmentScannerInfoBinding.class);
    public final cl4 h = nm4.a(po4.SYNCHRONIZED, new b());
    public eu1 i;
    public ScannerInfoPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ScannerInfoPresenter scannerInfoPresenter = ScannerInfoFragment.this.presenter;
            if (scannerInfoPresenter != null) {
                scannerInfoPresenter.onBackClick();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class b implements ll3<v05> {
        public b() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, v05] */
        @Override // defpackage.ll3
        public final v05 invoke() {
            return m2.c(v05.class, e.e(ScannerInfoFragment.this), null, null);
        }
    }

    static {
        bs6 bs6Var = new bs6(ScannerInfoFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerInfoBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ze4<?>[] ze4VarArr = j;
        ze4<?> ze4Var = ze4VarArr[0];
        ol4 ol4Var = this.g;
        RecyclerView recyclerView = ((FragmentScannerInfoBinding) ol4Var.getValue(this, ze4Var)).rvContent;
        eu1 eu1Var = new eu1(new wd7((v05) this.h.getValue()), new ae7(zd7.c));
        this.i = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new c58(20));
        LayoutToolbarBackIconBinding layoutToolbarBackIconBinding = ((FragmentScannerInfoBinding) ol4Var.getValue(this, ze4VarArr[0])).toolbar;
        ImageView imageView = layoutToolbarBackIconBinding.btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
        layoutToolbarBackIconBinding.tvHeader.setText(getString(R.string.scanner_info_toolbar_title));
    }

    public final ScannerInfoPresenter providePresenter() {
        return new ScannerInfoPresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (s47) m2.c(s47.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.scanner.info.view.ScannerInfoView
    public final void showContent(List<? extends pz3> list) {
        list.getClass();
        eu1 eu1Var = this.i;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }
}
