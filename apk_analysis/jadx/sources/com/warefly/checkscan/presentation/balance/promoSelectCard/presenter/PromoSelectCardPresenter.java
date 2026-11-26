package com.warefly.checkscan.presentation.balance.promoSelectCard.presenter;

import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.component.logger.CrashlyticsException;
import com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardView;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ac7;
import defpackage.av0;
import defpackage.b36;
import defpackage.b40;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ce3;
import defpackage.df3;
import defpackage.e02;
import defpackage.e41;
import defpackage.g41;
import defpackage.gh4;
import defpackage.ho6;
import defpackage.hs5;
import defpackage.i13;
import defpackage.i57;
import defpackage.is5;
import defpackage.iw2;
import defpackage.ix;
import defpackage.j59;
import defpackage.jf6;
import defpackage.js5;
import defpackage.ks5;
import defpackage.kx2;
import defpackage.lo7;
import defpackage.lw7;
import defpackage.mb4;
import defpackage.mk1;
import defpackage.mx2;
import defpackage.nl3;
import defpackage.op3;
import defpackage.pg8;
import defpackage.pp6;
import defpackage.pw7;
import defpackage.q41;
import defpackage.r57;
import defpackage.rj9;
import defpackage.s0;
import defpackage.s57;
import defpackage.ss4;
import defpackage.sw7;
import defpackage.t73;
import defpackage.ta;
import defpackage.tb7;
import defpackage.u73;
import defpackage.uf3;
import defpackage.wi9;
import defpackage.y22;
import defpackage.zb7;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class PromoSelectCardPresenter extends WithdrawalPresenter<PromoSelectCardView> implements ho6.a, ta.a, ss4.a, rj9 {
    private static final a Companion = new a();

    @Deprecated
    public static final String SOURCE_DEEPLINK = "deeplink";
    private final u73 fetchPromoTransferShowcase;
    private final uf3 flowRouter;
    private boolean isShowcaseReloadPending;
    private final ks5 observeTransferShowcaseUpdates;
    private final String onboardingKey;
    private final int promoId;
    private final zb7 saveShowcaseClick;
    private final ac7 saveShowcaseContext;
    private final lo7 sendBankCardEventUseCase;
    private final e41 showcaseAnalytics;
    private mb4 showcaseJob;
    private Map<b36<String, Integer>, pw7> showcasePayloads;
    private final q41 showcaseRenderState;
    private pp6 showcaseResponse;
    private List<? extends List<? extends sw7>> showcaseRows;
    private final String source;
    private final Integer sourceTaskId;
    private final Integer taskId;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<Throwable, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            if (th == null) {
                PromoSelectCardPresenter promoSelectCardPresenter = PromoSelectCardPresenter.this;
                if (promoSelectCardPresenter.isShowcaseReloadPending) {
                    PromoSelectCardPresenter.loadShowcase$default(promoSelectCardPresenter, true, null, 2, null);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.promoSelectCard.presenter.PromoSelectCardPresenter$loadShowcase$job$1", f = "PromoSelectCardPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<i57<? extends pp6>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;
        public final /* synthetic */ boolean n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(boolean z, e02<? super c> e02Var) {
            super(2, e02Var);
            this.n = z;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = PromoSelectCardPresenter.this.new c(this.n, e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends pp6> i57Var, e02<? super j59> e02Var) {
            return ((c) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            PromoSelectCardView promoSelectCardView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.c;
            PromoSelectCardPresenter promoSelectCardPresenter = PromoSelectCardPresenter.this;
            if (z) {
                promoSelectCardPresenter.showShowcase((pp6) ((i57.c) i57Var).a);
            } else {
                boolean zE = aa4.e(i57Var, i57.b.a);
                boolean z2 = this.n;
                if (zE) {
                    if (!z2 && (promoSelectCardView = (PromoSelectCardView) promoSelectCardPresenter.getViewState()) != null) {
                        promoSelectCardView.handleLoading(true);
                        promoSelectCardView.showError(false);
                    }
                } else if (i57Var instanceof i57.a) {
                    if (z2) {
                        s0.d(new CrashlyticsException.Flow("Flow: ".concat("loadShowcase, ".concat(i13.a(((i57.a) i57Var).a)))));
                    } else {
                        PromoSelectCardView promoSelectCardView2 = (PromoSelectCardView) promoSelectCardPresenter.getViewState();
                        if (promoSelectCardView2 != null) {
                            promoSelectCardView2.handleLoading(false);
                            promoSelectCardView2.showError(true);
                        }
                    }
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.promoSelectCard.presenter.PromoSelectCardPresenter$onFirstViewAttach$1", f = "PromoSelectCardPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<j59, e02<? super j59>, Object> {
        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return PromoSelectCardPresenter.this.new d(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(j59 j59Var, e02<? super j59> e02Var) {
            return ((d) create(j59Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            PromoSelectCardPresenter.this.onShowcaseUpdated();
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.promoSelectCard.presenter.PromoSelectCardPresenter$sendCardPreviewAction$1", f = "PromoSelectCardPresenter.kt", l = {256, 258}, m = "invokeSuspend")
    public static final class e extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ String m;
        public final /* synthetic */ PromoSelectCardPresenter n;
        public final /* synthetic */ int o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, PromoSelectCardPresenter promoSelectCardPresenter, int i, e02<? super e> e02Var) {
            super(2, e02Var);
            this.m = str;
            this.n = promoSelectCardPresenter;
            this.o = i;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new e(this.m, this.n, this.o, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((e) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0048, code lost:
        
            if (r7 == r0) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x005e, code lost:
        
            if (r7 == r0) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0060, code lost:
        
            return r0;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r7.l
                r2 = 1
                r3 = 2
                if (r1 == 0) goto L18
                if (r1 == r2) goto L14
                if (r1 != r3) goto Ld
                goto L14
            Ld:
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r7)
                r7 = 0
                return r7
            L14:
                defpackage.r57.b(r8)
                goto L61
            L18:
                defpackage.r57.b(r8)
                java.lang.String r8 = r7.m
                r8.getClass()
                java.lang.String r1 = "checkscan://"
                r4 = 0
                boolean r1 = defpackage.ra8.C(r8, r1, r4)
                int r5 = r7.o
                com.warefly.checkscan.presentation.balance.promoSelectCard.presenter.PromoSelectCardPresenter r6 = r7.n
                if (r1 == 0) goto L4b
                java.lang.String r1 = "checkscan://open_url"
                boolean r8 = defpackage.ra8.C(r8, r1, r4)
                if (r8 != 0) goto L4b
                lo7 r8 = com.warefly.checkscan.presentation.balance.promoSelectCard.presenter.PromoSelectCardPresenter.access$getSendBankCardEventUseCase$p(r6)
                r7.l = r2
                r90 r8 = r8.a
                java.lang.String r1 = "PREVIEW_OPEN_INFO"
                java.lang.Object r7 = r8.a(r5, r1, r7)
                if (r7 != r0) goto L46
                goto L48
            L46:
                j59 r7 = defpackage.j59.a
            L48:
                if (r7 != r0) goto L61
                goto L60
            L4b:
                lo7 r8 = com.warefly.checkscan.presentation.balance.promoSelectCard.presenter.PromoSelectCardPresenter.access$getSendBankCardEventUseCase$p(r6)
                r7.l = r3
                r90 r8 = r8.a
                java.lang.String r1 = "PREVIEW_CLICK"
                java.lang.Object r7 = r8.a(r5, r1, r7)
                if (r7 != r0) goto L5c
                goto L5e
            L5c:
                j59 r7 = defpackage.j59.a
            L5e:
                if (r7 != r0) goto L61
            L60:
                return r0
            L61:
                j59 r7 = defpackage.j59.a
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.warefly.checkscan.presentation.balance.promoSelectCard.presenter.PromoSelectCardPresenter.e.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PromoSelectCardPresenter(int i, String str, Integer num, String str2, Integer num2, e41 e41Var, ac7 ac7Var, zb7 zb7Var, op3 op3Var, u73 u73Var, ks5 ks5Var, b40 b40Var, uf3 uf3Var, lo7 lo7Var, mk1 mk1Var, jf6 jf6Var, iw2 iw2Var) {
        super(b40Var, jf6Var, mk1Var, iw2Var);
        e41Var.getClass();
        ac7Var.getClass();
        zb7Var.getClass();
        op3Var.getClass();
        u73Var.getClass();
        ks5Var.getClass();
        b40Var.getClass();
        uf3Var.getClass();
        lo7Var.getClass();
        mk1Var.getClass();
        jf6Var.getClass();
        iw2Var.getClass();
        this.promoId = i;
        this.onboardingKey = str;
        this.taskId = num;
        this.source = str2;
        this.sourceTaskId = num2;
        this.showcaseAnalytics = e41Var;
        this.saveShowcaseContext = ac7Var;
        this.saveShowcaseClick = zb7Var;
        this.fetchPromoTransferShowcase = u73Var;
        this.observeTransferShowcaseUpdates = ks5Var;
        this.flowRouter = uf3Var;
        this.sendBankCardEventUseCase = lo7Var;
        this.showcaseRenderState = op3Var.a.c(i);
        this.showcaseRows = kx2.b;
        this.showcasePayloads = mx2.b;
    }

    private final mb4 loadShowcase(boolean z, String str) {
        mb4 mb4Var = this.showcaseJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.isShowcaseReloadPending = false;
        u73 u73Var = this.fetchPromoTransferShowcase;
        int i = this.promoId;
        Integer num = this.taskId;
        u73Var.getClass();
        mb4 mb4VarLaunchInPresenter = launchInPresenter(new df3(s57.a(new tb7(new t73(u73Var, i, str, num, null))), new c(z, null)));
        mb4VarLaunchInPresenter.g(new b());
        this.showcaseJob = mb4VarLaunchInPresenter;
        return mb4VarLaunchInPresenter;
    }

    public static /* synthetic */ mb4 loadShowcase$default(PromoSelectCardPresenter promoSelectCardPresenter, boolean z, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        return promoSelectCardPresenter.loadShowcase(z, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onShowcaseUpdated() {
        mb4 mb4Var = this.showcaseJob;
        if (mb4Var == null || !mb4Var.isActive()) {
            loadShowcase$default(this, true, null, 2, null);
        } else {
            this.isShowcaseReloadPending = true;
        }
    }

    private final void sendCardPreviewAction(int i, String str) {
        av0.c(getPresenterScope(), null, null, new e(str, this, i, null), 3);
    }

    private final void sendShowcaseClick(int i, String str) {
        String str2;
        this.saveShowcaseClick.a.b(this.promoId, i);
        pw7 pw7Var = this.showcasePayloads.get(new b36(str, Integer.valueOf(i)));
        if (pw7Var == null) {
            Iterator<T> it = this.showcasePayloads.values().iterator();
            boolean z = false;
            Object obj = null;
            while (true) {
                if (!it.hasNext()) {
                    if (!z) {
                        break;
                    } else {
                        break;
                    }
                }
                Object next = it.next();
                Integer num = ((pw7) next).b;
                if (num != null && num.intValue() == i) {
                    if (!z) {
                        z = true;
                        obj = next;
                    }
                }
                obj = null;
                break;
            }
            pw7Var = (pw7) obj;
        }
        String str3 = (pw7Var == null || (str2 = pw7Var.a) == null) ? str : str2;
        this.showcaseAnalytics.b(this.promoId, str3, i, showcasePositionOf(str3, i), showcaseListSize(), pw7Var != null ? pw7Var.c : null, pw7Var != null ? pw7Var.d : null, pw7Var != null ? pw7Var.e : null);
    }

    public static /* synthetic */ void sendShowcaseClick$default(PromoSelectCardPresenter promoSelectCardPresenter, int i, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = "offer";
        }
        promoSelectCardPresenter.sendShowcaseClick(i, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00c9, code lost:
    
        r10 = "top_choice";
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void showShowcase(defpackage.pp6 r18) {
        /*
            Method dump skipped, instruction units count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.warefly.checkscan.presentation.balance.promoSelectCard.presenter.PromoSelectCardPresenter.showShowcase(pp6):void");
    }

    private final int showcaseListSize() {
        Iterator<T> it = this.showcaseRows.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += ((List) it.next()).size();
        }
        return size;
    }

    private final Integer showcasePositionOf(String str, int i) {
        Integer numA;
        Iterator<T> it = this.showcaseRows.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            for (sw7 sw7Var : (List) it.next()) {
                i2++;
                if (aa4.e(sw7Var.b(), str) && (numA = sw7Var.a()) != null && numA.intValue() == i) {
                    return Integer.valueOf(i2);
                }
            }
        }
        return null;
    }

    public final q41 getShowcaseRenderState() {
        return this.showcaseRenderState;
    }

    public final List<List<sw7>> getShowcaseRows() {
        return this.showcaseRows;
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter
    public void onAddEmailClicked() {
        uf3 uf3Var = this.flowRouter;
        ix ixVar = new ix(AuthReason.AddEmail.b);
        uf3Var.getClass();
        uf3Var.c.d(ixVar);
    }

    @Override // ta.a
    public void onAdvanceSelectCardClicked(int i, String str) {
        str.getClass();
        sendShowcaseClick$default(this, i, null, 2, null);
        PromoSelectCardView promoSelectCardView = (PromoSelectCardView) getViewState();
        if (promoSelectCardView != null) {
            promoSelectCardView.openUrlInCustomTab(str);
        }
        sendCardPreviewAction(i, str);
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        loadShowcase$default(this, false, this.onboardingKey, 1, null);
        ks5 ks5Var = this.observeTransferShowcaseUpdates;
        launchInPresenter(new df3(new is5(new hs5(new ce3(ks5Var.a.c(), new js5(ks5Var, null)))), new d(null)));
    }

    public void onFullTermsClicked(String str, String str2) {
        str2.getClass();
        PromoSelectCardView promoSelectCardView = (PromoSelectCardView) getViewState();
        if (promoSelectCardView != null) {
            promoSelectCardView.showFullTerms(str, str2);
        }
    }

    @Override // ss4.a
    public void onLoanClicked(int i, String str) {
        str.getClass();
        sendShowcaseClick$default(this, i, null, 2, null);
        PromoSelectCardView promoSelectCardView = (PromoSelectCardView) getViewState();
        if (promoSelectCardView != null) {
            promoSelectCardView.openUrlInCustomTab(str);
        }
        sendCardPreviewAction(i, str);
    }

    @Override // ho6.a
    public void onSelectCardClicked(int i, String str) {
        str.getClass();
        sendShowcaseClick$default(this, i, null, 2, null);
        PromoSelectCardView promoSelectCardView = (PromoSelectCardView) getViewState();
        if (promoSelectCardView != null) {
            promoSelectCardView.openUrl(str);
        }
        sendCardPreviewAction(i, str);
    }

    public final void onShowcaseItemShown(lw7 lw7Var) {
        pw7 pw7Var;
        lw7Var.getClass();
        Integer num = lw7Var.b;
        if (num != null) {
            pw7Var = this.showcasePayloads.get(new b36(lw7Var.a, Integer.valueOf(num.intValue())));
        } else {
            pw7Var = null;
        }
        this.showcaseAnalytics.a(this.promoId, lw7Var, pw7Var != null ? pw7Var.c : null, pw7Var != null ? pw7Var.d : null, pw7Var != null ? pw7Var.e : null);
    }

    public final void onShowcaseRenderStarted() {
        pp6 pp6Var = this.showcaseResponse;
        if (pp6Var == null) {
            return;
        }
        ac7 ac7Var = this.saveShowcaseContext;
        int i = this.promoId;
        String str = pp6Var.d;
        String str2 = pp6Var.e;
        String str3 = pp6Var.f;
        String str4 = pp6Var.g;
        String str5 = this.source;
        if (str5 == null) {
            str5 = "deeplink";
        }
        g41 g41Var = new g41(str, str2, str3, str4, str5, this.sourceTaskId, null);
        ac7Var.getClass();
        ac7Var.a.a(i, g41Var);
        this.showcaseAnalytics.c(this.promoId, showcaseListSize());
    }

    @Override // defpackage.rj9
    public void onWithdrawClicked(wi9 wi9Var, pw7 pw7Var) {
        Integer num;
        wi9Var.getClass();
        if (pw7Var != null && (num = pw7Var.b) != null) {
            int iIntValue = num.intValue();
            String str = pw7Var.a;
            if (str == null) {
                str = "in_progress";
            }
            sendShowcaseClick(iIntValue, str);
        }
        onWithdrawEvent(wi9Var);
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter
    public Object onWithdrawEventHandled(wi9 wi9Var, e02<? super j59> e02Var) {
        Object objE0;
        if (wi9Var instanceof wi9.i ? true : wi9Var instanceof wi9.j) {
            Object objE1 = loadShowcase$default(this, true, null, 2, null).e0(e02Var);
            return objE1 == a32.COROUTINE_SUSPENDED ? objE1 : j59.a;
        }
        if (!(wi9Var instanceof wi9.c)) {
            return ((wi9Var instanceof wi9.a) && (objE0 = loadShowcase$default(this, false, null, 3, null).e0(e02Var)) == a32.COROUTINE_SUSPENDED) ? objE0 : j59.a;
        }
        Object objE2 = loadShowcase$default(this, false, null, 3, null).e0(e02Var);
        return objE2 == a32.COROUTINE_SUSPENDED ? objE2 : j59.a;
    }

    public final void refreshContent() {
        loadShowcase$default(this, false, null, 3, null);
    }
}
