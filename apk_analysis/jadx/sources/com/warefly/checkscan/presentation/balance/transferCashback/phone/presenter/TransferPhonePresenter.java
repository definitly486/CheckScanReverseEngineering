package com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhonePresenter;
import defpackage.al0;
import defpackage.aq0;
import defpackage.cp2;
import defpackage.eq0;
import defpackage.g17;
import defpackage.gh4;
import defpackage.gq0;
import defpackage.gq6;
import defpackage.h6;
import defpackage.he7;
import defpackage.j59;
import defpackage.mz7;
import defpackage.n15;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.nz8;
import defpackage.p08;
import defpackage.p51;
import defpackage.qa8;
import defpackage.qx1;
import defpackage.ra8;
import defpackage.rj;
import defpackage.sz8;
import defpackage.tz8;
import defpackage.uz7;
import defpackage.wz8;
import defpackage.xg1;
import defpackage.xk0;
import defpackage.xp0;
import defpackage.xz8;
import defpackage.yp0;
import defpackage.yz8;
import defpackage.z26;
import defpackage.za3;
import defpackage.zj9;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class TransferPhonePresenter extends BasePresenter<TransferPhoneView> {
    private final p51 cashBackInteractor;
    private final nz8 interactor;
    private final n15 maskStringUtil;
    private sz8 transferInfo;
    private final g17 transferSumRegex;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[xz8.b.values().length];
            try {
                iArr[xz8.b.Success.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    public static final class b extends gh4 implements nl3<sz8, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(sz8 sz8Var) {
            sz8 sz8Var2 = sz8Var;
            TransferPhonePresenter transferPhonePresenter = TransferPhonePresenter.this;
            transferPhonePresenter.transferInfo = sz8Var2;
            TransferPhoneView transferPhoneView = (TransferPhoneView) transferPhonePresenter.getViewState();
            if (transferPhoneView != null) {
                sz8Var2.getClass();
                String strA = transferPhonePresenter.maskStringUtil.a(sz8Var2.e);
                int i = sz8Var2.a;
                int i2 = sz8Var2.b;
                int i3 = sz8Var2.c;
                String str = sz8Var2.d;
                String str2 = sz8Var2.f;
                String str3 = sz8Var2.g;
                str.getClass();
                strA.getClass();
                str3.getClass();
                transferPhoneView.showInfo(new sz8(i, i2, i3, str, strA, str2, str3));
            }
            TransferPhoneView transferPhoneView2 = (TransferPhoneView) transferPhonePresenter.getViewState();
            if (transferPhoneView2 != null) {
                transferPhoneView2.showErrorInfoNotLoaded(false, true);
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<Throwable, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            TransferPhoneView transferPhoneView = (TransferPhoneView) TransferPhonePresenter.this.getViewState();
            if (transferPhoneView != null) {
                transferPhoneView.showErrorInfoNotLoaded(true, true);
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<List<? extends zj9>, j59> {
        public d() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final j59 invoke(List<? extends zj9> list) {
            List<? extends zj9> list2 = list;
            TransferPhonePresenter transferPhonePresenter = TransferPhonePresenter.this;
            TransferPhoneView transferPhoneView = (TransferPhoneView) transferPhonePresenter.getViewState();
            if (transferPhoneView != 0) {
                list2.getClass();
                transferPhoneView.showPromocodes(list2);
            }
            TransferPhoneView transferPhoneView2 = (TransferPhoneView) transferPhonePresenter.getViewState();
            if (transferPhoneView2 != null) {
                transferPhoneView2.showErrorInfoNotLoaded(false, true);
            }
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<Throwable, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            TransferPhoneView transferPhoneView = (TransferPhoneView) TransferPhonePresenter.this.getViewState();
            if (transferPhoneView != null) {
                transferPhoneView.showErrorInfoNotLoaded(true, false);
            }
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<xz8, j59> {
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str) {
            super(1);
            this.g = str;
        }

        @Override // defpackage.nl3
        public final j59 invoke(xz8 xz8Var) {
            xz8 xz8Var2 = xz8Var;
            xz8Var2.getClass();
            TransferPhonePresenter.this.processTransferResult(this.g, xz8Var2);
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<Throwable, j59> {
        public g() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            TransferPhoneView transferPhoneView = (TransferPhoneView) TransferPhonePresenter.this.getViewState();
            if (transferPhoneView != null) {
                transferPhoneView.showTransferringMoney(false);
                transferPhoneView.showTransferMoneyError(null);
            }
            return j59.a;
        }
    }

    public TransferPhonePresenter(nz8 nz8Var, p51 p51Var, n15 n15Var) {
        nz8Var.getClass();
        p51Var.getClass();
        n15Var.getClass();
        this.interactor = nz8Var;
        this.cashBackInteractor = p51Var;
        this.maskStringUtil = n15Var;
        this.transferSumRegex = new g17("([0-9]+[,.]?[0-9]?[0-9]?)");
    }

    private final boolean checkSum(int i) {
        sz8 sz8Var = this.transferInfo;
        if (sz8Var == null) {
            return false;
        }
        if (i < sz8Var.a) {
            TransferPhoneView transferPhoneView = (TransferPhoneView) getViewState();
            if (transferPhoneView != null) {
                transferPhoneView.showWrongTransferSum();
            }
            return false;
        }
        if (i > sz8Var.b) {
            TransferPhoneView transferPhoneView2 = (TransferPhoneView) getViewState();
            if (transferPhoneView2 != null) {
                transferPhoneView2.showWrongTransferSum();
            }
            return false;
        }
        if (i > sz8Var.c) {
            TransferPhoneView transferPhoneView3 = (TransferPhoneView) getViewState();
            if (transferPhoneView3 != null) {
                transferPhoneView3.showWrongTransferSum();
            }
            return false;
        }
        TransferPhoneView transferPhoneView4 = (TransferPhoneView) getViewState();
        if (transferPhoneView4 == null) {
            return true;
        }
        transferPhoneView4.hideErrors();
        return true;
    }

    private final void loadInfo() {
        TransferPhoneView transferPhoneView = (TransferPhoneView) getViewState();
        int i = 1;
        if (transferPhoneView != null) {
            transferPhoneView.showLoadingInfo(true);
        }
        nz8 nz8Var = this.interactor;
        mz7<tz8> mz7VarC = nz8Var.a.c();
        int i2 = 2;
        yp0 yp0Var = new yp0(new xg1(nz8Var, i2), 5);
        mz7VarC.getClass();
        p08 p08Var = new p08(mz7VarC, yp0Var);
        he7 he7Var = ne7.c;
        uz7 uz7Var = new uz7(p08Var.i(he7Var).f(rj.a()), new z26(this, i));
        xk0 xk0Var = new xk0(new b(), i2);
        final c cVar = new c();
        BasePresenter.disposeOnDestroy$default(this, uz7Var.g(xk0Var, new qx1() { // from class: uz8
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                cVar.invoke(obj);
            }
        }), null, 1, null);
        nz8 nz8Var2 = this.interactor;
        mz7<List<gq6>> mz7VarB = nz8Var2.b.b(nz8Var2.c.O0());
        aq0 aq0Var = new aq0(eq0.h, i);
        mz7VarB.getClass();
        BasePresenter.disposeOnDestroy$default(this, new uz7(new p08(mz7VarB, aq0Var).i(he7Var).f(rj.a()), new h6() { // from class: vz8
            @Override // defpackage.h6
            public final void run() {
                TransferPhonePresenter.loadInfo$lambda$11(this.a);
            }
        }).g(new za3(new d(), i), new al0(new e(), i)), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadInfo$lambda$11(TransferPhonePresenter transferPhonePresenter) {
        TransferPhoneView transferPhoneView;
        TransferPhoneView transferPhoneView2 = (TransferPhoneView) transferPhonePresenter.getViewState();
        if (transferPhoneView2 != null) {
            transferPhoneView2.showLoadingInfo(false);
        }
        sz8 sz8Var = transferPhonePresenter.transferInfo;
        if (sz8Var == null || (transferPhoneView = (TransferPhoneView) transferPhonePresenter.getViewState()) == null) {
            return;
        }
        transferPhoneView.setTransferEnabled(transferPhonePresenter.checkSum(sz8Var.c));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadInfo$lambda$7(TransferPhonePresenter transferPhonePresenter) {
        TransferPhoneView transferPhoneView;
        TransferPhoneView transferPhoneView2 = (TransferPhoneView) transferPhonePresenter.getViewState();
        if (transferPhoneView2 != null) {
            transferPhoneView2.showLoadingInfo(false);
        }
        sz8 sz8Var = transferPhonePresenter.transferInfo;
        if (sz8Var == null || (transferPhoneView = (TransferPhoneView) transferPhonePresenter.getViewState()) == null) {
            return;
        }
        transferPhoneView.setTransferEnabled(transferPhonePresenter.checkSum(sz8Var.c));
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void processTransferResult(String str, xz8 xz8Var) {
        j59 j59Var;
        TransferPhoneView transferPhoneView = (TransferPhoneView) getViewState();
        if (transferPhoneView != null) {
            transferPhoneView.showTransferringMoney(false);
            if (a.a[xz8Var.a.ordinal()] == 1) {
                this.cashBackInteractor.getClass();
                p51.i.onNext(p51.a.ToPhone);
                transferPhoneView.showTransferMoneySuccess(str);
                return;
            }
            xz8.a aVar = xz8Var.f;
            if (aVar != null) {
                transferPhoneView.showTransferFailedBottomSheet(aVar);
                j59Var = j59.a;
            } else {
                j59Var = null;
            }
            if (j59Var == null) {
                transferPhoneView.showTransferMoneyError(xz8Var.e);
            }
        }
    }

    public final void onRetryLoadInfo() {
        TransferPhoneView transferPhoneView = (TransferPhoneView) getViewState();
        if (transferPhoneView != null) {
            transferPhoneView.showErrorInfoNotLoaded(false, true);
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
            int i = 1;
            ((TransferPhoneView) getViewState()).showTransferringMoney(true);
            sz8 sz8Var = this.transferInfo;
            if (sz8Var != null) {
                nz8 nz8Var = this.interactor;
                String str2 = sz8Var.e;
                nz8Var.getClass();
                str2.getClass();
                mz7<yz8> mz7VarB = nz8Var.a.b(new wz8(null, str2, iIntValue));
                xp0 xp0Var = new xp0(gq0.i, i);
                mz7VarB.getClass();
                cp2 cp2VarSubscribeIfPayloadIsFree = subscribeIfPayloadIsFree(new p08(mz7VarB, xp0Var).i(ne7.c).f(rj.a()), new f(str), new g());
                if (cp2VarSubscribeIfPayloadIsFree != null) {
                    BasePresenter.disposeOnDestroy$default(this, cp2VarSubscribeIfPayloadIsFree, null, 1, null);
                }
            }
        }
    }

    public final void onTransferCoupon(int i) {
        TransferPhoneView transferPhoneView = (TransferPhoneView) getViewState();
        if (transferPhoneView != null) {
            transferPhoneView.startTransferToCoupon(i);
        }
    }

    public final void onTransferSumChanged(String str) {
        str.getClass();
        TransferPhoneView transferPhoneView = (TransferPhoneView) getViewState();
        if (transferPhoneView != null) {
            transferPhoneView.setTransferEnabled(checkSum(str));
        }
    }

    private final boolean checkSum(String str) {
        Integer sum = parseSum(str);
        if (sum != null) {
            return checkSum(sum.intValue());
        }
        TransferPhoneView transferPhoneView = (TransferPhoneView) getViewState();
        if (transferPhoneView == null) {
            return false;
        }
        transferPhoneView.showInvalidTransferSumError();
        return false;
    }
}
