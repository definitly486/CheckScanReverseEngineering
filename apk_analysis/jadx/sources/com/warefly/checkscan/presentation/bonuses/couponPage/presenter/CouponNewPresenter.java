package com.warefly.checkscan.presentation.bonuses.couponPage.presenter;

import android.text.Html;
import android.text.Spanned;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.presentation.bonuses.couponPage.presenter.CouponNewPresenter;
import com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView;
import defpackage.b42;
import defpackage.b54;
import defpackage.c42;
import defpackage.cg;
import defpackage.cp2;
import defpackage.ex3;
import defpackage.gh4;
import defpackage.h6;
import defpackage.h63;
import defpackage.j32;
import defpackage.j59;
import defpackage.jf6;
import defpackage.kd;
import defpackage.kn1;
import defpackage.la8;
import defpackage.ld;
import defpackage.ll3;
import defpackage.m32;
import defpackage.md;
import defpackage.me0;
import defpackage.mz7;
import defpackage.n32;
import defpackage.nd;
import defpackage.ne7;
import defpackage.nh7;
import defpackage.nl3;
import defpackage.o42;
import defpackage.o5;
import defpackage.od;
import defpackage.p08;
import defpackage.p42;
import defpackage.p5;
import defpackage.pp;
import defpackage.q42;
import defpackage.qx1;
import defpackage.r08;
import defpackage.rj;
import defpackage.s26;
import defpackage.sd;
import defpackage.sy8;
import defpackage.td;
import defpackage.ud;
import defpackage.ud0;
import defpackage.uf1;
import defpackage.uf3;
import defpackage.uz7;
import defpackage.vd0;
import defpackage.vf1;
import defpackage.vl2;
import defpackage.xz7;
import defpackage.yb8;
import defpackage.yw3;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class CouponNewPresenter extends BasePresenter<CouponNewView> {
    private final long couponId;
    private final q42 couponsInteractor;
    private s26<yw3> hotsPaginator;
    private boolean promoCodeShowed;
    private final jf6 repository;
    private final uf3 router;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[c42.values().length];
            try {
                iArr[c42.PROMOCODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[c42.PROMOCODE_INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[c42.BARCODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[c42.QRCODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[c42.IMAGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            a = iArr;
        }
    }

    public static final class b extends gh4 implements nl3<Integer, mz7<List<? extends yw3>>> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final mz7<List<? extends yw3>> invoke(Integer num) {
            int iIntValue = num.intValue();
            CouponNewPresenter couponNewPresenter = CouponNewPresenter.this;
            q42 q42Var = couponNewPresenter.couponsInteractor;
            return new p08(q42Var.a.e(iIntValue, couponNewPresenter.couponId), new p5(new p42(q42Var, 0), 2)).i(ne7.c).f(rj.a());
        }
    }

    public static final class c extends gh4 implements ll3<CouponNewView> {
        public c() {
            super(0);
        }

        @Override // defpackage.ll3
        public final CouponNewView invoke() {
            return (CouponNewView) CouponNewPresenter.this.getViewState();
        }
    }

    public static final class d extends gh4 implements nl3<cp2, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            CouponNewView couponNewView = (CouponNewView) CouponNewPresenter.this.getViewState();
            if (couponNewView != null) {
                couponNewView.showLoading(true);
            }
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<Throwable, j59> {
        public static final e f = new e(1);

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<m32, j59> {
        public f() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(m32 m32Var) {
            m32 m32Var2 = m32Var;
            m32Var2.getClass();
            CouponNewPresenter.this.applyCouponInfo(m32Var2);
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<Throwable, j59> {
        public static final g f = new g(1);

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<String, j59> {
        public h() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(String str) {
            String str2 = str;
            CouponNewView couponNewView = (CouponNewView) CouponNewPresenter.this.getViewState();
            if (couponNewView != null) {
                Spanned spannedFromHtml = Html.fromHtml(str2, 0);
                spannedFromHtml.getClass();
                couponNewView.setDescriptionInfo(spannedFromHtml);
            }
            return j59.a;
        }
    }

    public static final class i extends gh4 implements nl3<Throwable, j59> {
        public static final i f = new i(1);

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            return j59.a;
        }
    }

    public static final class j extends gh4 implements nl3<b42, j59> {
        public j() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(b42 b42Var) {
            b42 b42Var2 = b42Var;
            CouponNewView couponNewView = (CouponNewView) CouponNewPresenter.this.getViewState();
            if (couponNewView != null) {
                String strB = b42Var2.b();
                List<String> listA = b42Var2.a();
                ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
                Iterator<T> it = listA.iterator();
                while (it.hasNext()) {
                    arrayList.add(new la8((String) it.next()));
                }
                couponNewView.setStepsInfo(strB, arrayList);
            }
            return j59.a;
        }
    }

    public static final class k extends gh4 implements nl3<cp2, j59> {
        public k() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            CouponNewView couponNewView = (CouponNewView) CouponNewPresenter.this.getViewState();
            if (couponNewView != null) {
                couponNewView.showActionButtonLoading(true);
            }
            return j59.a;
        }
    }

    public static final class l extends gh4 implements nl3<Throwable, j59> {
        public l() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            CouponNewView couponNewView = (CouponNewView) CouponNewPresenter.this.getViewState();
            if (couponNewView != null) {
                couponNewView.showRequestInfoError();
            }
            return j59.a;
        }
    }

    public static final class m extends gh4 implements nl3<m32, j59> {
        public m() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(m32 m32Var) {
            m32 m32Var2 = m32Var;
            m32Var2.getClass();
            CouponNewPresenter couponNewPresenter = CouponNewPresenter.this;
            couponNewPresenter.applyCouponInfo(m32Var2);
            b54 b54Var = m32Var2.h;
            if (b54Var != null) {
                String str = b54Var.a;
                c42 c42Var = b54Var.b;
                if (c42Var == null) {
                    c42Var = c42.PROMOCODE;
                }
                j32 j32Var = m32Var2.f;
                couponNewPresenter.revealCode(str, c42Var, j32Var != null ? j32Var.b : null);
            }
            return j59.a;
        }
    }

    public static final class n extends gh4 implements nl3<Throwable, j59> {
        public final /* synthetic */ boolean g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(boolean z) {
            super(1);
            this.g = z;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            CouponNewView couponNewView = (CouponNewView) CouponNewPresenter.this.getViewState();
            if (couponNewView != null) {
                couponNewView.showFavoriteStatusIsChanged(false, this.g);
            }
            return j59.a;
        }
    }

    public static final class o extends gh4 implements ll3<j59> {
        public final /* synthetic */ boolean f;
        public final /* synthetic */ long g;
        public final /* synthetic */ CouponNewPresenter h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(boolean z, long j, CouponNewPresenter couponNewPresenter) {
            super(0);
            this.f = z;
            this.g = j;
            this.h = couponNewPresenter;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            long j = this.g;
            boolean z = this.f;
            if (z) {
                int i = (int) j;
                new kd.e.b.C0241b(i).a();
                new md(i).a();
            } else {
                int i2 = (int) j;
                new kd.e.b.f(i2).a();
                new td(i2).a();
            }
            CouponNewPresenter couponNewPresenter = this.h;
            CouponNewView couponNewView = (CouponNewView) couponNewPresenter.getViewState();
            if (couponNewView != null) {
                couponNewView.showFavoriteStatus(z);
            }
            CouponNewView couponNewView2 = (CouponNewView) couponNewPresenter.getViewState();
            if (couponNewView2 != null) {
                couponNewView2.showFavoriteStatusIsChanged(true, z);
            }
            return j59.a;
        }
    }

    public CouponNewPresenter(long j2, q42 q42Var, uf3 uf3Var, jf6 jf6Var) {
        q42Var.getClass();
        uf3Var.getClass();
        jf6Var.getClass();
        this.couponId = j2;
        this.couponsInteractor = q42Var;
        this.router = uf3Var;
        this.repository = jf6Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void applyCouponInfo(m32 m32Var) {
        CouponNewView couponNewView = (CouponNewView) getViewState();
        if (couponNewView != null) {
            couponNewView.setCouponInfo(m32Var);
        }
        b54 b54Var = m32Var.h;
        b54 b54Var2 = m32Var.h;
        if (b54Var != null) {
            c42 c42Var = b54Var.b;
            int i2 = c42Var == null ? -1 : a.a[c42Var.ordinal()];
            if (i2 == -1) {
                CouponNewView couponNewView2 = (CouponNewView) getViewState();
                if (couponNewView2 != null) {
                    couponNewView2.showPromocode(b54Var2.a);
                    return;
                }
                return;
            }
            if (i2 == 1 || i2 == 2) {
                CouponNewView couponNewView3 = (CouponNewView) getViewState();
                if (couponNewView3 != null) {
                    couponNewView3.showPromocode(b54Var2.a);
                    return;
                }
                return;
            }
            if (i2 == 3) {
                CouponNewView couponNewView4 = (CouponNewView) getViewState();
                if (couponNewView4 != null) {
                    couponNewView4.showBarCode(b54Var2.a);
                    return;
                }
                return;
            }
            if (i2 == 4) {
                CouponNewView couponNewView5 = (CouponNewView) getViewState();
                if (couponNewView5 != null) {
                    couponNewView5.showQrCode(b54Var2.a);
                    return;
                }
                return;
            }
            if (i2 != 5) {
                me0.e();
                return;
            }
            CouponNewView couponNewView6 = (CouponNewView) getViewState();
            if (couponNewView6 != null) {
                couponNewView6.showImageCode(b54Var2.a, null);
            }
        }
    }

    private final void loadCouponInfo() {
        q42 q42Var = this.couponsInteractor;
        mz7<n32> mz7VarB = q42Var.a.b(this.couponId);
        int i2 = 1;
        vd0 vd0Var = new vd0(new o42(q42Var, 0), i2);
        mz7VarB.getClass();
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new uz7(new xz7(new p08(mz7VarB, vd0Var).i(ne7.c).f(rj.a()), new pp(new d(), i2)), new h6() { // from class: x32
            @Override // defpackage.h6
            public final void run() {
                CouponNewPresenter.loadCouponInfo$lambda$2(this.a);
            }
        }), e.f, new f()), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadCouponInfo$lambda$2(CouponNewPresenter couponNewPresenter) {
        CouponNewView couponNewView = (CouponNewView) couponNewPresenter.getViewState();
        if (couponNewView != null) {
            couponNewView.showLoading(false);
        }
    }

    private final void loadDescription() {
        q42 q42Var = this.couponsInteractor;
        mz7<vl2> mz7VarA = q42Var.a.a(this.couponId);
        o5 o5Var = new o5(uf1.h, 1);
        mz7VarA.getClass();
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new p08(mz7VarA, o5Var).i(ne7.c).f(rj.a()), g.f, new h()), null, 1, null);
    }

    private final void loadOnlineShopSteps() {
        q42 q42Var = this.couponsInteractor;
        BasePresenter.disposeOnDestroy$default(this, yb8.d(q42Var.a.d(this.couponId).i(ne7.c).f(rj.a()), i.f, new j()), null, 1, null);
    }

    private final void loadRequestInfo() {
        q42 q42Var = this.couponsInteractor;
        mz7<n32> mz7VarC = q42Var.a.c(this.couponId);
        ud0 ud0Var = new ud0(new vf1(q42Var, 1));
        mz7VarC.getClass();
        r08 r08VarF = new p08(mz7VarC, ud0Var).i(ne7.c).f(rj.a());
        final k kVar = new k();
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new uz7(new xz7(r08VarF, new qx1() { // from class: v32
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                kVar.invoke(obj);
            }
        }), new h6() { // from class: w32
            @Override // defpackage.h6
            public final void run() {
                CouponNewPresenter.loadRequestInfo$lambda$4(this.a);
            }
        }), new l(), new m()), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadRequestInfo$lambda$4(CouponNewPresenter couponNewPresenter) {
        CouponNewView couponNewView = (CouponNewView) couponNewPresenter.getViewState();
        if (couponNewView != null) {
            couponNewView.showActionButtonLoading(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void revealCode(String str, c42 c42Var, String str2) {
        CouponNewView couponNewView;
        if (c42Var == c42.PROMOCODE) {
            if (this.promoCodeShowed) {
                promoCodeShowed(str, str2);
                return;
            }
            CouponNewView couponNewView2 = (CouponNewView) getViewState();
            if (couponNewView2 != null) {
                couponNewView2.showPromocodeCopied(str, str2);
                return;
            }
            return;
        }
        CouponNewView couponNewView3 = (CouponNewView) getViewState();
        if (couponNewView3 != null) {
            couponNewView3.copyCode(str);
        }
        if (str2 == null || (couponNewView = (CouponNewView) getViewState()) == null) {
            return;
        }
        couponNewView.openCouponUrl(str2);
    }

    private final void sendButtonClickedEvents() {
        new kd.e.b.a(ud.c((int) this.couponId, "Button")).a();
        new ld((int) this.couponId, "Button").a();
    }

    public final void initHotsPaginator() {
        s26<yw3> s26Var = new s26<>(new b(), new ex3(new c()));
        this.hotsPaginator = s26Var;
        s26Var.c();
    }

    public final j59 loadNextHots() {
        s26<yw3> s26Var = this.hotsPaginator;
        if (s26Var == null) {
            return null;
        }
        s26Var.a();
        return j59.a;
    }

    public final void onAdultConfirmedClick() {
        this.repository.k();
        s26<yw3> s26Var = this.hotsPaginator;
        if (s26Var != null) {
            s26Var.c();
        }
    }

    public final void onBackClick() {
        this.router.c();
    }

    public final void onCopyClick(String str, c42 c42Var, String str2) {
        str.getClass();
        c42Var.getClass();
        sendButtonClickedEvents();
        revealCode(str, c42Var, str2);
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        loadCouponInfo();
        loadDescription();
        loadOnlineShopSteps();
        initHotsPaginator();
    }

    public final void onGoToAllOperationsClicked() {
        new kd.e.b.d("Operations").a();
        new od((int) this.couponId, "Operations").a();
        this.router.j(new nh7());
    }

    public final void onGoToShopClick(sy8 sy8Var, String str, String str2) {
        sy8Var.getClass();
        str.getClass();
        str2.getClass();
        CouponNewView couponNewView = (CouponNewView) getViewState();
        if (couponNewView != null) {
            couponNewView.showRedirectDialog(sy8Var, str, str2);
        }
    }

    public final void onHotItemOrderClick(String str, String str2) {
        str.getClass();
        str2.getClass();
        Map mapSingletonMap = Collections.singletonMap("Go to item", str2);
        mapSingletonMap.getClass();
        Map mapSingletonMap2 = Collections.singletonMap("Hot items", mapSingletonMap);
        mapSingletonMap2.getClass();
        new kd.e.b.c.a(mapSingletonMap2).a();
        int i2 = (int) this.couponId;
        Map mapSingletonMap3 = Collections.singletonMap("Go to item", str2);
        mapSingletonMap3.getClass();
        new nd(i2, mapSingletonMap3).a();
        CouponNewView couponNewView = (CouponNewView) getViewState();
        if (couponNewView != null) {
            couponNewView.openHotItemUrl(str2, str);
        }
    }

    public final void onOpenUrl(String str) {
        CouponNewView couponNewView;
        if (str == null || (couponNewView = (CouponNewView) getViewState()) == null) {
            return;
        }
        couponNewView.openCouponUrl(str);
    }

    public final void onRequestPromocodeClick() {
        sendButtonClickedEvents();
        loadRequestInfo();
    }

    public final void onShareCardClicked(m32 m32Var) {
        m32Var.getClass();
        new kd.e.b.C0242e(ud.c((int) this.couponId, "Share")).a();
        new sd((int) this.couponId, "Share").a();
        CouponNewView couponNewView = (CouponNewView) getViewState();
        if (couponNewView != null) {
            couponNewView.shareCard(new Deeplink.Catalog.Coupon(this.couponId).d(), cg.d(m32Var.c, " ", m32Var.e), this.repository.d(), m32Var.a);
        }
    }

    public final void promoCodeShowed(String str, String str2) {
        CouponNewView couponNewView;
        str.getClass();
        this.promoCodeShowed = true;
        CouponNewView couponNewView2 = (CouponNewView) getViewState();
        if (couponNewView2 != null) {
            couponNewView2.copyCode(str);
        }
        if (str2 == null || (couponNewView = (CouponNewView) getViewState()) == null) {
            return;
        }
        couponNewView.openCouponUrl(str2);
    }

    public final void setFavouriteCoupon(long j2, boolean z) {
        BasePresenter.disposeOnDestroy$default(this, yb8.e(this.couponsInteractor.a.f(new h63(z, j2)).i(ne7.c).f(rj.a()), new o(z, j2, this), new n(z)), null, 1, null);
    }

    public final void setFloatingButtonVisibility(int i2, int i3) {
        boolean z = i3 > i2;
        CouponNewView couponNewView = (CouponNewView) getViewState();
        if (couponNewView != null) {
            couponNewView.setFloatingButtonVisibility(z);
        }
    }

    public final void showLoadingDialog(boolean z) {
        CouponNewView couponNewView = (CouponNewView) getViewState();
        if (couponNewView != null) {
            couponNewView.showLoadingDialog(z);
        }
    }
}
