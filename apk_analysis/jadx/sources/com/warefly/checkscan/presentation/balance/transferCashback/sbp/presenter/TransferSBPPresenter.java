package com.warefly.checkscan.presentation.balance.transferCashback.sbp.presenter;

import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c83;
import defpackage.d83;
import defpackage.df3;
import defpackage.e02;
import defpackage.e19;
import defpackage.h09;
import defpackage.i57;
import defpackage.j09;
import defpackage.j59;
import defpackage.kn1;
import defpackage.l09;
import defpackage.m09;
import defpackage.pg8;
import defpackage.px;
import defpackage.pz3;
import defpackage.q09;
import defpackage.qn1;
import defpackage.r57;
import defpackage.s09;
import defpackage.s47;
import defpackage.s57;
import defpackage.t09;
import defpackage.tb7;
import defpackage.u09;
import defpackage.uo7;
import defpackage.vo7;
import defpackage.xg5;
import defpackage.xz8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class TransferSBPPresenter extends BasePresenter<TransferSBPView> implements l09.a, s09.a, h09.a {
    private final xg5<i57<u09>> content;
    private final d83 fetchSBPTransferInfoUseCase;
    private final s47 resourceProvider;
    private m09 selectedBank;
    private final vo7 sendSBPTransferUseCase;

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

    @bd2(c = "com.warefly.checkscan.presentation.balance.transferCashback.sbp.presenter.TransferSBPPresenter$onButtonClicked$1", f = "TransferSBPPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<i57<? extends xz8>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = TransferSBPPresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends xz8> i57Var, e02<? super j59> e02Var) {
            return ((b) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            TransferSBPPresenter transferSBPPresenter = TransferSBPPresenter.this;
            if (z) {
                transferSBPPresenter.setButtonLoading(false);
            } else if (aa4.e(i57Var, i57.b.a)) {
                transferSBPPresenter.setButtonLoading(true);
            } else if (i57Var instanceof i57.c) {
                transferSBPPresenter.processTransferResult((xz8) ((i57.c) i57Var).a);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.transferCashback.sbp.presenter.TransferSBPPresenter$onFirstViewAttach$1", f = "TransferSBPPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<i57<? extends u09>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = TransferSBPPresenter.this.new c(e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends u09> i57Var, e02<? super j59> e02Var) {
            return ((c) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object value;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            xg5 xg5Var = TransferSBPPresenter.this.content;
            do {
                value = xg5Var.getValue();
            } while (!xg5Var.a(value, i57Var));
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.transferCashback.sbp.presenter.TransferSBPPresenter$onFirstViewAttach$2", f = "TransferSBPPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<i57<? extends u09>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public d(e02<? super d> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            d dVar = TransferSBPPresenter.this.new d(e02Var);
            dVar.l = obj;
            return dVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends u09> i57Var, e02<? super j59> e02Var) {
            return ((d) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            TransferSBPPresenter transferSBPPresenter = TransferSBPPresenter.this;
            if (z) {
                TransferSBPView transferSBPView = (TransferSBPView) transferSBPPresenter.getViewState();
                if (transferSBPView != null) {
                    transferSBPView.dismissDialog();
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                TransferSBPView transferSBPView2 = (TransferSBPView) transferSBPPresenter.getViewState();
                if (transferSBPView2 != null) {
                    transferSBPView2.showLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                TransferSBPView transferSBPView3 = (TransferSBPView) transferSBPPresenter.getViewState();
                if (transferSBPView3 != null) {
                    transferSBPView3.showLoading(false);
                }
                TransferSBPView transferSBPView4 = (TransferSBPView) transferSBPPresenter.getViewState();
                if (transferSBPView4 != null) {
                    transferSBPView4.showContent((u09) ((i57.c) i57Var).a);
                }
            }
            return j59.a;
        }
    }

    public TransferSBPPresenter(d83 d83Var, vo7 vo7Var, s47 s47Var) {
        d83Var.getClass();
        vo7Var.getClass();
        s47Var.getClass();
        this.fetchSBPTransferInfoUseCase = d83Var;
        this.sendSBPTransferUseCase = vo7Var;
        this.resourceProvider = s47Var;
        this.content = px.a(i57.b.a);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0095 A[EDGE_INSN: B:40:0x0095->B:41:0x0096 BREAK  A[LOOP:2: B:35:0x0083->B:68:?]] */
    /* JADX WARN: Multi-variable type inference failed */
    private final void checkIfButtonEnabled() {
        boolean z;
        i57<u09> value;
        ArrayList arrayList;
        i57<u09> value2 = this.content.getValue();
        i57.c cVar = value2 instanceof i57.c ? (i57.c) value2 : null;
        if (cVar == null) {
            return;
        }
        u09 u09Var = (u09) cVar.a;
        List<pz3> list = u09Var.a;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof j09) {
                arrayList2.add(obj);
            }
        }
        j09 j09Var = (j09) qn1.V(arrayList2);
        boolean z2 = j09Var == null || j09Var.e || isAmountError(j09Var, j09Var.a);
        List<pz3> list2 = u09Var.a;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : list2) {
            if (obj2 instanceof q09) {
                arrayList3.add(obj2);
            }
        }
        q09 q09Var = (q09) qn1.V(arrayList3);
        if (q09Var == null) {
            z = false;
            break;
        }
        ArrayList arrayList4 = q09Var.a;
        if (arrayList4.isEmpty()) {
            z = false;
            break;
        }
        Iterator it = arrayList4.iterator();
        while (true) {
            if (it.hasNext()) {
                if (((m09) it.next()).d) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        xg5<i57<u09>> xg5Var = this.content;
        do {
            value = xg5Var.getValue();
            List<pz3> list3 = u09Var.a;
            arrayList = new ArrayList(kn1.q(list3, 10));
            for (pz3 t09Var : list3) {
                if (t09Var instanceof t09) {
                    t09Var = new t09(!z2 && z);
                }
                arrayList.add(t09Var);
            }
            u09Var.getClass();
        } while (!xg5Var.a(value, new i57.c(new u09(arrayList))));
    }

    private final boolean isAmountError(j09 j09Var, double d2) {
        return d2 > j09Var.d || d2 < j09Var.c || d2 > j09Var.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processTransferResult(xz8 xz8Var) {
        j59 j59Var;
        TransferSBPView transferSBPView = (TransferSBPView) getViewState();
        if (transferSBPView != null) {
            if (a.a[xz8Var.a.ordinal()] == 1) {
                transferSBPView.showTransferSuccessBottomSheet(xz8Var.d, xz8Var.c);
                return;
            }
            xz8.a aVar = xz8Var.f;
            if (aVar != null) {
                transferSBPView.showTransferFailedBottomSheet(aVar);
                j59Var = j59.a;
            } else {
                j59Var = null;
            }
            if (j59Var == null) {
                transferSBPView.showTransferMoneyError(xz8Var.e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void setButtonLoading(boolean z) {
        i57<u09> value;
        ArrayList arrayList;
        i57<u09> value2 = this.content.getValue();
        i57.c cVar = value2 instanceof i57.c ? (i57.c) value2 : null;
        if (cVar == null) {
            return;
        }
        xg5<i57<u09>> xg5Var = this.content;
        do {
            value = xg5Var.getValue();
            u09 u09Var = (u09) cVar.a;
            List<pz3> list = u09Var.a;
            arrayList = new ArrayList(kn1.q(list, 10));
            for (Object t09Var : list) {
                if (t09Var instanceof t09) {
                    t09Var = new t09(z);
                }
                arrayList.add(t09Var);
            }
            u09Var.getClass();
        } while (!xg5Var.a(value, new i57.c(new u09(arrayList))));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // h09.a
    public void onAmountChanged(Double d2) {
        i57<u09> value;
        ArrayList arrayList;
        i57<u09> value2 = this.content.getValue();
        i57.c cVar = value2 instanceof i57.c ? (i57.c) value2 : null;
        if (cVar == null) {
            return;
        }
        xg5<i57<u09>> xg5Var = this.content;
        do {
            value = xg5Var.getValue();
            u09 u09Var = (u09) cVar.a;
            List<pz3> list = u09Var.a;
            arrayList = new ArrayList(kn1.q(list, 10));
            for (Object objD : list) {
                boolean z = objD instanceof j09;
                if (z && d2 != null) {
                    j09 j09Var = (j09) objD;
                    boolean zIsAmountError = isAmountError(j09Var, d2.doubleValue());
                    objD = j09.d(j09Var, d2.doubleValue(), zIsAmountError, zIsAmountError ? this.resourceProvider.getString(R.string.sbp_withdraw_amount_error) : null, 14);
                } else if (z) {
                    objD = j09.d((j09) objD, 0.0d, true, this.resourceProvider.getString(R.string.sbp_withdraw_amount_error), 15);
                }
                arrayList.add(objD);
            }
            u09Var.getClass();
        } while (!xg5Var.a(value, new i57.c(new u09(arrayList))));
        checkIfButtonEnabled();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // l09.a
    public void onBankSelected(String str) {
        i57<u09> value;
        ArrayList arrayList;
        m09 m09VarD;
        str.getClass();
        i57<u09> value2 = this.content.getValue();
        i57.c cVar = value2 instanceof i57.c ? (i57.c) value2 : null;
        if (cVar == null) {
            return;
        }
        xg5<i57<u09>> xg5Var = this.content;
        do {
            value = xg5Var.getValue();
            u09 u09Var = (u09) cVar.a;
            List<pz3> list = u09Var.a;
            arrayList = new ArrayList(kn1.q(list, 10));
            for (Object q09Var : list) {
                if (q09Var instanceof q09) {
                    ArrayList<m09> arrayList2 = ((q09) q09Var).a;
                    ArrayList arrayList3 = new ArrayList(kn1.q(arrayList2, 10));
                    for (m09 m09Var : arrayList2) {
                        if (aa4.e(m09Var.a, str)) {
                            this.selectedBank = m09Var;
                            m09VarD = m09.d(m09Var, true);
                        } else {
                            m09VarD = m09.d(m09Var, false);
                        }
                        arrayList3.add(m09VarD);
                    }
                    q09Var = new q09(arrayList3);
                }
                arrayList.add(q09Var);
            }
            u09Var.getClass();
        } while (!xg5Var.a(value, new i57.c(new u09(arrayList))));
        checkIfButtonEnabled();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // s09.a
    public void onButtonClicked() {
        i57<u09> value = this.content.getValue();
        i57.c cVar = value instanceof i57.c ? (i57.c) value : null;
        if (cVar == null) {
            return;
        }
        u09 u09Var = (u09) cVar.a;
        List<pz3> list = u09Var.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof e19) {
                arrayList.add(obj);
            }
        }
        e19 e19Var = (e19) qn1.V(arrayList);
        String str = e19Var != null ? e19Var.a : null;
        List<pz3> list2 = u09Var.a;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list2) {
            if (obj2 instanceof j09) {
                arrayList2.add(obj2);
            }
        }
        j09 j09Var = (j09) qn1.V(arrayList2);
        Double dValueOf = j09Var != null ? Double.valueOf(j09Var.a) : null;
        m09 m09Var = this.selectedBank;
        String str2 = m09Var != null ? m09Var.a : null;
        if (dValueOf == null || str == null) {
            return;
        }
        vo7 vo7Var = this.sendSBPTransferUseCase;
        int iDoubleValue = (int) (dValueOf.doubleValue() * 100.0d);
        vo7Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new uo7(str2, str, iDoubleValue, vo7Var, null))), new b(null)));
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        d83 d83Var = this.fetchSBPTransferInfoUseCase;
        d83Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new c83(d83Var, null))), new c(null)));
        launchInPresenter(new df3(this.content, new d(null)));
    }
}
