package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.aa4;
import defpackage.j59;
import defpackage.nl3;
import defpackage.x07;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.impl.Vd;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrash;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashHandler;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashSource;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public final class Vd implements NativeCrashHandler {
    public final nl3 a;
    public final IHandlerExecutor b = Fa.k().w().f();
    public final Yd c;

    public Vd(Context context, Vg vg, nl3<? super String, j59> nl3Var, InterfaceC0894ee interfaceC0894ee, EnumC1176pb enumC1176pb, String str, InterfaceC0817be interfaceC0817be) {
        this.a = nl3Var;
        this.c = new Yd(context, vg, interfaceC0894ee, enumC1176pb, interfaceC0817be);
    }

    public static final void a(Vd vd, NativeCrash nativeCrash, File file) {
        vd.a.invoke(nativeCrash.getUuid());
    }

    @Override // io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashHandler
    public final void newCrash(final NativeCrash nativeCrash) {
        J0 j0;
        try {
            NativeCrashSource source = nativeCrash.getSource();
            String handlerVersion = nativeCrash.getHandlerVersion();
            String uuid = nativeCrash.getUuid();
            String dumpFile = nativeCrash.getDumpFile();
            long creationTime = nativeCrash.getCreationTime();
            K0 k0A = L0.a(nativeCrash.getMetadata());
            k0A.getClass();
            j0 = new J0(source, handlerVersion, uuid, dumpFile, creationTime, k0A);
        } catch (Throwable unused) {
            j0 = null;
        }
        if (j0 == null) {
            this.a.invoke(nativeCrash.getUuid());
            return;
        }
        LoggerStorage.getOrCreatePublicLogger(j0.f.a).info("Detected native crash with uuid = " + j0.c, new Object[0]);
        IHandlerExecutor iHandlerExecutor = this.b;
        Yd yd = this.c;
        Consumer consumer = new Consumer() { // from class: dc9
            @Override // io.appmetrica.analytics.coreapi.internal.backport.Consumer
            public final void consume(Object obj) {
                Vd.a(this.a, nativeCrash, (File) obj);
            }
        };
        yd.getClass();
        Rd rd = new Rd(new Td(j0.a, j0.b), yd.g);
        Od od = new Od(yd.b, j0.f, new Xd(j0, yd.d, yd.e));
        C1149oa c1149oa = yd.f;
        String str = j0.d;
        c1149oa.getClass();
        File file = new File(str);
        Context context = yd.a;
        if (C1123na.c == null) {
            synchronized (x07.a(C1123na.class)) {
                try {
                    if (C1123na.c == null) {
                        C1123na.c = new C1123na(context);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        C1123na c1123na = C1123na.c;
        if (c1123na != null) {
            iHandlerExecutor.execute(new RunnableC0974hg(file, rd, consumer, od, c1123na, yd.c.a(j0)));
        } else {
            aa4.j("INSTANCE");
            throw null;
        }
    }
}
