package com.warefly.checkscan.presentation.balance.promocodes.view;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarTitleTransparentBinding;
import com.warefly.checkscan.databinding.FragmentSelectPromocodeBinding;
import com.warefly.checkscan.presentation.balance.promocodes.dialogs.SelectPromocodeApproveDialog;
import com.warefly.checkscan.presentation.balance.promocodes.dialogs.SelectPromocodeDialog;
import com.warefly.checkscan.presentation.balance.promocodes.dialogs.SelectPromocodeErrorDialog;
import com.warefly.checkscan.presentation.balance.promocodes.dialogs.SelectPromocodeSuccessDialog;
import com.warefly.checkscan.presentation.balance.promocodes.presenter.SelectPromocodePresenter;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import defpackage.aa4;
import defpackage.b06;
import defpackage.b40;
import defpackage.bs6;
import defpackage.cw5;
import defpackage.e;
import defpackage.em7;
import defpackage.eu1;
import defpackage.fr6;
import defpackage.gh4;
import defpackage.gm7;
import defpackage.hm7;
import defpackage.im7;
import defpackage.j59;
import defpackage.jm7;
import defpackage.k57;
import defpackage.km7;
import defpackage.kx6;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.rb;
import defpackage.uf3;
import defpackage.x07;
import defpackage.y74;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class SelectPromocodeFragment extends BaseFragment<FragmentSelectPromocodeBinding> implements SelectPromocodeView {
    public static final a n;
    public static final /* synthetic */ ze4<Object>[] o;
    public static final y74 p;
    public final int f = R.layout.fragment_select_promocode;
    public final ol4 g = new ol4(FragmentSelectPromocodeBinding.class);
    public eu1 h;
    public SelectPromocodeDialog i;
    public SelectPromocodeApproveDialog j;
    public SelectPromocodeErrorDialog k;
    public SelectPromocodeSuccessDialog l;
    public OrdAdInfoDialog m;
    public SelectPromocodePresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            SelectPromocodeFragment.this.p().refreshPromocodes();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(SelectPromocodeFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;", 0);
        x07.a.getClass();
        o = new ze4[]{bs6Var};
        n = new a();
        p = kx6.n(0, 2);
    }

    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public final void copyPromocode(String str) {
        Object aVar;
        str.getClass();
        try {
            Object systemService = requireContext().getSystemService("clipboard");
            systemService.getClass();
            ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText(getString(R.string.select_promocode_promocode_copied_label), str));
            Toast.makeText(getContext(), getString(R.string.select_promocode_promocode_copied_text), 0).show();
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            Toast.makeText(getContext(), getString(R.string.select_promocode_promocode_copied_error), 0).show();
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        p().onBackPressed();
        return false;
    }

    public final void n() {
        SelectPromocodeSuccessDialog selectPromocodeSuccessDialog = this.l;
        if (selectPromocodeSuccessDialog != null) {
            selectPromocodeSuccessDialog.dismiss();
        }
        SelectPromocodeDialog selectPromocodeDialog = this.i;
        if (selectPromocodeDialog != null) {
            selectPromocodeDialog.dismiss();
        }
        SelectPromocodeApproveDialog selectPromocodeApproveDialog = this.j;
        if (selectPromocodeApproveDialog != null) {
            selectPromocodeApproveDialog.dismiss();
        }
        SelectPromocodeErrorDialog selectPromocodeErrorDialog = this.k;
        if (selectPromocodeErrorDialog != null) {
            selectPromocodeErrorDialog.dismiss();
        }
        OrdAdInfoDialog ordAdInfoDialog = this.m;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
    }

    public final FragmentSelectPromocodeBinding o() {
        return (FragmentSelectPromocodeBinding) this.g.getValue(this, o[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        LayoutToolbarTitleTransparentBinding layoutToolbarTitleTransparentBinding = o().toolbar;
        layoutToolbarTitleTransparentBinding.tvTitle.setText(getString(R.string.select_promocode_toolbar_title));
        ImageView imageView = layoutToolbarTitleTransparentBinding.ivBtnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new rb(this, 5)));
        RecyclerView recyclerView = o().rvContent;
        eu1 eu1Var = new eu1(new gm7(p()));
        this.h = eu1Var;
        recyclerView.setAdapter(eu1Var);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(requireContext(), 2);
        recyclerView.addOnScrollListener(new cw5(gridLayoutManager, new hm7(0, p(), SelectPromocodePresenter.class, "loadNextPage", "loadNextPage()V", 0)));
        recyclerView.setLayoutManager(gridLayoutManager);
        recyclerView.addItemDecoration(new im7());
        TextView textView = o().incldError.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new b()));
    }

    public final SelectPromocodePresenter p() {
        SelectPromocodePresenter selectPromocodePresenter = this.presenter;
        if (selectPromocodePresenter != null) {
            return selectPromocodePresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    public final SelectPromocodePresenter providePresenter() throws Exception {
        Bundle arguments = getArguments();
        if (arguments == null) {
            throw new Exception("Promocodes id can not be null for SelectPromocodeFragment");
        }
        return new SelectPromocodePresenter(arguments.getInt("PROMOCODES_ID_PARAM"), (b40) m2.c(b40.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), j(), null));
    }

    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public final void showApproveSheet(em7 em7Var) {
        em7Var.getClass();
        n();
        Context context = getContext();
        if (context != null) {
            SelectPromocodeApproveDialog selectPromocodeApproveDialog = new SelectPromocodeApproveDialog(context, em7Var, p());
            selectPromocodeApproveDialog.show();
            this.j = selectPromocodeApproveDialog;
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public final void showErrorLoading(boolean z) {
        ConstraintLayout root = o().incldError.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public final void showErrorSheet(jm7.a aVar) {
        aVar.getClass();
        n();
        Context context = getContext();
        if (context != null) {
            SelectPromocodeErrorDialog selectPromocodeErrorDialog = new SelectPromocodeErrorDialog(context, aVar);
            selectPromocodeErrorDialog.show();
            this.k = selectPromocodeErrorDialog;
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public final void showLoading(boolean z) {
        ConstraintLayout root = o().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
        RecyclerView recyclerView = o().rvContent;
        recyclerView.getClass();
        recyclerView.setVisibility(z ? 8 : 0);
    }

    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public final void showOrdDialog(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.m;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            this.m = ordAdInfoDialog2;
            ordAdInfoDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public final void showPromocodes(List<fr6> list) {
        list.getClass();
        eu1 eu1Var = this.h;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public final void showSelectingSheet(km7 km7Var) {
        km7Var.getClass();
        n();
        Context context = getContext();
        if (context != null) {
            SelectPromocodeDialog selectPromocodeDialog = new SelectPromocodeDialog(context, km7Var, p());
            selectPromocodeDialog.show();
            this.i = selectPromocodeDialog;
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public final void showSuccessSheet(jm7.b bVar) {
        bVar.getClass();
        n();
        Context context = getContext();
        if (context != null) {
            SelectPromocodeSuccessDialog selectPromocodeSuccessDialog = new SelectPromocodeSuccessDialog(context, bVar, p());
            selectPromocodeSuccessDialog.show();
            this.l = selectPromocodeSuccessDialog;
        }
    }
}
