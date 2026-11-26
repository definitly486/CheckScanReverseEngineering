package com.warefly.checkscan.presentation.notifications.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.b06;
import defpackage.bm3;
import defpackage.cp5;
import defpackage.f29;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jf6;
import defpackage.jp7;
import defpackage.kd;
import defpackage.ll3;
import defpackage.m44;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.np5;
import defpackage.op5;
import defpackage.p08;
import defpackage.pa3;
import defpackage.pn1;
import defpackage.pp5;
import defpackage.pz3;
import defpackage.qp5;
import defpackage.rj;
import defpackage.rp5;
import defpackage.s26;
import defpackage.sz7;
import defpackage.ta8;
import defpackage.uf3;
import defpackage.vk1;
import defpackage.vo5;
import defpackage.vp3;
import defpackage.vy1;
import defpackage.wu2;
import defpackage.yb8;
import defpackage.zq;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class NotificationsPresenter extends BasePresenter<NotificationsView> implements vo5.a {
    private final uf3 flowRouter;
    private int lastVisibleItemPosition;
    private final pp5 notificationsInteractor;
    private s26<pz3> paginator;
    private final jf6 preferencesRepository;

    public static final class a implements s26.m<pz3> {
        public final c a;

        public a(c cVar) {
            this.a = cVar;
        }

        @Override // s26.m
        public final void a(Throwable th) {
        }

        @Override // s26.m
        public final void b() {
            NotificationsView notificationsView = (NotificationsView) this.a.invoke();
            if (notificationsView != null) {
                notificationsView.showAllNotificationsLoaded();
            }
        }

        @Override // s26.m
        public final void c(boolean z) {
            NotificationsView notificationsView = (NotificationsView) this.a.invoke();
            if (notificationsView != null) {
                notificationsView.showPageOfNotificationsProgress(z);
            }
        }

        @Override // s26.m
        public final void d(List list, boolean z) {
            list.getClass();
            NotificationsView notificationsView = (NotificationsView) this.a.invoke();
            if (notificationsView != null) {
                notificationsView.showNotifications(z, list);
            }
        }

        @Override // s26.m
        public final void e(boolean z) {
            NotificationsView notificationsView = (NotificationsView) this.a.invoke();
            if (notificationsView != null) {
                notificationsView.showEmptyNotificationsProgress(z);
            }
        }

        @Override // s26.m
        public final void f(boolean z) {
            NotificationsView notificationsView = (NotificationsView) this.a.invoke();
            if (notificationsView != null) {
                notificationsView.showRefreshNotificationsProgress(z);
            }
        }

        @Override // s26.m
        public final void g(boolean z) {
            NotificationsView notificationsView = (NotificationsView) this.a.invoke();
            if (notificationsView != null) {
                notificationsView.showEmptyNotifications(z);
            }
        }

        @Override // s26.m
        public final void h(boolean z) {
            NotificationsView notificationsView = (NotificationsView) this.a.invoke();
            if (notificationsView != null) {
                notificationsView.showEmptyNotifications(z);
            }
        }
    }

    public static final class b extends gh4 implements nl3<Integer, mz7<List<? extends pz3>>> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final mz7<List<? extends pz3>> invoke(Integer num) {
            int iIntValue = num.intValue();
            pp5 pp5Var = NotificationsPresenter.this.notificationsInteractor;
            return new p08(pp5Var.a.a(iIntValue), new zq(new op5(pp5Var, 0), 2)).i(ne7.c).f(rj.a());
        }
    }

    public static final class c extends gh4 implements ll3<NotificationsView> {
        public c() {
            super(0);
        }

        @Override // defpackage.ll3
        public final NotificationsView invoke() {
            return (NotificationsView) NotificationsPresenter.this.getViewState();
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

    public static final class e extends gh4 implements bm3<Integer, qp5, Boolean> {
        public e() {
            super(2);
        }

        @Override // defpackage.bm3
        public final Boolean invoke(Integer num, qp5 qp5Var) {
            int iIntValue = num.intValue();
            boolean z = false;
            if (iIntValue >= 0 && iIntValue <= NotificationsPresenter.this.lastVisibleItemPosition) {
                z = true;
            }
            return Boolean.valueOf(z);
        }
    }

    public static final class f extends gh4 implements nl3<qp5, Boolean> {
        public static final f f = new f(1);

        @Override // defpackage.nl3
        public final Boolean invoke(qp5 qp5Var) {
            qp5 qp5Var2 = qp5Var;
            cp5 cp5Var = qp5Var2 instanceof cp5 ? (cp5) qp5Var2 : null;
            boolean z = false;
            if (cp5Var != null && !cp5Var.e) {
                z = true;
            }
            return Boolean.valueOf(z);
        }
    }

    public static final class g extends gh4 implements nl3<qp5, Integer> {
        public static final g f = new g(1);

        @Override // defpackage.nl3
        public final Integer invoke(qp5 qp5Var) {
            qp5 qp5Var2 = qp5Var;
            cp5 cp5Var = qp5Var2 instanceof cp5 ? (cp5) qp5Var2 : null;
            if (cp5Var != null) {
                return Integer.valueOf(cp5Var.a);
            }
            return null;
        }
    }

    public NotificationsPresenter(pp5 pp5Var, jf6 jf6Var, uf3 uf3Var) {
        pp5Var.getClass();
        jf6Var.getClass();
        uf3Var.getClass();
        this.notificationsInteractor = pp5Var;
        this.preferencesRepository = jf6Var;
        this.flowRouter = uf3Var;
        this.lastVisibleItemPosition = -1;
    }

    private final void openNotification(String str) {
        str.getClass();
        Map mapSingletonMap = Collections.singletonMap("GoToUrl", str);
        mapSingletonMap.getClass();
        new kd.v.a.C0293a(mapSingletonMap).c();
        if (ta8.D(str, "{user_id}", false)) {
            replacePlaceholder(str);
            return;
        }
        NotificationsView notificationsView = (NotificationsView) getViewState();
        if (notificationsView != null) {
            notificationsView.openUrl(str);
        }
    }

    private final void replacePlaceholder(String str) {
        NotificationsView notificationsView;
        if (this.preferencesRepository.c0().length() <= 0 || (notificationsView = (NotificationsView) getViewState()) == null) {
            return;
        }
        notificationsView.openUrl(vp3.b(this.preferencesRepository.T0(), str, this.preferencesRepository.c0(), this.preferencesRepository.U0()));
    }

    public final void onBackPressed() {
        this.flowRouter.i();
    }

    public final void onCreate() {
        s26<pz3> s26Var = new s26<>(new b(), new a(new c()));
        s26Var.c();
        this.paginator = s26Var;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BasePresenter, defpackage.ih5
    public void onDestroy() {
        super.onDestroy();
        List listQ = jp7.q(jp7.o(jp7.k(new f29(new pa3(new m44(new pn1(this.notificationsInteractor.d)), true, new vy1(new e(), 4)), new wu2(5)), f.f), g.f));
        int i = 0;
        if (!listQ.isEmpty()) {
            pp5 pp5Var = this.notificationsInteractor;
            pp5Var.getClass();
            rp5 rp5Var = pp5Var.a;
            BasePresenter.disposeOnTermination$default(this, yb8.f(rp5Var.c(listQ).d(new sz7(rp5Var.b(), new vk1(new np5(pp5Var, i), 3))).i(ne7.c).f(rj.a()), d.f, null, 2), null, 1, null);
        }
        pp5 pp5Var2 = this.notificationsInteractor;
        pp5Var2.d.clear();
        pp5Var2.b = false;
        pp5Var2.c = false;
    }

    public final void onItemIsSeen(int i) {
        synchronized (Integer.valueOf(this.lastVisibleItemPosition)) {
            try {
                if (i > this.lastVisibleItemPosition) {
                    this.lastVisibleItemPosition = i;
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // vo5.a
    public void onNotificationCardClicked(boolean z, String str) {
        str.getClass();
        if (!z) {
            openNotification(str);
            return;
        }
        NotificationsView notificationsView = (NotificationsView) getViewState();
        if (notificationsView != null) {
            notificationsView.showAgreementDialog(str);
        }
    }

    @Override // vo5.a
    public void onNotificationOrdClicked(b06 b06Var) {
        if (b06Var != null) {
            String str = b06Var.c;
            if (str != null) {
                Map mapSingletonMap = Collections.singletonMap("Notification_".concat(str), new String());
                mapSingletonMap.getClass();
                new kd.e0.d("Ord", mapSingletonMap).a();
            }
            NotificationsView notificationsView = (NotificationsView) getViewState();
            if (notificationsView != null) {
                notificationsView.showOrdInfoDialog(b06Var);
            }
        }
    }

    public final void onScrolledToTheBottom() {
        s26<pz3> s26Var = this.paginator;
        if (s26Var != null) {
            s26Var.a();
        }
    }
}
