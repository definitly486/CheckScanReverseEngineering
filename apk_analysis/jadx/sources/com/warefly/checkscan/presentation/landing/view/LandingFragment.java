package com.warefly.checkscan.presentation.landing.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.navigation.NavArgsLazy;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentLandingBinding;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import com.warefly.checkscan.presentation.flows.promotions.registration.view.OfferRegistrationDialogDialog;
import com.warefly.checkscan.presentation.flows.promotions.registration.view.dialog.PromoResultDialog;
import com.warefly.checkscan.presentation.landing.presenter.LandingPresenter;
import com.wdullaer.materialdatetimepicker.date.DatePickerDialog;
import defpackage.aa4;
import defpackage.ai4;
import defpackage.aj4;
import defpackage.b06;
import defpackage.bs6;
import defpackage.c9;
import defpackage.cl4;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.gi4;
import defpackage.hj4;
import defpackage.hk4;
import defpackage.i72;
import defpackage.ii4;
import defpackage.j59;
import defpackage.jf6;
import defpackage.ji4;
import defpackage.lb7;
import defpackage.lh4;
import defpackage.lk4;
import defpackage.ll3;
import defpackage.m2;
import defpackage.mk4;
import defpackage.n2;
import defpackage.ni4;
import defpackage.nl3;
import defpackage.nm4;
import defpackage.oi4;
import defpackage.ol4;
import defpackage.ph4;
import defpackage.pk4;
import defpackage.po4;
import defpackage.qh4;
import defpackage.qi4;
import defpackage.qk4;
import defpackage.qm3;
import defpackage.rh4;
import defpackage.s05;
import defpackage.sh4;
import defpackage.si4;
import defpackage.uf3;
import defpackage.ui4;
import defpackage.uk4;
import defpackage.ur6;
import defpackage.v05;
import defpackage.x07;
import defpackage.xj4;
import defpackage.yj4;
import defpackage.ze4;
import java.util.Calendar;

