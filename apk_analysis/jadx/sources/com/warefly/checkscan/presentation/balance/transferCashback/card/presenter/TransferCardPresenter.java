package com.warefly.checkscan.presentation.balance.transferCashback.card.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardPresenter;
import defpackage.aq0;
import defpackage.az8;
import defpackage.bz8;
import defpackage.cp2;
import defpackage.eq0;
import defpackage.ez8;
import defpackage.fz8;
import defpackage.g17;
import defpackage.gh4;
import defpackage.gq6;
import defpackage.gz8;
import defpackage.h6;
import defpackage.he7;
import defpackage.j59;
import defpackage.k34;
import defpackage.l34;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.nz8;
import defpackage.ol6;
import defpackage.p08;
import defpackage.p51;
import defpackage.qa8;
import defpackage.ra8;
import defpackage.rj;
import defpackage.uk1;
import defpackage.uz7;
import defpackage.vc1;
import defpackage.vk1;
import defpackage.wp0;
import defpackage.zj9;
import defpackage.zp0;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class TransferCardPresenter extends BasePresenter<TransferCardView> {
    private final long cardId;
    private final p51 cashBackInteractor;
    private final nz8 interactor;
    private az8 transferInfo;
    private final g17 transferSumRegex;

    public static final class a extends gh4 implements nl3<az8, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(az8 az8Var) {
            az8 az8Var2 = az8Var;
            TransferCardPresenter transferCardPresenter = TransferCardPresenter.this;
            transferCardPresenter.transferInfo = az8Var2;
            TransferCardView transferCardView = (TransferCardView) transferCardPresenter.getViewState();
            if (transferCardView != null) {
                az8Var2.getClass();
                transferCardView.showInfo(az8Var2);
            }
            TransferCardView transferCardView2 = (TransferCardView) transferCardPresenter.getViewState();
            if (transferCardView2 != null) {
                transferCardView2.showErrorInfoNotLoaded(false);
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<Throwable, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            TransferCardView transferCardView = (TransferCardView) TransferCardPresenter.this.getViewState();
            if (transferCardView != null) {
                transferCardView.showErrorInfoNotLoaded(true);
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<List<? extends zj9>, j59> {
        public c() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final j59 invoke(List<? extends zj9> list) {
            List<? extends zj9> list2 = list;
            TransferCardPresenter transferCardPresenter = TransferCardPresenter.this;
            TransferCardView transferCardView = (TransferCardView) transferCardPresenter.getViewState();
            if (transferCardView != 0) {
                list2.getClass();
                transferCardView.showPromocodes(list2);
            }
            TransferCardView transferCardView2 = (TransferCardView) transferCardPresenter.getViewState();
            if (transferCardView2 != null) {
                transferCardView2.showErrorInfoNotLoaded(false);
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<Throwable, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            TransferCardView transferCardView = (TransferCardView) TransferCardPresenter.this.getViewState();
            if (transferCardView != null) {
                transferCardView.showErrorInfoNotLoaded(true);
            }
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<fz8, j59> {

        public static final /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[fz8.a.values().length];
                try {
                    iArr[fz8.a.Success.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                a = iArr;
            }
        }

        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(fz8 fz8Var) {
            fz8 fz8Var2 = fz8Var;
            TransferCardPresenter transferCardPresenter = TransferCardPresenter.this;
            TransferCardView transferCardView = (TransferCardView) transferCardPresenter.getViewState();
            if (transferCardView != null) {
                transferCardView.showTransferringMoney(false);
                if (a.a[fz8Var2.a.ordinal()] == 1) {
                    transferCardPresenter.cashBackInteractor.getClass();
                    p51.i.onNext(p51.a.ToPhone);
                    transferCardView.showApproveTransferDialog(fz8Var2.c, fz8Var2.d);
                } else {
                    transferCardView.showTransferMoneyError(fz8Var2.e);
                }
            }
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<Throwable, j59> {
        public f() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            TransferCardView transferCardView = (TransferCardView) TransferCardPresenter.this.getViewState();
            if (transferCardView != null) {
                transferCardView.showTransferringMoney(false);
                transferCardView.showTransferMoneyError(null);
            }
            return j59.a;
        }
    }

    public TransferCardPresenter(long j, nz8 nz8Var, p51 p51Var) {
        nz8Var.getClass();
        p51Var.getClass();
        this.cardId = j;
        this.interactor = nz8Var;
        this.cashBackInteractor = p51Var;
        this.transferSumRegex = new g17("([0-9]+[,.]?[0-9]?[0-9]?)");
    }

    private final boolean checkSum(int i) {
        az8 az8Var = this.transferInfo;
        if (az8Var == null) {
            return false;
        }
        int i2 = az8Var.a;
        if (i < i2) {
            TransferCardView transferCardView = (TransferCardView) getViewState();
            if (transferCardView != null) {
                transferCardView.showMinTransferSumNotReached(i2);
            }
            return false;
        }
        if (i > az8Var.b) {
            TransferCardView transferCardView2 = (TransferCardView) getViewState();
            if (transferCardView2 != null) {
                transferCardView2.showMaxTransferSumExceeded();
            }
            return false;
        }
        if (i > az8Var.c) {
            TransferCardView transferCardView3 = (TransferCardView) getViewState();
            if (transferCardView3 != null) {
                transferCardView3.showMaxTransferSumExceeded();
            }
            return false;
        }
        TransferCardView transferCardView4 = (TransferCardView) getViewState();
        if (transferCardView4 == null) {
            return true;
        }
        transferCardView4.hideErrors();
        return true;
    }

    private final void loadInfo() {
        TransferCardView transferCardView = (TransferCardView) getViewState();
        int i = 1;
        if (transferCardView != null) {
            transferCardView.showLoadingInfo(true);
        }
        nz8 nz8Var = this.interactor;
        mz7<bz8> mz7VarF = nz8Var.a.f(this.cardId);
        int i2 = 2;
        zp0 zp0Var = new zp0(new ol6(nz8Var, i), i2);
        mz7VarF.getClass();
        p08 p08Var = new p08(mz7VarF, zp0Var);
        he7 he7Var = ne7.c;
        BasePresenter.disposeOnDestroy$default(this, new uz7(p08Var.i(he7Var).f(rj.a()), new h6() { // from class: cz8
            @Override // defpackage.h6
            public final void run() {
                TransferCardPresenter.loadInfo$lambda$2(this.a);
            }
        }).g(new uk1(new a(), i2), new vk1(new b(), 4)), null, 1, null);
        nz8 nz8Var2 = this.interactor;
        mz7<List<gq6>> mz7VarB = nz8Var2.b.b(nz8Var2.c.O0());
        aq0 aq0Var = new aq0(eq0.h, 1);
        mz7VarB.getClass();
        BasePresenter.disposeOnDestroy$default(this, new uz7(new p08(mz7VarB, aq0Var).i(he7Var).f(rj.a()), new h6() { // from class: dz8
            @Override // defpackage.h6
            public final void run() {
                TransferCardPresenter.loadInfo$lambda$5(this.a);
            }
        }).g(new k34(new c(), i), new l34(new d(), i)), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadInfo$lambda$2(TransferCardPresenter transferCardPresenter) {
        TransferCardView transferCardView = (TransferCardView) transferCardPresenter.getViewState();
        if (transferCardView != null) {
            transferCardView.showLoadingInfo(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadInfo$lambda$5(TransferCardPresenter transferCardPresenter) {
        TransferCardView transferCardView = (TransferCardView) transferCardPresenter.getViewState();
        if (transferCardView != null) {
            transferCardView.showLoadingInfo(false);
        }
    }

    private final Integer parseSum(String str) {
        Double dM;
        if (!this.transferSumRegex.e(str)) {
            str = null;
        }
        if (str == null || (dM = qa8.m(ra8.y(str, StringUtils.COMMA, "."))) == null) {
            return null;
        }
        return Integer.valueOf((int) (dM.doubleValue() * 100.0d));
    }

    public final void onRetryLoadInfo() {
        TransferCardView transferCardView = (TransferCardView) getViewState();
        if (transferCardView != null) {
            transferCardView.showErrorInfoNotLoaded(false);
        }
        loadInfo();
    }

    public final void onShown() {
        loadInfo();
    }

    public final synchronized void onTransferClicked(String str) {
        str.getClass();
        Integer sum = parseSum(str);
        if (!checkSum(str)) {
            sum = null;
        }
        if (sum != null) {
            int iIntValue = sum.intValue();
            ((TransferCardView) getViewState()).showTransferringMoney(true);
            nz8 nz8Var = this.interactor;
            mz7<gz8> mz7VarA = nz8Var.a.a(new ez8(this.cardId, iIntValue));
            int i = 4;
            wp0 wp0Var = new wp0(new vc1(nz8Var, i), i);
            mz7VarA.getClass();
            cp2 cp2VarSubscribeIfPayloadIsFree = subscribeIfPayloadIsFree(new p08(mz7VarA, wp0Var).i(ne7.c).f(rj.a()), new e(), new f());
            if (cp2VarSubscribeIfPayloadIsFree != null) {
                BasePresenter.disposeOnDestroy$default(this, cp2VarSubscribeIfPayloadIsFree, null, 1, null);
            }
        }
    }

    public final void onTransferCoupon(int i) {
        TransferCardView transferCardView = (TransferCardView) getViewState();
        if (transferCardView != null) {
            transferCardView.startTransferToCoupon(i);
        }
    }

    public final void onTransferSumChanged(String str) {
        str.getClass();
        TransferCardView transferCardView = (TransferCardView) getViewState();
        if (transferCardView != null) {
            transferCardView.setTransferEnabled(checkSum(str));
        }
    }

    private final boolean checkSum(String str) {
        Integer sum = parseSum(str);
        if (sum != null) {
            return checkSum(sum.intValue());
        }
        TransferCardView transferCardView = (TransferCardView) getViewState();
        if (transferCardView == null) {
            return false;
        }
        transferCardView.showInvalidTransferSumError();
        return false;
    }
}
