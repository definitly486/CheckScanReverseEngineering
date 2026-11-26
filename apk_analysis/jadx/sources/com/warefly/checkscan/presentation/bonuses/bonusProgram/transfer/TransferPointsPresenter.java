package com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsPresenter;
import defpackage.bs5;
import defpackage.cp2;
import defpackage.fg;
import defpackage.g90;
import defpackage.gh4;
import defpackage.gl0;
import defpackage.h6;
import defpackage.he7;
import defpackage.hh4;
import defpackage.hl0;
import defpackage.io0;
import defpackage.iz8;
import defpackage.j59;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.nq5;
import defpackage.nr5;
import defpackage.qr5;
import defpackage.r01;
import defpackage.rj;
import defpackage.rm3;
import defpackage.uz7;
import defpackage.wr5;
import defpackage.xq5;
import defpackage.zi4;
import defpackage.zo2;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class TransferPointsPresenter extends BasePresenter<TransferPointsView> {
    private final io0 bonusesInteractor;
    private Long programId;
    private cp2 timerDisposable;

    public static final class a extends gh4 implements nl3<iz8, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(iz8 iz8Var) {
            iz8 iz8Var2 = iz8Var;
            TransferPointsPresenter transferPointsPresenter = TransferPointsPresenter.this;
            TransferPointsView transferPointsView = (TransferPointsView) transferPointsPresenter.getViewState();
            if (transferPointsView != null) {
                transferPointsPresenter.showCodeExpireTime(iz8Var2.b());
                transferPointsView.showCode(iz8Var2.a());
                transferPointsView.setLoadCodeEnabled(false);
            }
            transferPointsPresenter.triggerTimer(iz8Var2.b());
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<Throwable, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            TransferPointsView transferPointsView = (TransferPointsView) TransferPointsPresenter.this.getViewState();
            if (transferPointsView != null) {
                transferPointsView.setLoadCodeEnabled(true);
                transferPointsView.showCouldntLoadCode();
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<Long, wr5<? extends Long>> {
        public static final c f = new c(1);

        @Override // defpackage.nl3
        public final wr5<? extends Long> invoke(Long l) {
            Long l2 = l;
            l2.getClass();
            return new xq5(new hl0(l2, 6));
        }
    }

    public static final class d extends gh4 implements nl3<Long, j59> {
        public final /* synthetic */ int f;
        public final /* synthetic */ TransferPointsPresenter g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(TransferPointsPresenter transferPointsPresenter, int i) {
            super(1);
            this.f = i;
            this.g = transferPointsPresenter;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Long l) {
            Long l2 = l;
            long j = this.f;
            l2.getClass();
            long jLongValue = (j - l2.longValue()) - 1;
            TransferPointsPresenter transferPointsPresenter = this.g;
            if (jLongValue > 0) {
                transferPointsPresenter.showCodeExpireTime(jLongValue);
            } else {
                TransferPointsView transferPointsView = (TransferPointsView) transferPointsPresenter.getViewState();
                if (transferPointsView != null) {
                    transferPointsView.setLoadCodeEnabled(true);
                    transferPointsView.showCodeExpired();
                }
            }
            return j59.a;
        }
    }

    public TransferPointsPresenter(io0 io0Var) {
        io0Var.getClass();
        this.bonusesInteractor = io0Var;
    }

    private final void loadCode(long j) {
        TransferPointsView transferPointsView = (TransferPointsView) getViewState();
        int i = 1;
        if (transferPointsView != null) {
            transferPointsView.setLoadCodeEnabled(false);
            transferPointsView.showLoading(true);
        }
        BasePresenter.disposeOnDestroy$default(this, new uz7(this.bonusesInteractor.a.b(j).i(ne7.c).f(rj.a()), new h6() { // from class: a09
            @Override // defpackage.h6
            public final void run() {
                TransferPointsPresenter.loadCode$lambda$2(this.a);
            }
        }).g(new gl0(new a(), i), new g90(new b(), 2)), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadCode$lambda$2(TransferPointsPresenter transferPointsPresenter) {
        TransferPointsView transferPointsView = (TransferPointsView) transferPointsPresenter.getViewState();
        if (transferPointsView != null) {
            transferPointsView.showLoading(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showCodeExpireTime(long j) {
        long j2 = j / 60;
        long seconds = j - TimeUnit.MINUTES.toSeconds(j2);
        TransferPointsView transferPointsView = (TransferPointsView) getViewState();
        if (transferPointsView != null) {
            transferPointsView.showCodeExpiringTime(j2, seconds);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void triggerTimer(int i) {
        cp2 cp2Var = this.timerDisposable;
        if (cp2Var != null) {
            cp2Var.dispose();
        }
        he7 he7Var = ne7.b;
        nq5.a(TimeUnit.SECONDS, "unit is null");
        nq5.a(he7Var, "scheduler is null");
        nr5 nr5Var = new nr5(Math.max(0L, 1L), Math.max(0L, 1L), he7Var);
        long j = ((long) i) - 1;
        if (j < 0) {
            fg.c(r01.c(j, "count >= 0 required but it was "));
            return;
        }
        qr5 qr5VarE = new bs5(nr5Var, j).d(new zi4(c.f, 3)).e(rj.a());
        hh4 hh4Var = new hh4(new zo2(new d(this, i), 1), rm3.e, rm3.c);
        qr5VarE.a(hh4Var);
        BasePresenter.disposeOnDestroy$default(this, hh4Var, null, 1, null);
        this.timerDisposable = hh4Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final wr5 triggerTimer$lambda$5(nl3 nl3Var, Object obj) {
        return (wr5) nl3Var.invoke(obj);
    }

    public final void onLoadCodeClicked() {
        Long l = this.programId;
        if (l != null) {
            loadCode(l.longValue());
        }
    }

    public final void onOpened(long j) {
        this.programId = Long.valueOf(j);
        loadCode(j);
    }
}