/* JADX INFO: loaded from: classes5.dex */
public final class LandingFragment extends BaseFragment<FragmentLandingBinding> implements LandingView {
    public static final /* synthetic */ ze4<Object>[] p;
    public final int f = R.layout.fragment_landing;
    public final ol4 g = new ol4(FragmentLandingBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(ui4.class), new f());
    public final cl4 i;
    public final cl4 j;
    public eu1 k;
    public DatePickerDialog l;
    public PromoResultDialog m;
    public OrdAdInfoDialog n;
    public OfferRegistrationDialogDialog o;
    public LandingPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            LandingFragment.this.o().onBackClick();
            return j59.a;
        }
    }

    public static final /* synthetic */ class b extends qm3 implements ll3<j59> {
        @Override // defpackage.ll3
        public final j59 invoke() {
            ((LandingPresenter) this.receiver).offerRegistrationConfirm();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements ll3<j59> {
        public static final c f = new c(0);

        @Override // defpackage.ll3
        public final j59 invoke() {
            return j59.a;
        }
    }

    public static final class d implements ll3<v05> {
        public d() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, v05] */
        @Override // defpackage.ll3
        public final v05 invoke() {
            return m2.c(v05.class, defpackage.e.e(LandingFragment.this), null, null);
        }
    }

    public static final class e implements ll3<s05> {
        public e() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, s05] */
        @Override // defpackage.ll3
        public final s05 invoke() {
            return m2.c(s05.class, defpackage.e.e(LandingFragment.this), null, null);
        }
    }

    public static final class f implements ll3<Bundle> {
        public f() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            LandingFragment landingFragment = LandingFragment.this;
            Bundle arguments = landingFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(landingFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(LandingFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentLandingBinding;", 0);
        x07.a.getClass();
        p = new ze4[]{bs6Var};
    }

    public LandingFragment() {
        po4 po4Var = po4.SYNCHRONIZED;
        this.i = nm4.a(po4Var, new d());
        this.j = nm4.a(po4Var, new e());
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentLandingBinding n() {
        return (FragmentLandingBinding) this.g.getValue(this, p[0]);
    }

    public final LandingPresenter o() {
        LandingPresenter landingPresenter = this.presenter;
        if (landingPresenter != null) {
            return landingPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ImageView imageView = n().btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
        RecyclerView recyclerView = n().rvContent;
        eu1 eu1Var = new eu1(new sh4(rh4.c), new qh4(ph4.c), new qk4(pk4.c, 0), new mk4(lk4.c, 0), new oi4(ni4.c), new ji4(ii4.c), new hj4(o()), new si4(o()), new gi4(o()), new ai4(o()), new hk4(o()), new qi4((s05) this.j.getValue()), new uk4(o()), new lh4((v05) this.i.getValue(), o()));
        this.k = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.setItemAnimator(null);
    }

    @Override // com.warefly.checkscan.presentation.landing.view.LandingView
    public final void openCustomTab(String str) {
        str.getClass();
        i72.b(requireContext(), str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final LandingPresenter providePresenter() {
        return new LandingPresenter((aj4) m2.c(aj4.class, defpackage.e.e(this), null, null), ((ui4) this.h.getValue()).a, (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.landing.view.LandingView
    public final void showContent(aj4.a aVar) {
        aVar.getClass();
        eu1 eu1Var = this.k;
        if (eu1Var != null) {
            eu1Var.submitList(aVar.a);
        }
        if (aVar.b) {
            RecyclerView recyclerView = n().rvContent;
            if (recyclerView.getItemDecorationCount() > 0) {
                recyclerView.removeItemDecorationAt(0);
            }
            eu1 eu1Var2 = this.k;
            recyclerView.addItemDecoration(new xj4(eu1Var2 != null ? eu1Var2.i.d(yj4.class) : -1), 0);
        }
    }

    @Override // com.warefly.checkscan.presentation.landing.view.LandingView
    public final void showDatePicker(DatePickerDialog.OnDateSetListener onDateSetListener) {
        onDateSetListener.getClass();
        DatePickerDialog datePickerDialog = this.l;
        if (datePickerDialog != null) {
            datePickerDialog.dismiss();
        }
        Calendar calendar = Calendar.getInstance();
        DatePickerDialog datePickerDialogNewInstance = DatePickerDialog.newInstance(onDateSetListener, calendar.get(1), calendar.get(2), calendar.get(5));
        datePickerDialogNewInstance.setAccentColor(ContextCompat.getColor(requireContext(), R.color.readilyBlue));
        this.l = datePickerDialogNewInstance;
        datePickerDialogNewInstance.show(getChildFragmentManager(), "DatePickerDialog");
    }

    @Override // com.warefly.checkscan.presentation.landing.view.LandingView
    public final void showImage(String str) {
        str.getClass();
        com.bumptech.glide.a.e(n().ivBanner).h(str).L(n().ivBanner);
    }

    @Override // com.warefly.checkscan.presentation.landing.view.LandingView
    public final void showOfdDialog(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.n;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            this.n = ordAdInfoDialog2;
            ordAdInfoDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.landing.view.LandingView
    public final void showOfferRegistrationDialog() {
        OfferRegistrationDialogDialog offerRegistrationDialogDialog = this.o;
        if (offerRegistrationDialogDialog != null) {
            offerRegistrationDialogDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OfferRegistrationDialogDialog offerRegistrationDialogDialog2 = new OfferRegistrationDialogDialog(context, new b(0, o(), LandingPresenter.class, "offerRegistrationConfirm", "offerRegistrationConfirm()V", 0), c.f);
            this.o = offerRegistrationDialogDialog2;
            offerRegistrationDialogDialog2.show();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.warefly.checkscan.presentation.landing.view.LandingView
    public final void showPromoRegisterResult(ur6 ur6Var) {
        ur6Var.getClass();
        PromoResultDialog promoResultDialog = this.m;
        if (promoResultDialog != null) {
            promoResultDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            PromoResultDialog promoResultDialog2 = new PromoResultDialog(context, ur6Var, ((ui4) this.h.getValue()).a);
            this.m = promoResultDialog2;
            promoResultDialog2.show();
        }
    }
}
