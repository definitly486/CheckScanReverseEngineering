package defpackage;

import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;
import com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesAutoScrollState$startAutoScroll$1", f = "BonusesAutoScrollState.kt", l = {39, 41}, m = "invokeSuspend")
public final class pp0 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public int l;
    public final /* synthetic */ qp0 m;

    @bd2(c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesAutoScrollState$startAutoScroll$1$1", f = "BonusesAutoScrollState.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public final /* synthetic */ qp0 l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(qp0 qp0Var, e02<? super a> e02Var) {
            super(2, e02Var);
            this.l = qp0Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new a(this.l, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((a) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            qp0 qp0Var = this.l;
            BonusesMainNewPresenter.a aVar = qp0Var.a;
            int iIncrementAndGet = qp0Var.f.incrementAndGet();
            BonusesMainNewView bonusesMainNewView = (BonusesMainNewView) BonusesMainNewPresenter.this.getViewState();
            if (bonusesMainNewView != null) {
                bonusesMainNewView.scrollNextSpecials(iIncrementAndGet);
            }
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pp0(qp0 qp0Var, e02<? super pp0> e02Var) {
        super(2, e02Var);
        this.m = qp0Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new pp0(this.m, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((pp0) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0026  */
    /* JADX WARN: Code duplicated, block: B:16:0x0030  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002e -> B:11:0x001b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0036 -> B:11:0x001b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x003e -> B:11:0x001b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0046 -> B:11:0x001b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0057 -> B:11:0x001b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r7.l
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L18
            if (r1 == r4) goto L14
            if (r1 != r3) goto Le
            goto L18
        Le:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r2
        L14:
            defpackage.r57.b(r8)
            goto L26
        L18:
            defpackage.r57.b(r8)
        L1b:
            r7.l = r4
            r5 = 5000(0x1388, double:2.4703E-320)
            java.lang.Object r8 = defpackage.yk2.b(r5, r7)
            if (r8 != r0) goto L26
            goto L59
        L26:
            qp0 r8 = r7.m
            java.util.concurrent.atomic.AtomicBoolean r1 = r8.b
            boolean r1 = r1.get()
            if (r1 == 0) goto L1b
            java.util.concurrent.atomic.AtomicBoolean r1 = r8.c
            boolean r1 = r1.get()
            if (r1 == 0) goto L1b
            java.util.concurrent.atomic.AtomicBoolean r1 = r8.d
            boolean r1 = r1.get()
            if (r1 != 0) goto L1b
            java.util.concurrent.atomic.AtomicBoolean r1 = r8.e
            boolean r1 = r1.get()
            if (r1 != 0) goto L1b
            oi2 r1 = defpackage.qo2.a
            hu3 r1 = defpackage.uy4.a
            pp0$a r5 = new pp0$a
            r5.<init>(r8, r2)
            r7.l = r3
            java.lang.Object r8 = defpackage.av0.d(r1, r5, r7)
            if (r8 != r0) goto L1b
        L59:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pp0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
