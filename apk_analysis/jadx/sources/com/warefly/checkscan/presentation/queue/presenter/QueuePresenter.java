package com.warefly.checkscan.presentation.queue.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.b36;
import defpackage.bm3;
import defpackage.ei7;
import defpackage.ff1;
import defpackage.fi7;
import defpackage.fu1;
import defpackage.fw6;
import defpackage.gd0;
import defpackage.gf9;
import defpackage.gh4;
import defpackage.h08;
import defpackage.he7;
import defpackage.hi0;
import defpackage.j59;
import defpackage.kn1;
import defpackage.kr5;
import defpackage.mg3;
import defpackage.mz6;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.nq5;
import defpackage.nz6;
import defpackage.qm3;
import defpackage.qn1;
import defpackage.rj;
import defpackage.sp1;
import defpackage.sq1;
import defpackage.tq5;
import defpackage.u96;
import defpackage.uf3;
import defpackage.yb8;
import defpackage.yg1;
import defpackage.zf7;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class QueuePresenter extends BasePresenter<QueueView> {
    private final fu1 authDisposables;
    private final uf3 flowRouter;
    private final yg1 interactor;
    private final String qrData;
    private final hi0<mz6> sortTypeSubject;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[nz6.values().length];
            try {
                iArr[nz6.FNS_NOT_RESPONDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[nz6.WAITING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[nz6.CHEQUE_NO_SHOP_RECEIVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[nz6.CHEQUE_RECEIVED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[nz6.ALREADY_SCANNED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[nz6.INVALID.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[nz6.NOT_CORRECT_FORMAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            a = iArr;
        }
    }

    public static final /* synthetic */ class b extends qm3 implements bm3<List<? extends gf9>, List<? extends gf9>, Boolean> {
        @Override // defpackage.bm3
        public final Boolean invoke(List<? extends gf9> list, List<? extends gf9> list2) {
            List<? extends gf9> list3 = list;
            List<? extends gf9> list4 = list2;
            list3.getClass();
            list4.getClass();
            return Boolean.valueOf(((QueuePresenter) this.receiver).compareReceipts(list3, list4));
        }
    }

    public static final /* synthetic */ class c extends qm3 implements bm3<mz6, List<? extends gf9>, b36<? extends mz6, ? extends List<? extends gf9>>> {
        public static final c c = new c(2, b36.class, "<init>", "<init>(Ljava/lang/Object;Ljava/lang/Object;)V", 0);

        @Override // defpackage.bm3
        public final b36<? extends mz6, ? extends List<? extends gf9>> invoke(mz6 mz6Var, List<? extends gf9> list) {
            return new b36<>(mz6Var, list);
        }
    }

    public static final class d extends gh4 implements nl3<Throwable, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            QueuePresenter queuePresenter = QueuePresenter.this;
            ((QueueView) queuePresenter.getViewState()).showProgress(false);
            QueueView queueView = (QueueView) queuePresenter.getViewState();
            if (queueView != null) {
                queueView.showCouldntLoadCheques();
            }
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<b36<? extends mz6, ? extends List<? extends gf9>>, j59> {
        public e() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final j59 invoke(b36<? extends mz6, ? extends List<? extends gf9>> b36Var) {
            b36<? extends mz6, ? extends List<? extends gf9>> b36Var2 = b36Var;
            mz6 mz6Var = (mz6) b36Var2.b;
            List list = (List) b36Var2.c;
            QueuePresenter queuePresenter = QueuePresenter.this;
            ((QueueView) queuePresenter.getViewState()).showProgress(false);
            list.getClass();
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((gf9) obj).f() != nz6.CHEQUE_RECEIVED) {
                    arrayList.add(obj);
                }
            }
            if (mz6Var == mz6.SORT_BY_DATE) {
                QueueView queueView = (QueueView) queuePresenter.getViewState();
                if (queueView != null) {
                    queueView.showReceipts(qn1.n0(arrayList, new fw6()));
                }
            } else {
                QueueView queueView2 = (QueueView) queuePresenter.getViewState();
                if (queueView2 != null) {
                    queueView2.showReceipts(arrayList);
                }
            }
            QueueView queueView3 = (QueueView) queuePresenter.getViewState();
            if (queueView3 != null) {
                queueView3.showThereAreNoReceipts(arrayList.isEmpty());
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
            QueueView queueView = (QueueView) QueuePresenter.this.getViewState();
            if (queueView != null) {
                queueView.showCouldntDeleteCheque();
            }
            return j59.a;
        }
    }

    public QueuePresenter(uf3 uf3Var, yg1 yg1Var, fu1 fu1Var, String str) {
        uf3Var.getClass();
        yg1Var.getClass();
        fu1Var.getClass();
        this.flowRouter = uf3Var;
        this.interactor = yg1Var;
        this.authDisposables = fu1Var;
        this.qrData = str;
        this.sortTypeSubject = hi0.i(mz6.SORT_BY_CREATION);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean compareReceipts(List<gf9> list, List<gf9> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        List<gf9> list3 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
        Iterator<T> it = list3.iterator();
        int i = 0;
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                if (arrayList.isEmpty()) {
                    return true;
                }
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    if (!((Boolean) it2.next()).booleanValue()) {
                        return false;
                    }
                }
                return true;
            }
            Object next = it.next();
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            gf9 gf9Var = (gf9) next;
            boolean z2 = gf9Var.b() == list2.get(i).b();
            boolean z3 = gf9Var.f() == list2.get(i).f();
            if (!z2 || !z3) {
                z = false;
            }
            arrayList.add(Boolean.valueOf(z));
            i = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onFirstViewAttach$lambda$0(bm3 bm3Var, Object obj, Object obj2) {
        return ((Boolean) bm3Var.invoke(obj, obj2)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b36 onFirstViewAttach$lambda$1(bm3 bm3Var, Object obj, Object obj2) {
        return (b36) bm3Var.invoke(obj, obj2);
    }

    public final void applyActionToReceipt(gf9 gf9Var) {
        gf9Var.getClass();
        switch (a.a[gf9Var.f().ordinal()]) {
            case 1:
            case 2:
                uf3 uf3Var = this.flowRouter;
                ei7 ei7Var = new ei7(gf9Var.b(), fi7.FnsNotResponding, gf9Var.d());
                uf3Var.getClass();
                uf3Var.c.d(ei7Var);
                break;
            case 3:
                uf3 uf3Var2 = this.flowRouter;
                ei7 ei7Var2 = new ei7(gf9Var.b(), fi7.NoShopReceived, gf9Var.d());
                uf3Var2.getClass();
                uf3Var2.c.d(ei7Var2);
                break;
            case 4:
                Integer numE = gf9Var.e();
                if (numE != null) {
                    this.flowRouter.j(new zf7(numE.intValue()));
                }
                break;
            case 5:
                uf3 uf3Var3 = this.flowRouter;
                ei7 ei7Var3 = new ei7(gf9Var.b(), fi7.AlreadyScanned, gf9Var.d());
                uf3Var3.getClass();
                uf3Var3.c.d(ei7Var3);
                break;
            case 6:
                uf3 uf3Var4 = this.flowRouter;
                ei7 ei7Var4 = new ei7(gf9Var.b(), fi7.INVALID, gf9Var.d());
                uf3Var4.getClass();
                uf3Var4.c.d(ei7Var4);
                break;
            case 7:
                uf3 uf3Var5 = this.flowRouter;
                ei7 ei7Var5 = new ei7(gf9Var.b(), fi7.NotCorrectFormat, gf9Var.d());
                uf3Var5.getClass();
                uf3Var5.c.d(ei7Var5);
                break;
        }
    }

    public final void changeSort(mz6 mz6Var) {
        mz6Var.getClass();
        this.sortTypeSubject.onNext(mz6Var);
    }

    public final void onBackPressed() {
        this.flowRouter.i();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        ((QueueView) getViewState()).showProgress(true);
        this.interactor.b();
        h08 h08VarH = this.interactor.a.h();
        long j = this.qrData != null ? 3L : Long.MAX_VALUE;
        he7 he7Var = ne7.b;
        nq5.a(TimeUnit.SECONDS, "unit is null");
        nq5.a(he7Var, "scheduler is null");
        sq1 sq1Var = new sq1(h08VarH, j, he7Var);
        tq5 tq5VarB = tq5.b(this.sortTypeSubject, new kr5(new mg3(this.interactor.a.g(), new ff1(new b(2, this, QueuePresenter.class, "compareReceipts", "compareReceipts(Ljava/util/List;Ljava/util/List;)Z", 0)))), new gd0(c.c));
        nq5.a(tq5VarB, "next is null");
        disposeOnDestroy(yb8.h(new sp1(sq1Var, tq5VarB).g(ne7.c).e(rj.a()), new d(), new e(), 2), "synchroniseQueue");
    }

    public final void removeReceipt(gf9 gf9Var) {
        gf9Var.getClass();
        yg1 yg1Var = this.interactor;
        String strD = gf9Var.d();
        yg1Var.getClass();
        strD.getClass();
        this.authDisposables.b(yb8.g(yg1Var.a.a(strD).i(ne7.c).f(rj.a()), new f(), null, 2));
    }

    public final j59 showSortDialog() {
        QueueView queueView = (QueueView) getViewState();
        if (queueView == null) {
            return null;
        }
        queueView.showQueueSortDialog();
        return j59.a;
    }
}
