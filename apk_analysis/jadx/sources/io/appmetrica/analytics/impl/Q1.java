package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import defpackage.kx2;
import defpackage.pu6;
import defpackage.u96;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.executors.BlockingExecutor;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrash;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashServiceConfig;
import io.appmetrica.analytics.networktasks.internal.NetworkServiceLocator;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class Q1 implements E1, InterfaceC1319v0 {
    public boolean a;
    public final Context b;
    public final D1 c;
    public final C1143o4 d;
    public final Y1 e;
    public Vg f;
    public final C1278ta g;
    public final C1321v2 h;
    public final R1 i;
    public final C1052kh j;

    public Q1(Context context, D1 d1, C1144o5 c1144o5) {
        this(context, d1, new C1143o4(context, c1144o5), new Y1(), C1278ta.d, Fa.k().e(), new R1());
    }

    public static void e(Intent intent) {
        Ho ho = Fa.I.D().c.a;
        Ho.a(ho.a);
        Ho.a(ho.b);
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void a(Intent intent) {
        Y1 y1 = this.e;
        if (intent == null) {
            y1.getClass();
            return;
        }
        y1.getClass();
        String action = intent.getAction();
        if (!TextUtils.isEmpty(action)) {
            y1.a.a(action, Integer.valueOf(Y1.a(intent)));
        }
        for (Map.Entry entry : y1.b.entrySet()) {
            X1 x1 = (X1) entry.getKey();
            if (((W1) entry.getValue()).a(intent)) {
                x1.a(intent);
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void b(Intent intent) {
        this.e.d(intent);
        if (intent != null) {
            String action = intent.getAction();
            Uri data = intent.getData();
            String encodedAuthority = data == null ? null : data.getEncodedAuthority();
            if (!"io.appmetrica.analytics.IAppMetricaService".equals(action) || encodedAuthority == null || data == null || !Objects.equals(data.getPath(), "/client")) {
                return;
            }
            int i = Integer.parseInt(data.getQueryParameter("pid"));
            this.d.a(encodedAuthority, Integer.valueOf(i), data.getQueryParameter("psid"));
            this.h.a(i);
        }
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void c(Intent intent) {
        Y1 y1 = this.e;
        if (intent == null) {
            y1.getClass();
            return;
        }
        y1.getClass();
        String action = intent.getAction();
        if (!TextUtils.isEmpty(action)) {
            y1.a.a(action, Integer.valueOf(Y1.a(intent)));
        }
        for (Map.Entry entry : y1.b.entrySet()) {
            X1 x1 = (X1) entry.getKey();
            if (((W1) entry.getValue()).a(intent)) {
                x1.a(intent);
            }
        }
    }

    public final void d(Intent intent) {
        Fa.I.v().a(AbstractC1305ub.e(intent.getStringExtra("screen_size")));
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void onConfigurationChanged(Configuration configuration) {
        Fa.I.v().a(configuration);
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void onCreate() {
        if (this.a) {
            Fa.I.v().a(this.b.getResources().getConfiguration());
        } else {
            this.g.b(this.b);
            Fa fa = Fa.I;
            synchronized (fa) {
                fa.B.initAsync();
                fa.u.a(fa.a);
                fa.u.a(new vo(fa.B));
                NetworkServiceLocator.init(fa.a, new C1196q5(new C1387xi(fa.h()), new A5(fa.a)));
                fa.l().a(fa.q);
                fa.E();
            }
            AbstractC1107mk.a.e();
            C1391xm c1391xm = Fa.I.u;
            c1391xm.a();
            C1341vm c1341vmA = c1391xm.a();
            Nk nkP = Fa.I.p();
            nkP.a(new C1262sk(new C1100md(this.e)), c1341vmA);
            c1391xm.a(nkP);
            ((Ql) Fa.I.z()).getClass();
            a();
            Fa.I.m().init();
            Fa.I.c().init();
            R1 r1 = this.i;
            Context context = this.b;
            C1143o4 c1143o4 = this.d;
            r1.getClass();
            this.f = new Vg(context, c1143o4);
            Context context2 = this.b;
            AbstractC1395y1.a.c(context2);
            AppMetrica.getReporter(context2, "20799a27-fa80-4b36-b2db-0f8141f24180");
            Context context3 = this.b;
            Vg vg = this.f;
            C0791ae c0791aeR = Fa.k().r();
            IHandlerExecutor iHandlerExecutorF = Fa.k().w().f();
            C1222r6 c1222r6 = new C1222r6(context3, vg, EnumC1176pb.EVENT_TYPE_PREV_SESSION_EXCEPTION_UNHANDLED_FROM_FILE, new C0777a0(), new BlockingExecutor(), "previous", new C1071la());
            C1222r6 c1222r7 = new C1222r6(context3, vg, EnumC1176pb.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE, new Ab(), iHandlerExecutorF, "actual", new C1071la());
            File crashesDirectory = FileUtils.getCrashesDirectory(context3);
            if (crashesDirectory != null) {
                FileObserverC1171p6 fileObserverC1171p6 = new FileObserverC1171p6(crashesDirectory, c1222r7, new C1149oa());
                iHandlerExecutorF.execute(new RunnableC0999ig(crashesDirectory, c1222r6));
                if (!crashesDirectory.exists()) {
                    crashesDirectory.mkdir();
                } else if (!crashesDirectory.isDirectory() && crashesDirectory.delete()) {
                    crashesDirectory.mkdir();
                }
                fileObserverC1171p6.startWatching();
                Fa.I.E.storeReference(fileObserverC1171p6);
            }
            c0791aeR.getClass();
            File nativeCrashDirectory = FileUtils.getNativeCrashDirectory(context3);
            String absolutePath = nativeCrashDirectory != null ? nativeCrashDirectory.getAbsolutePath() : null;
            if (absolutePath != null) {
                c0791aeR.a.init(context3, new NativeCrashServiceConfig(absolutePath));
                List<NativeCrash> allCrashes = c0791aeR.a.getAllCrashes();
                if (!allCrashes.isEmpty()) {
                    Vd vdB = c0791aeR.b.b(context3, vg);
                    Iterator<T> it = allCrashes.iterator();
                    while (it.hasNext()) {
                        vdB.newCrash((NativeCrash) it.next());
                    }
                }
                c0791aeR.a.setDefaultCrashHandler(c0791aeR.b.a(context3, vg));
            }
            new T5(u96.h(new RunnableC0846ch())).run();
            this.a = true;
        }
        Fa.I.l().a();
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void onDestroy() {
        Ub ubL = Fa.I.l();
        synchronized (ubL) {
            Iterator it = ubL.c.iterator();
            while (it.hasNext()) {
                ((Bk) it.next()).onDestroy();
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void pauseUserSession(Bundle bundle) {
        Pf pf;
        bundle.setClassLoader(Pf.class.getClassLoader());
        String str = Pf.c;
        try {
            pf = (Pf) bundle.getParcelable("PROCESS_CFG_OBJ");
        } catch (Throwable unused) {
            pf = null;
        }
        Integer asInteger = pf != null ? pf.a.getAsInteger("PROCESS_CFG_PROCESS_ID") : null;
        if (asInteger != null) {
            this.h.b(asInteger.intValue());
        }
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void reportData(int i, Bundle bundle) {
        this.j.getClass();
        List list = (List) Fa.I.v.a.get(Integer.valueOf(i));
        if (list == null) {
            list = kx2.b;
        }
        if (list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((InterfaceC1288tk) it.next()).reportData(i, bundle);
        }
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void resumeUserSession(Bundle bundle) {
        Pf pf;
        bundle.setClassLoader(Pf.class.getClassLoader());
        String str = Pf.c;
        try {
            pf = (Pf) bundle.getParcelable("PROCESS_CFG_OBJ");
        } catch (Throwable unused) {
            pf = null;
        }
        Integer asInteger = pf != null ? pf.a.getAsInteger("PROCESS_CFG_PROCESS_ID") : null;
        if (asInteger != null) {
            this.h.c(asInteger.intValue());
        }
    }

    public Q1(Context context, D1 d1) {
        this(context, d1, new C1144o5(context));
    }

    public Q1(Context context, D1 d1, C1143o4 c1143o4, Y1 y1, C1278ta c1278ta, C1321v2 c1321v2, R1 r1) {
        this.a = false;
        this.b = context;
        this.c = d1;
        this.d = c1143o4;
        this.e = y1;
        this.g = c1278ta;
        this.h = c1321v2;
        this.i = r1;
        this.j = new C1052kh();
    }

    public final void a() {
        this.e.c(new X1() { // from class: ou6
            @Override // io.appmetrica.analytics.impl.X1
            public final void a(Intent intent) {
                this.a.d(intent);
            }
        });
        this.e.a(new pu6());
    }

    public final void a(Bundle bundle) {
        bundle.setClassLoader(CounterConfiguration.class.getClassLoader());
        C0783a6.b(bundle);
        Vg vg = this.f;
        if (vg != null) {
            vg.a(C0783a6.b(bundle), bundle);
        }
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void a(Intent intent, int i) {
        ((C1369x0) this.c).a.stopSelf(i);
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void a(Intent intent, int i, int i2) {
        ((C1369x0) this.c).a.stopSelf(i2);
    }
}
