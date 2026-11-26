package com.warefly.checkscan.presentation.bonuses.shopPage.presenter;

import android.text.SpannableString;
import androidx.compose.material3.internal.CalendarModelKt;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView;
import defpackage.b06;
import defpackage.ck0;
import defpackage.cp2;
import defpackage.dn1;
import defpackage.ew3;
import defpackage.gg7;
import defpackage.gh4;
import defpackage.gr6;
import defpackage.h6;
import defpackage.h63;
import defpackage.hg7;
import defpackage.i63;
import defpackage.j59;
import defpackage.jf6;
import defpackage.kd;
import defpackage.kx5;
import defpackage.ll3;
import defpackage.lx5;
import defpackage.md;
import defpackage.me0;
import defpackage.mf7;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nh7;
import defpackage.nl3;
import defpackage.p08;
import defpackage.p9;
import defpackage.pb2;
import defpackage.q42;
import defpackage.q9;
import defpackage.qm3;
import defpackage.qx1;
import defpackage.qx5;
import defpackage.r08;
import defpackage.r31;
import defpackage.rj;
import defpackage.rr6;
import defpackage.s26;
import defpackage.s47;
import defpackage.sy8;
import defpackage.ta8;
import defpackage.td;
import defpackage.u9;
import defpackage.ud;
import defpackage.uf3;
import defpackage.ux5;
import defpackage.uz7;
import defpackage.vp3;
import defpackage.wh6;
import defpackage.x46;
import defpackage.x9;
import defpackage.xk0;
import defpackage.xz7;
import defpackage.yb8;
import defpackage.yw3;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public final class BonusAdmitadNewPresenter extends BasePresenter<BonusAdmitadNewView> {
    public static final a Companion = new a();
    private static final boolean LOADING = true;
    private static final boolean NOT_LOADING = false;
    private static final int POWER_CODE_TEXT_SIZE = 32;
    private final long admitadId;
    private final x9 admitadPartnerInteractor;
    private final HashMap<ck0, Boolean> blocksLoadingState;
    private final q42 couponsInteractor;
    private boolean floatingButtonEnabled;
    private s26<yw3> hotsPaginator;
    private sy8 redirectType;
    private final jf6 repository;
    private final nl3<Integer, String> resString;
    private final s47 resourceProvider;
    private final uf3 router;
    private final k shopBlockType;

    public static final class a {
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[sy8.values().length];
            try {
                iArr[sy8.Desktop.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[sy8.Mobile.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[sy8.App.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final class c extends gh4 implements nl3<cp2, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) BonusAdmitadNewPresenter.this.getViewState();
            if (bonusAdmitadNewView != null) {
                bonusAdmitadNewView.showLoading(true);
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<Throwable, j59> {
        public static final d f = new d(1);

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<List<? extends lx5>, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(List<? extends lx5> list) {
            List<? extends lx5> list2 = list;
            list2.getClass();
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                ((lx5) it.next()).a(BonusAdmitadNewPresenter.this.shopBlockType);
            }
            return j59.a;
        }
    }

    public static final /* synthetic */ class f extends qm3 implements nl3<Integer, String> {
        @Override // defpackage.nl3
        public final String invoke(Integer num) {
            return ((s47) this.receiver).getString(num.intValue());
        }
    }

    public static final class g extends gh4 implements nl3<Throwable, j59> {
        public final /* synthetic */ boolean g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(boolean z) {
            super(1);
            this.g = z;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) BonusAdmitadNewPresenter.this.getViewState();
            if (bonusAdmitadNewView != null) {
                bonusAdmitadNewView.showFavoriteStatusIsChanged(false, this.g);
            }
            return j59.a;
        }
    }

    public static final class h extends gh4 implements ll3<j59> {
        public final /* synthetic */ boolean f;
        public final /* synthetic */ long g;
        public final /* synthetic */ BonusAdmitadNewPresenter h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(long j, BonusAdmitadNewPresenter bonusAdmitadNewPresenter, boolean z) {
            super(0);
            this.f = z;
            this.g = j;
            this.h = bonusAdmitadNewPresenter;
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
            BonusAdmitadNewPresenter bonusAdmitadNewPresenter = this.h;
            BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) bonusAdmitadNewPresenter.getViewState();
            if (bonusAdmitadNewView != null) {
                bonusAdmitadNewView.showFavoriteStatusIsChanged(true, z);
            }
            bonusAdmitadNewPresenter.shopBlockType.a();
            return j59.a;
        }
    }

    public static final class i extends gh4 implements nl3<Throwable, j59> {
        public final /* synthetic */ boolean g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(boolean z) {
            super(1);
            this.g = z;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) BonusAdmitadNewPresenter.this.getViewState();
            if (bonusAdmitadNewView != null) {
                bonusAdmitadNewView.showFavoriteStatusIsChanged(false, this.g);
            }
            return j59.a;
        }
    }

    public static final class j extends gh4 implements ll3<j59> {
        public final /* synthetic */ BonusAdmitadNewPresenter f;
        public final /* synthetic */ boolean g;
        public final /* synthetic */ long h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(long j, BonusAdmitadNewPresenter bonusAdmitadNewPresenter, boolean z) {
            super(0);
            this.f = bonusAdmitadNewPresenter;
            this.g = z;
            this.h = j;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            BonusAdmitadNewPresenter bonusAdmitadNewPresenter = this.f;
            BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) bonusAdmitadNewPresenter.getViewState();
            boolean z = this.g;
            if (bonusAdmitadNewView != null) {
                bonusAdmitadNewView.showFavoriteStatus(z);
            }
            BonusAdmitadNewView bonusAdmitadNewView2 = (BonusAdmitadNewView) bonusAdmitadNewPresenter.getViewState();
            if (bonusAdmitadNewView2 != null) {
                bonusAdmitadNewView2.showFavoriteStatusIsChanged(true, z);
            }
            long j = this.h;
            if (z) {
                int i = (int) j;
                new kd.e.d.c(ud.c(i, "Fave")).a();
                new kd.e.a.C0234a.b(i, "Fave").a();
            } else {
                int i2 = (int) j;
                new kd.e.d.l(ud.c(i2, "UnFave")).a();
                new kd.e.a.C0234a.h(i2, "UnFave").a();
            }
            return j59.a;
        }
    }

    public static final class k {

        public static final class a extends gh4 implements nl3<cp2, j59> {
            public final /* synthetic */ BonusAdmitadNewPresenter f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(BonusAdmitadNewPresenter bonusAdmitadNewPresenter) {
                super(1);
                this.f = bonusAdmitadNewPresenter;
            }

            @Override // defpackage.nl3
            public final j59 invoke(cp2 cp2Var) {
                this.f.blocksLoadingState.put(ck0.Promocodes, Boolean.TRUE);
                return j59.a;
            }
        }

        public static final class b extends gh4 implements nl3<List<? extends gr6>, j59> {
            public final /* synthetic */ BonusAdmitadNewPresenter f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(BonusAdmitadNewPresenter bonusAdmitadNewPresenter) {
                super(1);
                this.f = bonusAdmitadNewPresenter;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // defpackage.nl3
            public final j59 invoke(List<? extends gr6> list) {
                BonusAdmitadNewView bonusAdmitadNewView;
                List<? extends gr6> list2 = list;
                list2.getClass();
                if (!list2.isEmpty() && (bonusAdmitadNewView = (BonusAdmitadNewView) this.f.getViewState()) != 0) {
                    bonusAdmitadNewView.setPromocodesInfo(list2);
                }
                return j59.a;
            }
        }

        public k() {
        }

        public final void a() {
            final BonusAdmitadNewPresenter bonusAdmitadNewPresenter = BonusAdmitadNewPresenter.this;
            x9 x9Var = bonusAdmitadNewPresenter.admitadPartnerInteractor;
            mz7<List<rr6>> mz7VarG = x9Var.a.g(bonusAdmitadNewPresenter.admitadId);
            q9 q9Var = new q9(new x46(x9Var), 0);
            mz7VarG.getClass();
            BasePresenter.disposeOnDestroy$default(bonusAdmitadNewPresenter, yb8.f(new uz7(new xz7(new p08(mz7VarG, q9Var).i(ne7.c).f(rj.a()), new xk0(new a(bonusAdmitadNewPresenter), 0)), new h6() { // from class: yk0
                @Override // defpackage.h6
                public final void run() {
                    bonusAdmitadNewPresenter.blocksLoadingState.put(ck0.Promocodes, Boolean.FALSE);
                }
            }), null, new b(bonusAdmitadNewPresenter), 1), null, 1, null);
        }
    }

    public BonusAdmitadNewPresenter(long j2, x9 x9Var, q42 q42Var, uf3 uf3Var, jf6 jf6Var, s47 s47Var) {
        x9Var.getClass();
        q42Var.getClass();
        uf3Var.getClass();
        jf6Var.getClass();
        s47Var.getClass();
        this.admitadId = j2;
        this.admitadPartnerInteractor = x9Var;
        this.couponsInteractor = q42Var;
        this.router = uf3Var;
        this.repository = jf6Var;
        this.resourceProvider = s47Var;
        this.blocksLoadingState = new HashMap<>();
        this.redirectType = sy8.App;
        this.resString = new f(1, s47Var, s47.class, "getString", "getString(I)Ljava/lang/String;", 0);
        this.shopBlockType = new k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setUpCashback(dn1.c cVar) throws ParseException {
        dn1.b bVar;
        dn1.a aVar = cVar.c;
        if (aVar != null && (bVar = aVar.b) != null) {
            setUpPowerCode(bVar);
        }
        setUpPowerCodeCashback(cVar);
    }

    private final void setUpDefaultCashback(dn1.c cVar) {
        BonusAdmitadNewView bonusAdmitadNewView;
        String str = cVar.a;
        String str2 = cVar.b;
        if (str == null || str2 == null || (bonusAdmitadNewView = (BonusAdmitadNewView) getViewState()) == null) {
            return;
        }
        bonusAdmitadNewView.setCashbackTitle(str, new SpannableString(str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setUpFixedCashback(ew3 ew3Var, dn1.c cVar) throws ParseException {
        setUpDefaultCashback(cVar);
        BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) getViewState();
        if (bonusAdmitadNewView != null) {
            bonusAdmitadNewView.setFixedCashback(ew3Var.a);
        }
        dn1.b bVar = ew3Var.b;
        if (bVar != null) {
            setUpPowerCode(bVar);
        }
    }

    private final void setUpPowerCode(dn1.b bVar) throws ParseException {
        String str = bVar.b;
        Boolean bool = bVar.c;
        String str2 = bVar.e;
        if (bool == null || str2 == null) {
            return;
        }
        if (!bool.booleanValue() || str == null || ta8.M(str)) {
            BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) getViewState();
            if (bonusAdmitadNewView != null) {
                bonusAdmitadNewView.setPowerCodeDescription(str2);
                return;
            }
            return;
        }
        BonusAdmitadNewView bonusAdmitadNewView2 = (BonusAdmitadNewView) getViewState();
        if (bonusAdmitadNewView2 != null) {
            pb2.a.getClass();
            Date dateF = pb2.f(str);
            Date time = Calendar.getInstance().getTime();
            SimpleDateFormat simpleDateFormat = (SimpleDateFormat) pb2.i.getValue();
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            Date time2 = ((SimpleDateFormat) pb2.k.getValue()).parse(simpleDateFormat.format(time));
            if (time2 == null) {
                time2 = Calendar.getInstance().getTime();
                time2.getClass();
            }
            long time3 = dateF.getTime() - time2.getTime();
            long j2 = time3 / CalendarModelKt.MillisecondsIn24Hours;
            long j3 = time3 % CalendarModelKt.MillisecondsIn24Hours;
            bonusAdmitadNewView2.setPowerCodeHotDescription(str2, j2 + " д. " + (j3 / 3600000) + " ч. " + ((j3 % 3600000) / 60000) + " мин.");
        }
    }

    private final void setUpPowerCodeCashback(dn1.c cVar) {
        dn1.a aVar;
        String str;
        String str2;
        BonusAdmitadNewView bonusAdmitadNewView;
        String str3 = cVar.a;
        j59 j59Var = null;
        if (str3 != null && (aVar = cVar.c) != null && (str = aVar.a) != null && (str2 = cVar.b) != null && (bonusAdmitadNewView = (BonusAdmitadNewView) getViewState()) != null) {
            bonusAdmitadNewView.setCashbackTitle(str3, vp3.c(17, str, str2));
            j59Var = j59.a;
        }
        if (j59Var == null) {
            setUpDefaultCashback(cVar);
        }
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

    public final void onAffiliationCheckClicked(wh6 wh6Var) {
        wh6Var.getClass();
        this.router.d(new mf7(wh6Var.a, (int) this.admitadId));
    }

    public final void onBackClick() {
        this.router.c();
    }

    public final void onCouponClick(long j2) {
        int i2 = (int) j2;
        new kd.e.d.f.a(ud.c(i2, "Go To Promocode")).a();
        new kd.e.a.C0234a.C0237e.C0238a((int) this.admitadId, ud.c(i2, "Go To Promocode")).a();
        this.router.d(new gg7(j2));
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        x9 x9Var = this.admitadPartnerInteractor;
        mz7<List<kx5>> mz7VarI = x9Var.a.i(this.admitadId);
        p9 p9Var = new p9(u9.f, 0);
        mz7VarI.getClass();
        r08 r08VarF = new p08(mz7VarI, p9Var).i(ne7.c).f(rj.a());
        final c cVar = new c();
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new xz7(r08VarF, new qx1() { // from class: vk0
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                cVar.invoke(obj);
            }
        }), d.f, new e()), null, 1, null);
    }

    public final void onGoToAllOperationsClicked() {
        new kd.e.d.C0250e("Operations").a();
        new kd.e.a.C0234a.d((int) this.admitadId, "Operations").a();
        this.router.d(new nh7());
    }

    public final void onGoToShopButtonClick(String str) {
        BonusAdmitadNewView bonusAdmitadNewView;
        str.getClass();
        new kd.e.a.C0234a.C0235a((int) this.admitadId, "Button").a();
        new kd.e.d.a(ud.c((int) this.admitadId, "Button")).a();
        int i2 = b.a[this.redirectType.ordinal()];
        if (i2 == 1) {
            BonusAdmitadNewView bonusAdmitadNewView2 = (BonusAdmitadNewView) getViewState();
            if (bonusAdmitadNewView2 != null) {
                bonusAdmitadNewView2.openGoToLinkInCustomTabs(str);
                return;
            }
            return;
        }
        if (i2 != 2) {
            if (i2 == 3 && (bonusAdmitadNewView = (BonusAdmitadNewView) getViewState()) != null) {
                bonusAdmitadNewView.openUrl(str);
                return;
            }
            return;
        }
        BonusAdmitadNewView bonusAdmitadNewView3 = (BonusAdmitadNewView) getViewState();
        if (bonusAdmitadNewView3 != null) {
            bonusAdmitadNewView3.openUrl(str);
        }
    }

    public final void onGoToShopClick(sy8 sy8Var, String str, String str2) {
        sy8Var.getClass();
        str.getClass();
        str2.getClass();
        BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) getViewState();
        if (bonusAdmitadNewView != null) {
            bonusAdmitadNewView.showRedirectDialog(sy8Var, str, str2);
        }
    }

    public final void onHotItemOrderClick(String str, String str2) {
        str.getClass();
        str2.getClass();
        Map mapSingletonMap = Collections.singletonMap("Go to item", str2);
        mapSingletonMap.getClass();
        Map mapSingletonMap2 = Collections.singletonMap("Hot items", mapSingletonMap);
        mapSingletonMap2.getClass();
        new kd.e.d.C0249d.a(mapSingletonMap2).a();
        int i2 = (int) this.admitadId;
        Map mapSingletonMap3 = Collections.singletonMap("Go to item", str2);
        mapSingletonMap3.getClass();
        new kd.e.a.C0234a.c.C0236a(i2, mapSingletonMap3).a();
        BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) getViewState();
        if (bonusAdmitadNewView != null) {
            bonusAdmitadNewView.openHotItemUrl(str2, str);
        }
    }

    public final void onMoreCashbackInfoClick(r31 r31Var) {
        r31Var.getClass();
        Map mapSingletonMap = Collections.singletonMap("Tap_card_button", Long.valueOf(this.admitadId));
        mapSingletonMap.getClass();
        new kd.e.d.j(mapSingletonMap).a();
        BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) getViewState();
        if (bonusAdmitadNewView != null) {
            bonusAdmitadNewView.showMoreCashbackDialog(r31Var, this.admitadId);
        }
    }

    public final void onOrdClick(b06 b06Var) {
        b06Var.getClass();
        BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) getViewState();
        if (bonusAdmitadNewView != null) {
            bonusAdmitadNewView.showOrdDialog(b06Var);
        }
    }

    public final void onSeeAllCouponsClick() {
        Map mapSingletonMap = Collections.singletonMap("Promocode List", "Open");
        mapSingletonMap.getClass();
        new kd.e.d.f.b.a(mapSingletonMap).a();
        new kd.e.a.C0234a.C0237e.b((int) this.admitadId, "Promocode List").a();
        this.router.d(new hg7(this.admitadId));
    }

    public final void onShareCardClicked(qx5 qx5Var) {
        qx5Var.getClass();
        new kd.e.d.h(ud.c((int) this.admitadId, "Share")).a();
        new kd.e.a.C0234a.g((int) this.admitadId, "Share").a();
        BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) getViewState();
        if (bonusAdmitadNewView != null) {
            String strD = new Deeplink.Catalog.Admitad(this.admitadId).d();
            String str = qx5Var.c;
            String str2 = qx5Var.f;
            if (str2 == null) {
                str2 = "";
            }
            bonusAdmitadNewView.shareCard(strD, me0.c(str, " ", str2), this.repository.d(), qx5Var.a);
        }
    }

    public final void setFavouriteCoupon(long j2, boolean z) {
        BasePresenter.disposeOnDestroy$default(this, yb8.e(this.couponsInteractor.a.f(new h63(z, j2)).i(ne7.c).f(rj.a()), new h(j2, this, z), new g(z)), null, 1, null);
    }

    public final void setFavouriteShop(final long j2, final boolean z) {
        final x9 x9Var = this.admitadPartnerInteractor;
        BasePresenter.disposeOnDestroy$default(this, yb8.e(x9Var.a.l(new i63(z, j2)).e(new h6() { // from class: o9
            @Override // defpackage.h6
            public final void run() {
                x9Var.c.d.b((int) j2, z);
            }
        }).i(ne7.c).f(rj.a()), new j(j2, this, z), new i(z)), null, 1, null);
    }

    public final void setFloatingButtonVisibility(int i2, int i3) {
        HashMap<ck0, Boolean> map = this.blocksLoadingState;
        if (!map.isEmpty()) {
            Iterator<Map.Entry<ck0, Boolean>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                if (it.next().getValue().booleanValue()) {
                    return;
                }
            }
        }
        if (this.floatingButtonEnabled) {
            boolean z = i3 > i2;
            BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) getViewState();
            if (bonusAdmitadNewView != null) {
                bonusAdmitadNewView.setFloatingButtonVisibility(z);
            }
        }
    }

    public final void showAllTerm(List<ux5> list) {
        list.getClass();
        BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) getViewState();
        if (bonusAdmitadNewView != null) {
            bonusAdmitadNewView.showAllTerms(list);
        }
    }

    public final void showLoadingDialog(boolean z) {
        BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) getViewState();
        if (bonusAdmitadNewView != null) {
            bonusAdmitadNewView.showLoadingDialog(z);
        }
    }
}
