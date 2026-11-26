package com.warefly.checkscan.presentation.balance.main.view;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.FragmentBalanceBinding;
import com.warefly.checkscan.databinding.LayoutToolbarBalanceBinding;
import com.warefly.checkscan.presentation.balance.main.dialogs.AboutAccrualCashbackDialog;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;
import com.warefly.checkscan.presentation.balance.managementAlfa.ManagementAlfaFullScreenDialog;
import com.warefly.checkscan.presentation.balance.transferCashback.card.view.TransferCardDialog;
import com.warefly.checkscan.presentation.balance.transferCashback.phone.view.TransferPhoneDialog;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalFragment;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import defpackage.a20;
import defpackage.a60;
import defpackage.aa4;
import defpackage.b06;
import defpackage.b20;
import defpackage.b36;
import defpackage.b40;
import defpackage.b50;
import defpackage.b60;
import defpackage.bs6;
import defpackage.c50;
import defpackage.c70;
import defpackage.d70;
import defpackage.e;
import defpackage.e20;
import defpackage.e30;
import defpackage.e50;
import defpackage.eu1;
import defpackage.f30;
import defpackage.f50;
import defpackage.gh4;
import defpackage.h50;
import defpackage.hy8;
import defpackage.i50;
import defpackage.i70;
import defpackage.iw2;
import defpackage.j20;
import defpackage.j59;
import defpackage.jf6;
import defpackage.k07;
import defpackage.k20;
import defpackage.k30;
import defpackage.k57;
import defpackage.k60;
import defpackage.lb7;
import defpackage.m2;
import defpackage.m50;
import defpackage.m8;
import defpackage.mk1;
import defpackage.mo7;
import defpackage.n2;
import defpackage.n30;
import defpackage.n50;
import defpackage.n70;
import defpackage.nl3;
import defpackage.o20;
import defpackage.o70;
import defpackage.ol4;
import defpackage.p20;
import defpackage.pl2;
import defpackage.pz3;
import defpackage.q10;
import defpackage.qn1;
import defpackage.qw3;
import defpackage.r10;
import defpackage.r20;
import defpackage.r50;
import defpackage.s20;
import defpackage.s50;
import defpackage.t20;
import defpackage.t50;
import defpackage.t70;
import defpackage.u10;
import defpackage.u20;
import defpackage.u30;
import defpackage.u70;
import defpackage.u96;
import defpackage.uf3;
import defpackage.uw5;
import defpackage.v10;
import defpackage.v20;
import defpackage.w00;
import defpackage.w20;
import defpackage.w50;
import defpackage.x07;
import defpackage.x10;
import defpackage.x20;
import defpackage.x50;
import defpackage.x70;
import defpackage.y10;
import defpackage.y30;
import defpackage.y40;
import defpackage.z20;
import defpackage.z30;
import defpackage.z40;
import defpackage.z50;
import defpackage.z60;
import defpackage.ze4;
import defpackage.zl2;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class BalanceFragment extends WithdrawalFragment<FragmentBalanceBinding, BalancePresenter> implements BalanceView {
    public static final a u;
    public static final /* synthetic */ ze4<Object>[] v;
    public final int m = R.layout.fragment_balance;
    public final ol4 n = new ol4(FragmentBalanceBinding.class);
    public final String o = "BALANCE_FRAGMENT_TAG";
    public final int p = pl2.e(8);
    public BalancePresenter presenter;
    public k07 q;
    public AboutAccrualCashbackDialog r;
    public OrdAdInfoDialog s;
    public eu1 t;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<Integer, Object> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final Object invoke(Integer num) {
            m8 m8Var;
            List<pz3> list;
            int iIntValue = num.intValue();
            eu1 eu1Var = BalanceFragment.this.t;
            if (eu1Var == null || (m8Var = eu1Var.i) == null || (list = m8Var.b) == null) {
                return null;
            }
            return (pz3) qn1.W(iIntValue, list);
        }
    }

    public static final class c extends gh4 implements nl3<Integer, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Integer num) {
            BalanceFragment.this.n().sendPromoBannerShown(num.intValue());
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BalanceFragment.this.n().onSupportClick();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(BalanceFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;", 0);
        x07.a.getClass();
        v = new ze4[]{bs6Var};
        u = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.m;
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalFragment
    public final String o() {
        return this.o;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        k07 k07Var = this.q;
        if (k07Var != null) {
            k07Var.b(z);
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        q().rvContent.setItemAnimator(null);
        RecyclerView recyclerView = q().rvContent;
        int i = 0;
        eu1 eu1Var = new eu1(new d70(c70.c), new s20(r20.c, 0), new y10(x10.c, 0), new a60(z50.c), new e30(z20.c), new r10(q10.c, i), new w20(v20.c, 0), new v10(u10.c, 0), new s50(r50.c), new b20(a20.c, i), new c50(b50.c), new z40(y40.c), new f50(e50.c, 0), new i50(h50.c, 0), new u30(n()), new k30(n()), new m50(n()), new w50(n()), new o20(n()), new n70(n()), new j20(n()), new t70(n()), new i70(n()), new y30(n()), new e20(n()), new k60(n()), new n50(n()), new x70(n()), new n30(n()), new z60(n()));
        this.t = eu1Var;
        recyclerView.setAdapter(eu1Var);
        LayoutToolbarBalanceBinding layoutToolbarBalanceBinding = q().toolbar;
        View view2 = layoutToolbarBalanceBinding.btnAction;
        view2.getClass();
        view2.setOnClickListener(new lb7(new d()));
        layoutToolbarBalanceBinding.tvTitle.setText(getString(R.string.new_balance_title));
        layoutToolbarBalanceBinding.tvSupport.setText(getString(R.string.new_balance_toolbar_support_title));
        q().swipeToRefresh.setOnRefreshListener(new u20(this, 0));
        RecyclerView recyclerView2 = q().rvContent;
        recyclerView2.getClass();
        k07 k07Var = new k07(recyclerView2, new b(), new c(), 0.8f);
        k07Var.b(isHidden());
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        k07Var.a(viewLifecycleOwner);
        this.q = k07Var;
    }

    @Override // com.warefly.checkscan.presentation.balance.main.view.BalanceView
    public final void openMail(Uri uri, String str) {
        Object aVar;
        FragmentActivity activity;
        uri.getClass();
        str.getClass();
        Intent intent = new Intent("android.intent.action.SENDTO", uri);
        intent.putExtra("android.intent.extra.SUBJECT", str);
        try {
            startActivity(intent);
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) == null || (activity = getActivity()) == null) {
            return;
        }
        Toast.makeText(activity, getString(R.string.sign_in_up_email_app_not_found), 0).show();
    }

    public final BalancePresenter providePresenter() {
        b40 b40Var = (b40) m2.c(b40.class, e.e(this), null, null);
        uw5 uw5Var = (uw5) m2.c(uw5.class, e.e(this), null, null);
        mo7 mo7Var = (mo7) m2.c(mo7.class, e.e(this), null, null);
        zl2 zl2Var = (zl2) m2.c(zl2.class, e.e(this), null, null);
        uf3 uf3Var = (uf3) n2.c(uf3.class, e.e(this), j(), null);
        Bundle arguments = getArguments();
        return new BalancePresenter(b40Var, uw5Var, mo7Var, zl2Var, uf3Var, (jf6) m2.c(jf6.class, e.e(this), null, null), (mk1) m2.c(mk1.class, e.e(this), null, null), (iw2) m2.c(iw2.class, e.e(this), null, null), arguments != null ? arguments.getBoolean("OPEN_ALFA") : false);
    }

    public final FragmentBalanceBinding q() {
        return (FragmentBalanceBinding) this.n.getValue(this, v[0]);
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalFragment
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public final BalancePresenter n() {
        BalancePresenter balancePresenter = this.presenter;
        if (balancePresenter != null) {
            return balancePresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.presentation.balance.main.view.BalanceView
    public final void showAboutAccrualCashbackDialog(w00 w00Var) {
        w00Var.getClass();
        AboutAccrualCashbackDialog aboutAccrualCashbackDialog = this.r;
        if (aboutAccrualCashbackDialog != null) {
            aboutAccrualCashbackDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            AboutAccrualCashbackDialog aboutAccrualCashbackDialog2 = new AboutAccrualCashbackDialog(context, w00Var.b, w00Var.a);
            aboutAccrualCashbackDialog2.show();
            this.r = aboutAccrualCashbackDialog2;
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.main.view.BalanceView
    public final void showContent(List<? extends pz3> list) {
        list.getClass();
        eu1 eu1Var = this.t;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
        RecyclerView recyclerView = q().rvContent;
        if (recyclerView.getItemDecorationCount() > 0) {
            recyclerView.removeItemDecorationAt(0);
        }
        recyclerView.addItemDecoration(new qw3(16, 16), 0);
        if (recyclerView.getItemDecorationCount() > 1) {
            recyclerView.removeItemDecorationAt(1);
        }
        eu1 eu1Var2 = this.t;
        Integer numValueOf = Integer.valueOf(eu1Var2 != null ? eu1Var2.i.d(b60.class) : Integer.MIN_VALUE);
        eu1 eu1Var3 = this.t;
        Integer numValueOf2 = Integer.valueOf(eu1Var3 != null ? eu1Var3.i.d(f30.class) : Integer.MIN_VALUE);
        eu1 eu1Var4 = this.t;
        Integer numValueOf3 = Integer.valueOf(eu1Var4 != null ? eu1Var4.i.d(x20.class) : Integer.MIN_VALUE);
        eu1 eu1Var5 = this.t;
        Integer numValueOf4 = Integer.valueOf(eu1Var5 != null ? eu1Var5.i.d(t20.class) : Integer.MIN_VALUE);
        eu1 eu1Var6 = this.t;
        Integer numValueOf5 = Integer.valueOf(eu1Var6 != null ? eu1Var6.i.d(z30.class) : Integer.MIN_VALUE);
        eu1 eu1Var7 = this.t;
        Integer numValueOf6 = Integer.valueOf(eu1Var7 != null ? eu1Var7.i.d(x50.class) : Integer.MIN_VALUE);
        eu1 eu1Var8 = this.t;
        Integer numValueOf7 = Integer.valueOf(eu1Var8 != null ? eu1Var8.i.d(o70.class) : Integer.MIN_VALUE);
        eu1 eu1Var9 = this.t;
        Integer numValueOf8 = Integer.valueOf(eu1Var9 != null ? eu1Var9.i.d(u70.class) : Integer.MIN_VALUE);
        eu1 eu1Var10 = this.t;
        Integer numValueOf9 = Integer.valueOf(eu1Var10 != null ? eu1Var10.i.d(k20.class) : Integer.MIN_VALUE);
        eu1 eu1Var11 = this.t;
        Integer numValueOf10 = Integer.valueOf(eu1Var11 != null ? eu1Var11.i.d(p20.class) : Integer.MIN_VALUE);
        eu1 eu1Var12 = this.t;
        recyclerView.addItemDecoration(new hy8(this.p, u96.i(numValueOf, numValueOf2, numValueOf3, numValueOf4, numValueOf5, numValueOf6, numValueOf7, numValueOf8, numValueOf9, numValueOf10, Integer.valueOf(eu1Var12 != null ? eu1Var12.i.d(t50.class) : Integer.MIN_VALUE))), 1);
    }

    @Override // com.warefly.checkscan.presentation.balance.main.view.BalanceView
    public final void showManagementAlfaDialogCabinet(String str) {
        str.getClass();
        ManagementAlfaFullScreenDialog.e.getClass();
        ManagementAlfaFullScreenDialog managementAlfaFullScreenDialog = new ManagementAlfaFullScreenDialog();
        managementAlfaFullScreenDialog.setArguments(BundleKt.bundleOf(new b36("CABINET_URL_KEY", str)));
        m(managementAlfaFullScreenDialog);
    }

    @Override // com.warefly.checkscan.presentation.balance.main.view.BalanceView
    public final void showOrdDialog(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.s;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            this.s = ordAdInfoDialog2;
            ordAdInfoDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalFragment, com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public final void startTransferToBankCard(long j) {
        TransferCardDialog.d.getClass();
        TransferCardDialog transferCardDialog = new TransferCardDialog();
        transferCardDialog.setArguments(BundleKt.bundleOf(new b36("CARD_ID_KEY", Long.valueOf(j))));
        m(transferCardDialog);
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalFragment, com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public final void startTransferToPhone() {
        TransferPhoneDialog.f.getClass();
        TransferPhoneDialog transferPhoneDialog = new TransferPhoneDialog();
        transferPhoneDialog.setArguments(BundleKt.bundleOf(new b36("IS_UPRID_DISABLE", Boolean.FALSE)));
        m(transferPhoneDialog);
    }

    @Override // com.warefly.checkscan.presentation.balance.main.view.BalanceView
    public final void turnOffRefreshing() {
        q().swipeToRefresh.setRefreshing(false);
    }
}
