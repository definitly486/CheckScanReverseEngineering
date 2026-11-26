package io.appmetrica.analytics.impl;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

/* JADX INFO: loaded from: classes5.dex */
public final class Ik implements Vc {
    public static void b(Context context) {
        C1068l7 c1068l7;
        Hk hk = new Hk();
        Gk gk = new Gk();
        C1317un c1317un = new C1317un(gk, gk, new Ka(false), new defpackage.qg(4));
        Ok okB = Fa.I.B();
        synchronized (okB) {
            C1120n7 c1120n7 = okB.a;
            c1068l7 = new C1068l7(context, new C1094m7(c1120n7.a, c1120n7.b, false).a(context, hk), c1317un, PublicLogger.getAnonymousInstance());
        }
        byte[] bArr = new C0909f3(new Jl(c1068l7), "binary_data").get("auto_inapp_collecting_info_data");
        if (bArr != null) {
            Fa.I.B().c(context).insert("auto_inapp_collecting_info_data", bArr);
        }
    }

    @Override // io.appmetrica.analytics.impl.Vc
    public final void a(Context context) {
        AbstractC0981hn abstractC0981hn = (AbstractC0981hn) C0929fn.a(C1441zm.class);
        ProtobufStateStorage<Object> protobufStateStorageA = abstractC0981hn.a(context, abstractC0981hn.b(context));
        C1441zm c1441zm = (C1441zm) protobufStateStorageA.read();
        C1416ym c1416ymA = c1441zm.a(c1441zm.m);
        c1416ymA.o = 0L;
        protobufStateStorageA.save(new C1441zm(c1416ymA));
        b(context);
    }

    public static final boolean a(SQLiteDatabase sQLiteDatabase) {
        return true;
    }
}
