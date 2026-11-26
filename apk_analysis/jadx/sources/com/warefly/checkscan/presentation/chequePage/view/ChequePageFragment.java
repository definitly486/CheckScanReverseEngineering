package com.warefly.checkscan.presentation.chequePage.view;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.infinityScrolling.HorizontalCarouselRecyclerViewNew;
import com.warefly.checkscan.databinding.FragmentChequePageBinding;
import com.warefly.checkscan.databinding.ItemInfoRejectCashbackBinding;
import com.warefly.checkscan.databinding.LayoutQrInfoBinding;
import com.warefly.checkscan.databinding.LayoutQrInfoInternetBinding;
import com.warefly.checkscan.databinding.LayoutTryAgainBinding;
import com.warefly.checkscan.databinding.WaitLayoutBinding;
import com.warefly.checkscan.presentation.bonuses.behaviors.NewFeatureDialog;
import com.warefly.checkscan.presentation.chequePage.form.view.ChequeInfoFormDialog;
import com.warefly.checkscan.presentation.chequePage.presentation.ChequePagePresenter;
import com.warefly.checkscan.presentation.chequePage.share.cheque.view.ShareChequeDialog;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import defpackage.aa4;
import defpackage.b06;
import defpackage.b36;
import defpackage.bm0;
import defpackage.bm3;
import defpackage.bs6;
import defpackage.eu1;
import defpackage.fv6;
import defpackage.fy8;
import defpackage.gh4;
import defpackage.hd1;
import defpackage.iw0;
import defpackage.j59;
import defpackage.j81;
import defpackage.k42;
import defpackage.kd1;
import defpackage.kz5;
import defpackage.lb7;
import defpackage.le1;
import defpackage.m2;
import defpackage.me1;
import defpackage.n2;
import defpackage.ne1;
import defpackage.nl3;
import defpackage.oe1;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.pa4;
import defpackage.pb2;
import defpackage.pl2;
import defpackage.pm;
import defpackage.q61;
import defpackage.ra4;
import defpackage.rw3;
import defpackage.t44;
import defpackage.ta8;
import defpackage.th6;
import defpackage.ty5;
import defpackage.uf3;
import defpackage.wu6;
import defpackage.x07;
import defpackage.xd1;
import defpackage.xv7;
import defpackage.ze4;
import defpackage.zm5;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ChequePageFragment extends BaseFragment<FragmentChequePageBinding> implements ChequePageView {
    public static final a q;
    public static final /* synthetic */ ze4<Object>[] r;
    public ChequeInfoFormDialog h;
    public eu1 i;
    public eu1 j;
    public eu1 k;
    public OrdAdInfoDialog m;
    public t44 n;
    public ChequePagePresenter presenter;
    public final int f = R.layout.fragment_cheque_page;
    public final ol4 g = new ol4(FragmentChequePageBinding.class);
    public final zm5 l = new zm5();
    public final f o = new f();
    public final g p = new g();

    public static final class a {
    }

    public static final class b extends gh4 implements bm3<String, Bundle, j59> {
        public b() {
            super(2);
        }

        @Override // defpackage.bm3
        public final j59 invoke(String str, Bundle bundle) {
            String str2 = str;
            str2.getClass();
            bundle.getClass();
            ChequePageFragment chequePageFragment = ChequePageFragment.this;
            FragmentKt.clearFragmentResult(chequePageFragment, str2);
            chequePageFragment.o().onChequeInfoFormSuccess();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ChequePageFragment.this.o().onShareClicked();
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
            ChequePageFragment.this.o().onBackPressed();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ LayoutTryAgainBinding g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(LayoutTryAgainBinding layoutTryAgainBinding) {
            super(1);
            this.g = layoutTryAgainBinding;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ChequePageFragment.this.o().onRefresh();
            this.g.getRoot().setVisibility(8);
            return j59.a;
        }
    }

    public static final class f extends RecyclerView.OnScrollListener {
        public f() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public final void onScrollStateChanged(RecyclerView recyclerView, int i) {
            recyclerView.getClass();
            if (i == 0) {
                RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                layoutManager.getClass();
                ChequePageFragment.this.o().changePosSpecialByUser(((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition());
            }
        }
    }

    public static final class g implements RecyclerView.OnItemTouchListener {
        public g() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            recyclerView.getClass();
            motionEvent.getClass();
            int action = motionEvent.getAction();
            ChequePageFragment chequePageFragment = ChequePageFragment.this;
            if (action == 0) {
                chequePageFragment.o().setScrollState(false);
                return false;
            }
            if (action != 1 && action != 3) {
                return false;
            }
            chequePageFragment.o().setScrollState(true);
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void onRequestDisallowInterceptTouchEvent(boolean z) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            recyclerView.getClass();
            motionEvent.getClass();
        }
    }

    static {
        bs6 bs6Var = new bs6(ChequePageFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;", 0);
        x07.a.getClass();
        r = new ze4[]{bs6Var};
        q = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        o().onBackPressed();
        return false;
    }

    public final FragmentChequePageBinding n() {
        return (FragmentChequePageBinding) this.g.getValue(this, r[0]);
    }

    public final ChequePagePresenter o() {
        ChequePagePresenter chequePagePresenter = this.presenter;
        if (chequePagePresenter != null) {
            return chequePagePresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvChequeItems;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        eu1 eu1Var = new eu1(new j81(new ne1(this, 0)), new th6(new q61(this, 1)), new iw0(pa4.c, 1));
        this.i = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.setItemAnimator(null);
        recyclerView.setNestedScrollingEnabled(false);
        FragmentChequePageBinding fragmentChequePageBindingN = n();
        ImageView imageView = fragmentChequePageBindingN.btnShare;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new c()));
        ImageView imageView2 = fragmentChequePageBindingN.btnBack;
        imageView2.getClass();
        imageView2.setOnClickListener(new lb7(new d()));
        RecyclerView recyclerView2 = n().rvOperations;
        recyclerView2.setLayoutManager(new LinearLayoutManager(recyclerView2.getContext()));
        recyclerView2.addItemDecoration(new fy8(24, false));
        eu1 eu1Var2 = new eu1(new me1(le1.c), new ty5(R.layout.item_cheque_group_operation, R.layout.item_cheque_operation, 24));
        this.j = eu1Var2;
        recyclerView2.setAdapter(eu1Var2);
        RecyclerView recyclerView3 = n().rvCoupons;
        recyclerView3.setLayoutManager(new LinearLayoutManager(recyclerView3.getContext(), 0, false));
        eu1 eu1Var3 = new eu1(new k42(new oe1(this)));
        this.k = eu1Var3;
        recyclerView3.setAdapter(eu1Var3);
        recyclerView3.setNestedScrollingEnabled(true);
        HorizontalCarouselRecyclerViewNew horizontalCarouselRecyclerViewNew = n().rvBanners;
        t44 t44Var = new t44(o());
        this.n = t44Var;
        horizontalCarouselRecyclerViewNew.addItemDecoration(new rw3(8, 8, 0), 0);
        horizontalCarouselRecyclerViewNew.addOnScrollListener(this.o);
        horizontalCarouselRecyclerViewNew.addOnItemTouchListener(this.p);
        horizontalCarouselRecyclerViewNew.setAdapter(t44Var);
        FragmentKt.setFragmentResultListener(this, "CHEQUE_INFO_SUCCESS", new b());
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void openChequeInfoFormDialog(int i, String str) {
        str.getClass();
        ChequeInfoFormDialog chequeInfoFormDialog = this.h;
        if (chequeInfoFormDialog != null) {
            chequeInfoFormDialog.dismiss();
        }
        ChequeInfoFormDialog.d.getClass();
        ChequeInfoFormDialog chequeInfoFormDialog2 = new ChequeInfoFormDialog();
        chequeInfoFormDialog2.setArguments(BundleKt.bundleOf(new b36("ID_KEY", Integer.valueOf(i)), new b36("PHONE_KEY", str)));
        m(chequeInfoFormDialog2);
        this.h = chequeInfoFormDialog2;
    }

    public final ChequePagePresenter providePresenter() {
        return new ChequePagePresenter((uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (xd1) m2.c(xd1.class, defpackage.e.e(this), null, null), (kz5) m2.c(kz5.class, defpackage.e.e(this), null, null), requireArguments().getInt("CHEQUE_ID_KEY"), requireArguments().getString("CHEQUE_JSON_KEY"), (bm0) m2.c(bm0.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void scrollNextSpecials(int i) {
        HorizontalCarouselRecyclerViewNew horizontalCarouselRecyclerViewNew = n().rvBanners;
        if (i != 0) {
            horizontalCarouselRecyclerViewNew.smoothScrollToPosition(i);
        } else {
            horizontalCarouselRecyclerViewNew.scrollToPosition(i);
        }
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showAdInfoDialog(b06 b06Var) {
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

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showBanners(xv7 xv7Var) {
        xv7Var.getClass();
        n().rvBanners.setVisibility(0);
        t44 t44Var = this.n;
        if (t44Var != null) {
            t44Var.submitList(xv7Var.a);
        }
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showCards(boolean z, List<Object> list) {
        list.getClass();
        showCoupons(list, 137);
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showCategoryTutorial() {
        Context context = getContext();
        if (context != null) {
            new TutorialAboutCategoriesDialog(context).show();
        }
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showChequeAlert(kd1 kd1Var) {
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0048  */
    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showChequeInfo(hd1 hd1Var) {
        String strI;
        String strG;
        hd1Var.getClass();
        FragmentChequePageBinding fragmentChequePageBindingN = n();
        fragmentChequePageBindingN.tvShopName.setText(hd1Var.h().a());
        TextView textView = fragmentChequePageBindingN.tvToolbarTitle;
        String strF = hd1Var.f();
        pb2 pb2Var = pb2.a;
        if (strF == null) {
            strI = "";
        } else {
            if (ta8.M(strF)) {
                strF = null;
            }
            if (strF != null) {
                pb2.a.getClass();
                Date dateF = pb2.f(strF);
                strI = pb2.i(dateF, true);
                if (strI == null) {
                    strI = ((SimpleDateFormat) pb2.f.getValue()).format(dateF);
                    strI.getClass();
                }
            } else {
                strI = "";
            }
        }
        textView.setText(strI);
        fragmentChequePageBindingN.tvSum.setText(getString(R.string.placeholder_ruble_price, Float.valueOf(hd1Var.i() / 100.0f)));
        if (hd1Var.g() == null || (strG = hd1Var.g()) == null) {
            return;
        }
        LayoutQrInfoBinding layoutQrInfoBinding = fragmentChequePageBindingN.layoutQrInfo;
        fragmentChequePageBindingN.ivQr.setImageBitmap(fv6.a(300, strG));
        wu6.a aVarB = wu6.b(wu6.a, strG);
        layoutQrInfoBinding.tvFn.setText(aVarB.c);
        layoutQrInfoBinding.tvFpd.setText(aVarB.e);
        layoutQrInfoBinding.tvFd.setText(aVarB.d);
        LayoutQrInfoInternetBinding layoutQrInfoInternetBinding = layoutQrInfoBinding.layoutInn;
        String strB = hd1Var.b();
        if (strB != null) {
            TextView textView2 = layoutQrInfoInternetBinding.tvINN;
            textView2.setVisibility(0);
            textView2.setText(strB);
        }
        String strD = hd1Var.d();
        if (strD != null) {
            TextView textView3 = layoutQrInfoInternetBinding.tvLegalFace;
            textView3.setVisibility(0);
            textView3.setText(strD);
        }
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showChequeOperations(boolean z, List<Object> list) {
        FragmentChequePageBinding fragmentChequePageBindingN = n();
        if (!z || list == null || !(!list.isEmpty())) {
            fragmentChequePageBindingN.rvOperations.setVisibility(8);
            return;
        }
        fragmentChequePageBindingN.rvOperations.setVisibility(0);
        eu1 eu1Var = this.j;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showChequeProducts(List<? extends ra4> list) {
        list.getClass();
        eu1 eu1Var = this.i;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showCouldntGetCategoriesOfCheque() {
        View view = getView();
        if (view != null) {
            oz1.g(R.string.cheque_couldnt_load_categories, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showCouldntLoadCheque(boolean z) {
        LayoutTryAgainBinding layoutTryAgainBinding = n().viewFailedLoading;
        if (!z) {
            layoutTryAgainBinding.getRoot().setVisibility(8);
            return;
        }
        layoutTryAgainBinding.getRoot().setVisibility(0);
        TextView textView = layoutTryAgainBinding.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new e(layoutTryAgainBinding)));
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showCoupons(List<Object> list, Integer num) {
        FragmentChequePageBinding fragmentChequePageBindingN = n();
        if (list == null || !(!list.isEmpty())) {
            fragmentChequePageBindingN.layoutCoupons.setVisibility(8);
            return;
        }
        fragmentChequePageBindingN.layoutCoupons.setVisibility(0);
        RecyclerView recyclerView = fragmentChequePageBindingN.rvCoupons;
        Integer numValueOf = num != null ? Integer.valueOf(pl2.o((int) (num.intValue() / Resources.getSystem().getDisplayMetrics().density))) : null;
        numValueOf.getClass();
        recyclerView.setMinimumHeight(numValueOf.intValue());
        list.getClass();
        eu1 eu1Var = this.k;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showEmptyCards(boolean z) {
        showCouldntLoadCheque(z);
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showEmptyCardsError(boolean z) {
        showCouldntLoadCheque(z);
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showEmptyCardsProgress(boolean z) {
        showLoadingCheque(z);
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showLoadingCheque(boolean z) {
        ProgressBar progressBar = n().pbLoading;
        progressBar.getClass();
        progressBar.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showLoadingContent(boolean z) {
        FrameLayout root = n().viewLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showLoadingProducts(boolean z) {
        ProgressBar progressBar = n().pbItemsLoading;
        progressBar.getClass();
        progressBar.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showNoProductsInCheque() {
        View view = getView();
        if (view != null) {
            oz1.g(R.string.cheque_page_no_items_yet, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showPageOfCardsProgress(boolean z) {
        showRefreshCardsProgress(z);
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showProductCategoryReported(boolean z) {
        View view = getView();
        if (view != null) {
            oz1.g(z ? R.string.cheque_category_report_success : R.string.cheque_category_report_error, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showReasonRejectCashback(String str) {
        str.getClass();
        ItemInfoRejectCashbackBinding itemInfoRejectCashbackBinding = n().layoutInfoRejectCashback;
        itemInfoRejectCashbackBinding.tvInfo.setText(str);
        itemInfoRejectCashbackBinding.getRoot().setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showRefreshCardsProgress(boolean z) {
        showRefreshCardsProgress(z);
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showShareCheque(hd1 hd1Var) {
        hd1Var.getClass();
        Context context = getContext();
        if (context != null) {
            new ShareChequeDialog(context, hd1Var).show();
        }
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showUpdateToAccessMessage() {
        Context context = getContext();
        if (context != null) {
            zm5 zm5Var = this.l;
            zm5Var.getClass();
            NewFeatureDialog newFeatureDialog = (NewFeatureDialog) zm5Var.b;
            if (newFeatureDialog == null || !newFeatureDialog.isShowing()) {
                NewFeatureDialog newFeatureDialog2 = new NewFeatureDialog(context, false);
                zm5Var.b = newFeatureDialog2;
                newFeatureDialog2.show();
            }
        }
    }

    @Override // com.warefly.checkscan.presentation.chequePage.view.ChequePageView
    public final void showWaitLayout(boolean z) {
        WaitLayoutBinding waitLayoutBinding = n().incldWaitScreen;
        if (!z) {
            ConstraintLayout root = waitLayoutBinding.getRoot();
            root.getClass();
            root.setVisibility(8);
            return;
        }
        ConstraintLayout root2 = waitLayoutBinding.getRoot();
        root2.getClass();
        root2.setVisibility(0);
        Context context = waitLayoutBinding.getRoot().getContext();
        context.getClass();
        ImageView imageView = waitLayoutBinding.ivWaitPlaceholder;
        imageView.getClass();
        pm.b(context, R.drawable.animated_wait_layout, imageView);
    }
}
