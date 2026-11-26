package com.warefly.checkscan.presentation;

import android.app.AlertDialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.activity.OnBackPressedCallback;
import androidx.core.app.NotificationCompat;
import androidx.core.splashscreen.SplashScreen;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.presentation.flows.account.view.AccountFlowFragment;
import com.warefly.checkscan.presentation.flows.desktop.view.DesktopFlowFragment;
import com.warefly.checkscan.presentation.flows.promotions.view.PromotionFlowFragment;
import com.warefly.checkscan.presentation.profile.view.ProfileFlowFragment;
import defpackage.aa4;
import defpackage.am5;
import defpackage.av0;
import defpackage.ce2;
import defpackage.cl4;
import defpackage.cp2;
import defpackage.cq1;
import defpackage.eh5;
import defpackage.fu1;
import defpackage.gf7;
import defpackage.gh4;
import defpackage.h6;
import defpackage.hh4;
import defpackage.ht3;
import defpackage.ip2;
import defpackage.j59;
import defpackage.jf6;
import defpackage.jq4;
import defpackage.kd;
import defpackage.kv;
import defpackage.kv6;
import defpackage.lk3;
import defpackage.ll3;
import defpackage.m2;
import defpackage.mj1;
import defpackage.ne7;
import defpackage.nj1;
import defpackage.nl3;
import defpackage.nm4;
import defpackage.oe0;
import defpackage.oi2;
import defpackage.op;
import defpackage.ou2;
import defpackage.p4;
import defpackage.po4;
import defpackage.pp;
import defpackage.q59;
import defpackage.qj1;
import defpackage.qo2;
import defpackage.qp;
import defpackage.qr5;
import defpackage.re;
import defpackage.rj;
import defpackage.rj1;
import defpackage.rm3;
import defpackage.rx1;
import defpackage.s68;
import defpackage.sh2;
import defpackage.so1;
import defpackage.ta8;
import defpackage.tp;
import defpackage.u07;
import defpackage.uj1;
import defpackage.up;
import defpackage.v87;
import defpackage.vj1;
import defpackage.vp;
import defpackage.y22;
import defpackage.yb8;
import defpackage.yp;
import defpackage.zl9;
import defpackage.zp;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class CiceroneActivity extends eh5 {
    public static final /* synthetic */ int s = 0;
    public final cl4 d;
    public final cl4 e;
    public final cl4 f;
    public final cl4 g;
    public final cl4 h;
    public final cl4 i;
    public final cl4 j;
    public final cl4 k;
    public final cl4 l;
    public s68 m;
    public final d n;
    public final fu1 o;
    public AlertDialog p;
    public final a q;
    public rx1 r;

    public static final class a extends OnBackPressedCallback {
        public a() {
            super(true);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void handleOnBackPressed() {
            int i = CiceroneActivity.s;
            CiceroneActivity ciceroneActivity = CiceroneActivity.this;
            BaseFragment<?> baseFragmentU = ciceroneActivity.u();
            if (aa4.e(baseFragmentU != null ? Boolean.valueOf(baseFragmentU.k()) : null, Boolean.FALSE)) {
                return;
            }
            setEnabled(false);
            ciceroneActivity.getOnBackPressedDispatcher().onBackPressed();
            setEnabled(true);
        }
    }

    public static final class b extends gh4 implements nl3<String, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(String str) {
            String queryParameter;
            String str2 = str;
            str2.getClass();
            int i = CiceroneActivity.s;
            com.warefly.checkscan.presentation.a aVarT = CiceroneActivity.this.t();
            aVarT.getClass();
            kv kvVar = aVarT.a;
            try {
                Uri uri = Uri.parse(str2);
                if (aa4.e(uri.getHost(), "tracking") && (queryParameter = uri.getQueryParameter(TtmlNode.ATTR_ID)) != null) {
                    kvVar.c.T(queryParameter);
                    kvVar.e();
                }
                j59 j59Var = j59.a;
            } catch (Throwable unused) {
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<Uri, j59> {
        public final /* synthetic */ Uri f;
        public final /* synthetic */ CiceroneActivity g;
        public final /* synthetic */ boolean h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Uri uri, CiceroneActivity ciceroneActivity, boolean z) {
            super(1);
            this.f = uri;
            this.g = ciceroneActivity;
            this.h = z;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Uri uri) {
            String path;
            Uri uri2 = uri;
            if (this.f == null && (path = uri2.getPath()) != null && (!ta8.M(path))) {
                String host = uri2.getHost();
                CiceroneActivity ciceroneActivity = this.g;
                if (!aa4.e(host, ciceroneActivity.getString(R.string.deeplink_track_user))) {
                    ciceroneActivity.x(uri2, this.h);
                }
            }
            return j59.a;
        }
    }

    public static final class d extends zp {
        @Override // defpackage.zp
        public final void e(so1 so1Var, RuntimeException runtimeException) {
            so1Var.getClass();
            throw runtimeException;
        }

        @Override // defpackage.zp
        public final void f(lk3 lk3Var, FragmentTransaction fragmentTransaction, Fragment fragment) {
            fragment.getClass();
            fragmentTransaction.setReorderingAllowed(true);
        }
    }

    public static final class e extends gh4 implements nl3<String, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(String str) {
            Uri uri;
            String str2 = str;
            CiceroneActivity ciceroneActivity = CiceroneActivity.this;
            if (str2 != null) {
                try {
                    uri = Uri.parse(str2);
                } catch (Throwable unused) {
                }
            } else {
                uri = null;
            }
            if (uri != null) {
                int i = CiceroneActivity.s;
                if (((ce2) ciceroneActivity.j.getValue()).a(uri) != null) {
                    ciceroneActivity.x(uri, true);
                }
            }
            j59 j59Var = j59.a;
            return j59.a;
        }
    }

    public static final class f implements ll3<com.warefly.checkscan.presentation.a> {
        public f() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [com.warefly.checkscan.presentation.a, java.lang.Object] */
        @Override // defpackage.ll3
        public final com.warefly.checkscan.presentation.a invoke() {
            return m2.c(com.warefly.checkscan.presentation.a.class, defpackage.e.e(CiceroneActivity.this), null, null);
        }
    }

    public static final class g implements ll3<u07> {
        public g() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, u07] */
        @Override // defpackage.ll3
        public final u07 invoke() {
            return m2.c(u07.class, defpackage.e.e(CiceroneActivity.this), null, null);
        }
    }

    public static final class h implements ll3<am5> {
        public final /* synthetic */ kv6 c;

        public h(kv6 kv6Var) {
            this.c = kv6Var;
        }

        /* JADX WARN: Type inference failed for: r3v2, types: [am5, java.lang.Object] */
        @Override // defpackage.ll3
        public final am5 invoke() {
            return m2.c(am5.class, defpackage.e.e(CiceroneActivity.this), this.c, null);
        }
    }

    public static final class i implements ll3<re> {
        public i() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, re] */
        @Override // defpackage.ll3
        public final re invoke() {
            return m2.c(re.class, defpackage.e.e(CiceroneActivity.this), null, null);
        }
    }

    public static final class j implements ll3<vp> {
        public j() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, vp] */
        @Override // defpackage.ll3
        public final vp invoke() {
            return m2.c(vp.class, defpackage.e.e(CiceroneActivity.this), null, null);
        }
    }

    public static final class k implements ll3<ou2> {
        public k() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, ou2] */
        @Override // defpackage.ll3
        public final ou2 invoke() {
            return m2.c(ou2.class, defpackage.e.e(CiceroneActivity.this), null, null);
        }
    }

    public static final class l implements ll3<ce2> {
        public l() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [ce2, java.lang.Object] */
        @Override // defpackage.ll3
        public final ce2 invoke() {
            return m2.c(ce2.class, defpackage.e.e(CiceroneActivity.this), null, null);
        }
    }

    public static final class m implements ll3<jq4> {
        public m() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, jq4] */
        @Override // defpackage.ll3
        public final jq4 invoke() {
            return m2.c(jq4.class, defpackage.e.e(CiceroneActivity.this), null, null);
        }
    }

    public static final class n implements ll3<q59> {
        public n() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, q59] */
        @Override // defpackage.ll3
        public final q59 invoke() {
            return m2.c(q59.class, defpackage.e.e(CiceroneActivity.this), null, null);
        }
    }

    public CiceroneActivity() {
        po4 po4Var = po4.SYNCHRONIZED;
        this.d = nm4.a(po4Var, new f());
        this.e = nm4.a(po4Var, new g());
        this.f = nm4.a(po4Var, new h(oe0.d));
        this.g = nm4.a(po4Var, new i());
        this.h = nm4.a(po4Var, new j());
        this.i = nm4.a(po4Var, new k());
        this.j = nm4.a(po4Var, new l());
        this.k = nm4.a(po4Var, new m());
        this.l = nm4.a(po4Var, new n());
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        this.n = new d(this, supportFragmentManager);
        this.o = new fu1();
        this.q = new a();
    }

    @Override // defpackage.eh5, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        SplashScreen.Companion.installSplashScreen(this);
        super.onCreate(bundle);
        setContentView(R.layout.activity_main);
        getSupportFragmentManager().registerFragmentLifecycleCallbacks(new gf7((re) this.g.getValue()), true);
        getOnBackPressedDispatcher().addCallback(this, this.q);
        v(getIntent(), true);
        Integer numValueOf = bundle != null ? Integer.valueOf(bundle.getInt("LAUNCH_KEY", Integer.MIN_VALUE)) : null;
        if (numValueOf != null && numValueOf.intValue() != Integer.MIN_VALUE) {
            t().b.Q(numValueOf.intValue());
        }
        ((u07) this.e.getValue()).a(this, new e());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        v(intent, false);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        this.o.d();
        ((am5) this.f.getValue()).b();
        ((vp) this.h.getValue()).b(false);
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onRestart() {
        super.onRestart();
        if (getSupportFragmentManager().getFragments().size() < 1) {
            this.o.b(s());
        }
    }

    @Override // defpackage.eh5, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        ((vp) this.h.getValue()).b(true);
        super.onResume();
    }

    @Override // androidx.fragment.app.FragmentActivity
    public final void onResumeFragments() {
        super.onResumeFragments();
        ((am5) this.f.getValue()).a(this.n);
        qr5 qr5VarE = t().k.e(rj.a());
        int i2 = 0;
        mj1 mj1Var = new mj1(new qj1(this), i2);
        rm3.l lVar = rm3.e;
        rm3.d dVar = rm3.c;
        hh4 hh4Var = new hh4(mj1Var, lVar, dVar);
        qr5VarE.a(hh4Var);
        fu1 fu1Var = this.o;
        fu1Var.b(hh4Var);
        qr5 qr5VarE2 = t().j.e(rj.a());
        hh4 hh4Var2 = new hh4(new nj1(new rj1(this, i2), i2), lVar, dVar);
        qr5VarE2.a(hh4Var2);
        fu1Var.b(hh4Var2);
    }

    @Override // defpackage.eh5, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        bundle.putInt("LAUNCH_KEY", t().b.P0());
        getIntent().putExtra("LAUNCH_KEY", t().b.P0());
        jf6 jf6Var = t().b;
        jf6Var.Q(jf6Var.P0() + 1);
    }

    @Override // defpackage.eh5, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
        int intExtra = getIntent().getIntExtra("LAUNCH_KEY", Integer.MIN_VALUE);
        if (intExtra != Integer.MIN_VALUE) {
            t().b.Q(intExtra);
        }
    }

    public final synchronized rx1 s() {
        rx1 rx1VarA;
        try {
            rx1 rx1Var = this.r;
            if (rx1Var != null) {
                ip2.a(rx1Var);
            }
            rx1VarA = t().a();
            this.r = rx1VarA;
        } catch (Throwable th) {
            throw th;
        }
        return rx1VarA;
    }

    public final com.warefly.checkscan.presentation.a t() {
        return (com.warefly.checkscan.presentation.a) this.d.getValue();
    }

    public final BaseFragment<?> u() {
        Fragment fragmentFindFragmentById = getSupportFragmentManager().findFragmentById(R.id.container);
        if (fragmentFindFragmentById instanceof BaseFragment) {
            return (BaseFragment) fragmentFindFragmentById;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    /* JADX WARN: Code duplicated, block: B:18:0x0040 A[Catch: all -> 0x0045, TRY_LEAVE, TryCatch #0 {all -> 0x0045, blocks: (B:16:0x0036, B:18:0x0040), top: B:34:0x0036 }] */
    public final void v(Intent intent, boolean z) {
        String stringExtra;
        yp ypVar;
        if (intent != null) {
            com.warefly.checkscan.presentation.a aVarT = t();
            aVarT.getClass();
            y22 y22Var = aVarT.i;
            oi2 oi2Var = qo2.a;
            av0.c(y22Var, sh2.c, null, new tp(aVarT, intent, null), 2);
        }
        if (!z) {
            if ((intent != null ? intent.getStringExtra("tracking_link") : null) != null) {
                intent.removeExtra("tracking_link");
            } else if (intent != null) {
                ypVar = (yp) ht3.b(yp.class, stringExtra);
                if (ypVar != null) {
                    ypVar.a();
                    j59 j59Var = j59.a;
                }
            }
        } else if (intent != null && (stringExtra = intent.getStringExtra(NotificationCompat.CATEGORY_EVENT)) != null) {
            try {
                ypVar = (yp) ht3.b(yp.class, stringExtra);
                if (ypVar != null) {
                    ypVar.a();
                    j59 j59Var2 = j59.a;
                }
            } catch (Throwable unused) {
            }
        }
        if (intent != null) {
            if (intent.hasExtra("deeplink")) {
                Uri uri = Uri.parse(intent.getStringExtra("deeplink"));
                uri.getClass();
                x(uri, z);
                return;
            }
            Uri data = intent.getData();
            Uri uri2 = data == null ? Uri.EMPTY : data;
            uri2.getClass();
            x(uri2, z);
            cl4 cl4Var = this.i;
            ou2 ou2Var = (ou2) cl4Var.getValue();
            ou2Var.getClass();
            ou2Var.c = intent;
            ou2 ou2Var2 = (ou2) cl4Var.getValue();
            ou2Var2.getClass();
            ou2Var2.b = new zl9(new b());
            Uri uri3 = data == null ? Uri.EMPTY : data;
            uri3.getClass();
            this.o.b(yb8.f(ou2Var2.g(uri3).f(rj.a()), null, new c(data, this, z), 1));
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0027  */
    public final boolean w() {
        AlertDialog alertDialog;
        if (!(u() instanceof ProfileFlowFragment) && !(u() instanceof AccountFlowFragment)) {
            if (!(u() instanceof DesktopFlowFragment)) {
                alertDialog = this.p;
                return alertDialog != null ? false : false;
            }
            BaseFragment<?> baseFragmentU = u();
            baseFragmentU.getClass();
            if (((DesktopFlowFragment) baseFragmentU).o != 3) {
                alertDialog = this.p;
                if ((alertDialog != null || !alertDialog.isShowing()) && !(u() instanceof PromotionFlowFragment)) {
                }
            }
        }
        return true;
    }

    public final void x(Uri uri, boolean z) {
        Uri uri2;
        cp2 cp2VarG;
        String queryParameter;
        Uri uri3 = !uri.isOpaque() ? uri : null;
        if (uri3 != null && (queryParameter = uri3.getQueryParameter(getString(R.string.dynamic_link_event_name_to_log_key))) != null) {
            Map mapSingletonMap = Collections.singletonMap("deeplink", queryParameter);
            mapSingletonMap.getClass();
            new kd.c.a.C0233a(FirebaseAnalytics.Event.APP_OPEN, mapSingletonMap).a();
        }
        if (aa4.e(uri.getHost(), getString(R.string.dynamic_link_host))) {
            String string = getString(R.string.deeplink_scheme);
            String lastPathSegment = uri.getLastPathSegment();
            String query = uri.getQuery();
            if (query == null) {
                query = "";
            }
            uri2 = Uri.parse(string + "://" + lastPathSegment + "?" + query);
        } else {
            uri2 = uri;
        }
        final Deeplink deeplinkA = ((ce2) this.j.getValue()).a(uri2);
        int i2 = 1;
        fu1 fu1Var = this.o;
        if (deeplinkA == null) {
            if (getSupportFragmentManager().getFragments().size() < 1) {
                fu1Var.b(s());
                return;
            }
            return;
        }
        final com.warefly.checkscan.presentation.a aVarT = t();
        final uj1 uj1Var = new uj1(2, this, CiceroneActivity.class, "openExternally", "openExternally(Lcom/warefly/checkscan/deeplinks/openUrl/OpenUrlTarget$External;Ljava/lang/String;)Z", 0);
        final vj1 vj1Var = new vj1(2, this, CiceroneActivity.class, "openUnityOfferwall", "openUnityOfferwall(Lcom/warefly/checkscan/deeplinks/openUrl/UnityOfferwallLink;Lkotlin/jvm/functions/Function0;)V", 0);
        aVarT.getClass();
        int i3 = 0;
        if (z) {
            up upVar = new up(aVarT, deeplinkA, uj1Var, vj1Var);
            cp2VarG = aVarT.a.a().i(ne7.c).f(rj.a()).g(new op(new qp(aVarT, upVar), i3), new pp(new p4(upVar, i2), i3));
        } else if (deeplinkA instanceof Deeplink.n) {
            aVarT.d((Deeplink.n) deeplinkA, false, uj1Var, vj1Var);
            cp2VarG = new v87(rm3.b);
        } else {
            cp2VarG = new cq1(new h6() { // from class: np
                @Override // defpackage.h6
                public final void run() {
                    aVarT.c(deeplinkA, false, uj1Var, vj1Var);
                }
            }).i(ne7.c).g();
        }
        fu1Var.b(cp2VarG);
    }
}
