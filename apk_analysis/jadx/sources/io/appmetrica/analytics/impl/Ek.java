package io.appmetrica.analytics.impl;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import io.appmetrica.analytics.coreutils.internal.io.CloseableUtils;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

/* JADX INFO: loaded from: classes5.dex */
public final class Ek implements Vc {
    public final Fo a;
    public final String b = "startup_state";
    public final AESEncrypter c;

    public Ek(Fo fo) {
        this.a = fo;
        C0776a c0776a = new C0776a(Fa.k().g());
        this.c = new AESEncrypter(AESEncrypter.DEFAULT_ALGORITHM, c0776a.b(), c0776a.a());
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0047 A[Catch: all -> 0x004c, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x004c, blocks: (B:5:0x001b, B:7:0x0022, B:9:0x0028, B:13:0x0047), top: B:21:0x001b }] */
    public final Pb a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorQuery;
        try {
            cursorQuery = sQLiteDatabase.query("binary_data", new String[]{"value"}, "data_key = ?", new String[]{this.b}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() == 1 && cursorQuery.moveToFirst()) {
                        Pb pb = (Pb) MessageNano.mergeFrom(new Pb(), this.c.decrypt(cursorQuery.getBlob(cursorQuery.getColumnIndexOrThrow("value"))));
                        CloseableUtils.closeSafely(cursorQuery);
                        return pb;
                    }
                    if (cursorQuery != null) {
                        cursorQuery.getCount();
                    }
                } catch (Throwable unused) {
                }
            } else if (cursorQuery != null) {
                cursorQuery.getCount();
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        CloseableUtils.closeSafely(cursorQuery);
        return null;
    }

    @Override // io.appmetrica.analytics.impl.Vc
    public final void a(Context context) {
        SQLiteDatabase readableDatabase = Fa.I.B().f(context).getReadableDatabase();
        if (readableDatabase != null) {
            try {
                Pb pbA = a(readableDatabase);
                C1416ym c1416ym = new C1416ym(new C1423z4(new C1373x4()));
                if (pbA != null) {
                    a(this.a, c1416ym, pbA);
                    c1416ym.p = pbA.c;
                    c1416ym.r = pbA.b;
                }
                C1441zm c1441zm = new C1441zm(c1416ym);
                AbstractC0981hn abstractC0981hn = (AbstractC0981hn) C0929fn.a(C1441zm.class);
                abstractC0981hn.a(context, abstractC0981hn.b(context)).save(c1441zm);
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(Fo fo, C1416ym c1416ym, Pb pb) {
        String strOptStringOrNull;
        synchronized (fo) {
            strOptStringOrNull = JsonUtils.optStringOrNull(fo.a.a(), "device_id");
        }
        if (TextUtils.isEmpty(strOptStringOrNull)) {
            if (!TextUtils.isEmpty(pb.d)) {
                fo.a(pb.d);
            }
            if (!TextUtils.isEmpty(pb.e)) {
                fo.b(pb.e);
            }
            if (TextUtils.isEmpty(pb.a)) {
                return;
            }
            c1416ym.a = pb.a;
        }
    }
}
