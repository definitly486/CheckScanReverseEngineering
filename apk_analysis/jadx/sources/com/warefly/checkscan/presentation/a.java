package com.warefly.checkscan.presentation;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.presentation.flows.offerLanding.OfferLandingReason;
import com.warefly.checkscan.presentation.profile.reason.ProfileReason;
import com.warefly.checkscan.products.presentation.flow.ProductsReason;
import com.warefly.checkscan.shared.universalWebView.presentation.UniversalWebViewArgs;
import com.warefly.checkscan.support.presentation.flow.SupportReason;
import com.warefly.checkscan.tasks.presentation.flows.TasksReason;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.ar4;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ct6;
import defpackage.df7;
import defpackage.e02;
import defpackage.eg7;
import defpackage.gk6;
import defpackage.gr7;
import defpackage.h6;
import defpackage.hh7;
import defpackage.hi0;
import defpackage.id3;
import defpackage.ix;
import defpackage.j59;
import defpackage.je6;
import defpackage.jf6;
import defpackage.jg7;
import defpackage.jq4;
import defpackage.k57;
import defpackage.k69;
import defpackage.kd;
import defpackage.kv;
import defpackage.lg7;
import defpackage.li7;
import defpackage.lk3;
import defpackage.ly5;
import defpackage.me0;
import defpackage.mu6;
import defpackage.my5;
import defpackage.ne7;
import defpackage.o87;
import defpackage.oi2;
import defpackage.p74;
import defpackage.pg8;
import defpackage.qc8;
import defpackage.qe;
import defpackage.qf7;
import defpackage.qh7;
import defpackage.qo2;
import defpackage.r57;
import defpackage.rj;
import defpackage.rp;
import defpackage.rx1;
import defpackage.sg7;
import defpackage.sp;
import defpackage.sq0;
import defpackage.tf8;
import defpackage.u96;
import defpackage.uh7;
import defpackage.uj1;
import defpackage.uy4;
import defpackage.uz7;
import defpackage.vj1;
import defpackage.w69;
import defpackage.wh7;
import defpackage.y22;
import defpackage.ya0;
import defpackage.yb8;
import defpackage.yr;
import defpackage.z81;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    public final kv a;
    public final jf6 b;
    public final qe c;
    public final o87 d;
    public final mu6 e;
    public final gr7 f;
    public final je6 g;
    public final my5 h;
    public final y22 i;
    public final ct6<Boolean> j = new ct6<>();
    public final hi0<Boolean> k = hi0.i(Boolean.FALSE);
    public final hi0<Boolean> l = hi0.i(Boolean.TRUE);

    /* JADX INFO: renamed from: com.warefly.checkscan.presentation.a$a, reason: collision with other inner class name */
    @bd2(c = "com.warefly.checkscan.presentation.AppLauncher$1", f = "AppLauncher.kt", l = {77}, m = "invokeSuspend")
    public static final class C0159a extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;

        /* JADX INFO: renamed from: com.warefly.checkscan.presentation.a$a$a, reason: collision with other inner class name */
        public static final class C0160a<T> implements id3 {
            public final /* synthetic */ a b;

            public C0160a(a aVar) {
                this.b = aVar;
            }

            @Override // defpackage.id3
            public final Object emit(Object obj, e02 e02Var) {
                this.b.d.d(new jg7((String) obj));
                return j59.a;
            }
        }

        public C0159a(e02<? super C0159a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return a.this.new C0159a(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C0159a) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                a aVar = a.this;
                z81 z81Var = aVar.g.b;
                C0160a c0160a = new C0160a(aVar);
                this.l = 1;
                if (z81Var.collect(c0160a, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    public a(kv kvVar, jf6 jf6Var, qe qeVar, o87 o87Var, mu6 mu6Var, gr7 gr7Var, je6 je6Var, my5 my5Var, y22 y22Var) {
        this.a = kvVar;
        this.b = jf6Var;
        this.c = qeVar;
        this.d = o87Var;
        this.e = mu6Var;
        this.f = gr7Var;
        this.g = je6Var;
        this.h = my5Var;
        this.i = y22Var;
        oi2 oi2Var = qo2.a;
        av0.c(y22Var, uy4.a, null, new C0159a(null), 2);
    }

    public final rx1 a() {
        this.b.b1(true);
        this.k.onNext(Boolean.FALSE);
        return yb8.d(new uz7(this.a.a().i(ne7.c).f(rj.a()), new h6() { // from class: mp
            @Override // defpackage.h6
            public final void run() {
                this.a.l.onNext(Boolean.FALSE);
            }
        }), new rp(this), new sp(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(Deeplink.n nVar, uj1 uj1Var) {
        kd aVar;
        Object next;
        Object aVar2;
        String str = nVar.c;
        ar4 ar4VarE = u96.e();
        if (nVar.d) {
            Iterator<T> it = my5.b.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                String str2 = (String) next;
                jq4 jq4Var = this.h.a;
                str2.getClass();
                try {
                    PackageManager packageManager = jq4Var.a;
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str)).setPackage(str2);
                    intent.getClass();
                    List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
                    listQueryIntentActivities.getClass();
                    aVar2 = Boolean.valueOf(!listQueryIntentActivities.isEmpty());
                } catch (Throwable th) {
                    aVar2 = new k57.a(th);
                }
                Object obj = Boolean.FALSE;
                if (aVar2 instanceof k57.a) {
                    aVar2 = obj;
                }
            } while (!((Boolean) aVar2).booleanValue());
            String str3 = (String) next;
            if (str3 != null) {
                ar4VarE.add(new ly5.a.c(str3));
            }
        }
        boolean z = nVar.e;
        ly5.b bVar = ly5.b.a;
        if (z) {
            ar4VarE.add(bVar);
        }
        boolean z2 = nVar.f;
        ly5.a.C0302a c0302a = ly5.a.C0302a.a;
        if (z2) {
            ar4VarE.add(c0302a);
        }
        ly5.a.b bVar2 = ly5.a.b.a;
        ar4VarE.add(bVar2);
        ListIterator listIterator = u96.d(ar4VarE).listIterator(0);
        while (true) {
            ar4.b bVar3 = (ar4.b) listIterator;
            if (!bVar3.hasNext()) {
                return;
            }
            ly5 ly5Var = (ly5) bVar3.next();
            if (aa4.e(ly5Var, bVar)) {
                this.d.d(new w69(new UniversalWebViewArgs(str, null, true, true)));
                Map mapSingletonMap = Collections.singletonMap("WebView", str);
                mapSingletonMap.getClass();
                new kd.d.b("Bank Clicks", mapSingletonMap).a();
                return;
            }
            if ((ly5Var instanceof ly5.a) && ((Boolean) uj1Var.invoke(ly5Var, str)).booleanValue()) {
                ly5.a aVar3 = (ly5.a) ly5Var;
                if (aVar3 instanceof ly5.a.c) {
                    Map mapSingletonMap2 = Collections.singletonMap("Yandex", str);
                    mapSingletonMap2.getClass();
                    aVar = new kd.d.c("Bank Clicks", mapSingletonMap2);
                } else {
                    if (!(aVar3.equals(c0302a) ? true : aVar3.equals(bVar2))) {
                        me0.e();
                        return;
                    } else {
                        Map mapSingletonMap3 = Collections.singletonMap("Another Browser", str);
                        mapSingletonMap3.getClass();
                        aVar = new kd.d.a("Bank Clicks", mapSingletonMap3);
                    }
                }
                aVar.a();
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x004e  */
    public final void c(Deeplink deeplink, boolean z, uj1 uj1Var, vj1 vj1Var) {
        lk3 tf8Var;
        lk3 gk6Var;
        wh7 wh7Var;
        jf6 jf6Var = this.b;
        int i = 0;
        jf6Var.b1(false);
        if (deeplink instanceof Deeplink.n) {
            d((Deeplink.n) deeplink, z, uj1Var, vj1Var);
            return;
        }
        int i2 = 2;
        if (deeplink instanceof Deeplink.CashBackFlow) {
            tf8Var = new c((Deeplink.CashBackFlow) deeplink);
        } else {
            String str = null;
            if (deeplink instanceof Deeplink.w) {
                if (jf6Var.G0()) {
                    tf8Var = null;
                } else {
                    Deeplink.w wVar = (Deeplink.w) deeplink;
                    String str2 = wVar.c;
                    String str3 = wVar.d;
                    if (aa4.e(wVar.e, "profileBonus")) {
                        this.f.a.b();
                    }
                    gk6Var = new ix(new AuthReason.Login(str2, str3, i2));
                    tf8Var = gk6Var;
                }
            } else if (deeplink instanceof Deeplink.r) {
                tf8Var = jf6Var.G0() ? new qh7(ProfileReason.MainProfile.b) : new ix(new AuthReason.Login(str, str, i2));
            } else {
                if (deeplink instanceof Deeplink.t) {
                    wh7Var = new wh7(((Deeplink.t) deeplink).c, false, 0L, null, 28);
                } else if (deeplink instanceof Deeplink.v) {
                    Deeplink.v vVar = (Deeplink.v) deeplink;
                    wh7Var = new wh7(null, true, vVar.d, vVar.c, 5);
                } else if (deeplink instanceof Deeplink.c) {
                    wh7Var = new wh7(null, true, 0L, null, 29);
                } else if (deeplink instanceof Deeplink.s) {
                    wh7Var = new wh7(null, false, 0L, null, 29);
                } else if (deeplink instanceof Deeplink.Catalog) {
                    tf8Var = new d((Deeplink.Catalog) deeplink);
                } else if (deeplink instanceof Deeplink.k) {
                    tf8Var = new qh7(ProfileReason.Notifications.b);
                } else if (deeplink instanceof Deeplink.j) {
                    tf8Var = new uh7(Integer.parseInt(((Deeplink.j) deeplink).c));
                } else if (deeplink instanceof Deeplink.f) {
                    tf8Var = lg7.a;
                } else if (deeplink instanceof Deeplink.d) {
                    tf8Var = new eg7(deeplink.b);
                } else if (deeplink instanceof Deeplink.Desktop) {
                    Deeplink.Desktop desktop = (Deeplink.Desktop) deeplink;
                    if (((desktop instanceof Deeplink.Desktop.ProductsDeeplink) || (desktop instanceof Deeplink.Desktop.Brandlink)) && jf6Var.Q0()) {
                        gk6Var = new gk6(ProductsReason.Main.b);
                        tf8Var = gk6Var;
                    } else {
                        tf8Var = new f(desktop);
                    }
                } else if (deeplink.equals(Deeplink.a0.c)) {
                    tf8Var = new tf8(SupportReason.Form.b);
                } else if (deeplink.equals(Deeplink.z.c)) {
                    tf8Var = new qf7(16, sq0.TOP_FLOW, "ТОП ЧекСкан");
                } else if (deeplink.equals(Deeplink.m.c)) {
                    tf8Var = new qf7(i, sq0.HOW_GET_CASHBACK_SLIDES, 3);
                } else if (deeplink instanceof Deeplink.Webview) {
                    tf8Var = new g((Deeplink.Webview) deeplink);
                } else if (deeplink instanceof Deeplink.l) {
                    tf8Var = new hh7(new OfferLandingReason.Landing(((Deeplink.l) deeplink).c));
                } else if (deeplink instanceof Deeplink.e) {
                    tf8Var = new li7(new TasksReason.DailyTask(((Deeplink.e) deeplink).c));
                } else if (deeplink instanceof Deeplink.g) {
                    tf8Var = jf6Var.G0() ? new qh7(new ProfileReason.FillMyData(false)) : new ix(new AuthReason.Login(str, deeplink.toString(), i2));
                } else if (deeplink instanceof Deeplink.h) {
                    tf8Var = new sg7(((Deeplink.h) deeplink).c);
                } else if (deeplink instanceof Deeplink.x) {
                    tf8Var = qc8.a;
                } else if (deeplink instanceof Deeplink.i) {
                    tf8Var = p74.a;
                } else if (deeplink instanceof Deeplink.p) {
                    tf8Var = new gk6(new ProductsReason.Product(((Deeplink.p) deeplink).c));
                } else if (deeplink instanceof Deeplink.o) {
                    tf8Var = new gk6(new ProductsReason.Shop(((Deeplink.o) deeplink).c, true));
                } else if (deeplink instanceof Deeplink.q) {
                    tf8Var = new gk6(new ProductsReason.Shop(((Deeplink.q) deeplink).c, false));
                } else if (deeplink instanceof Deeplink.b) {
                    tf8Var = new ya0(((Deeplink.b) deeplink).c);
                } else if (deeplink instanceof Deeplink.a) {
                    tf8Var = new qh7(ProfileReason.ChangeEmail.b);
                } else if (deeplink instanceof Deeplink.y) {
                    tf8Var = new tf8(SupportReason.Form.b);
                } else {
                    tf8Var = null;
                }
                tf8Var = wh7Var;
            }
        }
        o87 o87Var = this.d;
        if (z) {
            lk3[] lk3VarArr = (lk3[]) (tf8Var instanceof f ? u96.h(tf8Var) : yr.G(new lk3[]{e.a, tf8Var})).toArray(new lk3[0]);
            o87Var.f((df7[]) Arrays.copyOf(lk3VarArr, lk3VarArr.length));
        } else if (tf8Var != null) {
            if (tf8Var instanceof f) {
                o87Var.g(tf8Var);
            } else {
                o87Var.d(tf8Var);
            }
        }
    }

    public final void d(Deeplink.n nVar, boolean z, uj1 uj1Var, vj1 vj1Var) {
        if (z) {
            this.d.g(e.a);
        }
        jf6 jf6Var = this.b;
        boolean zG0 = jf6Var.G0();
        long jT0 = jf6Var.T0();
        String strValueOf = String.valueOf(jT0);
        String str = nVar.h;
        if (str == null) {
            str = "Checkscan_kopeiki";
        }
        k69 k69Var = new k69(strValueOf, str);
        if (!nVar.g || !zG0 || jT0 <= 0) {
            k69Var = null;
        }
        if (k69Var != null) {
            vj1Var.invoke(k69Var, new b(this, nVar, uj1Var));
        } else {
            b(nVar, uj1Var);
        }
    }
}
