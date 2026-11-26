package io.appmetrica.analytics.impl;

import defpackage.b36;
import defpackage.n05;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashSource;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Qd implements ProtobufConverter {
    public static final Pd a = new Pd();
    public static final Map b = n05.e(new b36(NativeCrashSource.UNKNOWN, 0), new b36(NativeCrashSource.CRASHPAD, 3));

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0938g6 fromModel(Wd wd) {
        C0938g6 c0938g6 = new C0938g6();
        c0938g6.f = 1;
        C0912f6 c0912f6 = new C0912f6();
        c0912f6.a = wd.a;
        C1015j6 c1015j6 = new C1015j6();
        Integer num = (Integer) b.get(wd.b.a);
        if (num != null) {
            c1015j6.a = num.intValue();
        }
        String str = wd.b.b;
        if (str == null) {
            str = "";
        }
        c1015j6.b = str;
        c0912f6.b = c1015j6;
        c0938g6.g = c0912f6;
        return c0938g6;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final Wd a(C0938g6 c0938g6) {
        throw new UnsupportedOperationException();
    }
}
