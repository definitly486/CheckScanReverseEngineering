package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.impl.C1380xb;
import io.appmetrica.analytics.impl.Xg;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class Xg {
    public final Context a;
    public final InterfaceC1289tl b;
    public final InterfaceC1400y6 c;
    public final Bb d = new Bb();
    public final B4 e = new B4(new C1187pm(), new A4(), null);
    public final Consumer f;

    public Xg(Context context, final InterfaceC1145o6 interfaceC1145o6, final EnumC1176pb enumC1176pb, InterfaceC1289tl interfaceC1289tl, InterfaceC1400y6 interfaceC1400y6) {
        this.a = context;
        this.b = interfaceC1289tl;
        this.c = interfaceC1400y6;
        this.f = new Consumer() { // from class: rl9
            @Override // io.appmetrica.analytics.coreapi.internal.backport.Consumer
            public final void consume(Object obj) {
                Xg.a(enumC1176pb, this, interfaceC1145o6, (C1380xb) obj);
            }
        };
    }

    public static final void a(EnumC1176pb enumC1176pb, Xg xg, InterfaceC1145o6 interfaceC1145o6, C1380xb c1380xb) {
        String str = c1380xb.h;
        C0859d4 c0859d4 = new C0859d4(str, c1380xb.e, c1380xb.f, c1380xb.g, c1380xb.i);
        String str2 = c1380xb.b;
        byte[] bArr = c1380xb.a;
        int i = c1380xb.c;
        HashMap map = c1380xb.d;
        String str3 = c1380xb.j;
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(str);
        long jA = ((C1071la) xg.c).a(c1380xb);
        Set set = I9.a;
        C0781a4 c0781a4 = new C0781a4(bArr, str2, enumC1176pb.a, orCreatePublicLogger);
        c0781a4.b(jA);
        c0781a4.r = map;
        c0781a4.g = i;
        c0781a4.c = str3;
        ((Vg) interfaceC1145o6).a(c0859d4, c0781a4, xg.e);
    }
}
