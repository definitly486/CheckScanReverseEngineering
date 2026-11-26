package io.appmetrica.analytics.impl;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import defpackage.m96;
import defpackage.ro1;
import defpackage.ta8;
import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;

/* JADX INFO: loaded from: classes5.dex */
public final class Na implements InterfaceC1310ug {
    public final Context a;
    public final String b = "huawei";

    public Na(Context context) {
        this.a = context;
    }

    public static final void a(InterfaceC1207qg interfaceC1207qg, Na na) {
        InterfaceC1410yg c1360wg;
        Context context = na.a;
        try {
            Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://com.huawei.appmarket.commondata/item/5"), null, null, new String[]{context.getPackageName()}, null);
            if (cursorQuery == null) {
                throw new IllegalStateException("Not found content provider");
            }
            try {
                if (!cursorQuery.moveToFirst()) {
                    throw new IllegalStateException("Cursor is empty");
                }
                String string = cursorQuery.getString(0);
                if (string == null || ta8.M(string)) {
                    throw new IllegalStateException("Referrer is empty");
                }
                c1360wg = new C1385xg(new C1155og(string, cursorQuery.getLong(1), cursorQuery.getLong(2), 3));
                cursorQuery.close();
                interfaceC1207qg.a(c1360wg);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    m96.c(cursorQuery, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            c1360wg = new C1360wg("Failed to get referrer from huawei content provider", th3);
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1310ug
    public final String a() {
        return this.b;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1310ug
    public final void a(InterfaceC1207qg interfaceC1207qg) {
        Ak ak = Fa.I.d;
        ro1 ro1Var = new ro1(1, interfaceC1207qg, this);
        ak.a.getClass();
        new InterruptionSafeThread(ro1Var, "IAA-SHMSR-" + Ld.a.incrementAndGet()).start();
    }
}
