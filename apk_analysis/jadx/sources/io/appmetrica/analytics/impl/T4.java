package io.appmetrica.analytics.impl;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;
import io.appmetrica.analytics.coreapi.internal.db.DatabaseScript;

/* JADX INFO: loaded from: classes5.dex */
public final class T4 extends DatabaseScript {
    public final int a = 2000;
    public final String b = "number";
    public final String c = "global_number";
    public final String d = "number_of_type";
    public final String e = "name";
    public final String f = "value";
    public final String g = ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY;
    public final String h = "time";
    public final String i = "session_id";
    public final String j = "error_environment";
    public final String k = "session_type";
    public final String l = "app_environment";
    public final String m = "app_environment_revision";
    public final String n = "truncated";
    public final String o = "custom_type";
    public final String p = "encrypting_mode";
    public final String q = "profile_id";
    public final String r = "first_occurrence_status";
    public final String s = "source";
    public final String t = "attribution_id_changed";
    public final String u = "open_id";
    public final String v = TJAdUnitConstants.String.EXTRAS;
    public final String w = "reports";
    public final C1249s7 x = new C1249s7(null, 1, 0 == true ? 1 : 0);

    /* JADX WARN: Code duplicated, block: B:33:0x0115 A[PHI: r4
      0x0115: PHI (r4v8 io.appmetrica.analytics.impl.y9) = (r4v7 io.appmetrica.analytics.impl.y9), (r4v9 io.appmetrica.analytics.impl.y9), (r4v10 io.appmetrica.analytics.impl.y9) binds: [B:38:0x0120, B:32:0x0113, B:35:0x011a] A[DONT_GENERATE, DONT_INLINE]] */
    public final C1223r7 a(Cursor cursor) {
        EnumC1160ol enumC1160ol;
        U8 u8;
        EnumC1252sa enumC1252sa;
        EnumC1252sa enumC1252sa2;
        EnumC1403y9 enumC1403y9;
        EnumC1403y9 enumC1403y10;
        boolean z;
        int i;
        try {
            Long lValueOf = Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(this.i)));
            int i2 = cursor.getInt(cursor.getColumnIndexOrThrow(this.k));
            EnumC1160ol enumC1160ol2 = EnumC1160ol.FOREGROUND;
            if (i2 != 0) {
                enumC1160ol2 = EnumC1160ol.BACKGROUND;
                enumC1160ol = i2 == 1 ? enumC1160ol2 : null;
            }
            Long lValueOf2 = Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(this.b)));
            EnumC1176pb enumC1176pbA = EnumC1176pb.a(cursor.getInt(cursor.getColumnIndexOrThrow(this.g)));
            Long lValueOf3 = Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(this.c)));
            Long lValueOf4 = Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(this.h)));
            Integer numValueOf = Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(this.o)));
            String string = cursor.getString(cursor.getColumnIndexOrThrow(this.e));
            String string2 = cursor.getString(cursor.getColumnIndexOrThrow(this.f));
            Long lValueOf5 = Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(this.d)));
            String string3 = cursor.getString(cursor.getColumnIndexOrThrow(this.j));
            String string4 = cursor.getString(cursor.getColumnIndexOrThrow(this.l));
            Long lValueOf6 = Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(this.m)));
            Integer numValueOf2 = Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(this.n)));
            int i3 = cursor.getInt(cursor.getColumnIndexOrThrow(this.p));
            U8 u9 = U8.NONE;
            if (i3 == 0) {
                u8 = u9;
            } else {
                u9 = U8.AES_VALUE_ENCRYPTION;
                if (i3 != 2) {
                    u9 = U8.EXTERNALLY_ENCRYPTED_EVENT_CRYPTER;
                    if (i3 != 1) {
                        u8 = null;
                    }
                }
                u8 = u9;
            }
            String string5 = cursor.getString(cursor.getColumnIndexOrThrow(this.q));
            try {
                int i4 = cursor.getInt(cursor.getColumnIndexOrThrow(this.r));
                enumC1252sa2 = EnumC1252sa.FIRST_OCCURRENCE;
                if (i4 != 1) {
                    enumC1252sa2 = EnumC1252sa.NON_FIRST_OCCURENCE;
                    if (i4 != 2) {
                        enumC1252sa = EnumC1252sa.UNKNOWN;
                    }
                    enumC1252sa2 = enumC1252sa;
                }
            } catch (Throwable unused) {
                enumC1252sa = EnumC1252sa.UNKNOWN;
            }
            EnumC1252sa enumC1252sa3 = enumC1252sa2;
            try {
                int i5 = cursor.getInt(cursor.getColumnIndexOrThrow(this.s));
                enumC1403y9 = EnumC1403y9.NATIVE;
                if (i5 == 0) {
                    enumC1403y10 = enumC1403y9;
                } else {
                    enumC1403y9 = EnumC1403y9.JS;
                    if (i5 == 1) {
                        enumC1403y10 = enumC1403y9;
                    } else {
                        enumC1403y10 = null;
                    }
                }
            } catch (Throwable unused2) {
                enumC1403y9 = EnumC1403y9.NATIVE;
            }
            try {
                z = cursor.getInt(cursor.getColumnIndexOrThrow(this.t)) == 1;
            } catch (Throwable unused3) {
            }
            Boolean boolValueOf = Boolean.valueOf(z);
            try {
                i = cursor.getInt(cursor.getColumnIndexOrThrow(this.u));
            } catch (Throwable unused4) {
                i = -1;
            }
            Integer numValueOf3 = Integer.valueOf(i);
            int columnIndex = cursor.getColumnIndex(this.v);
            return new C1223r7(lValueOf, enumC1160ol, lValueOf2, enumC1176pbA, lValueOf3, lValueOf4, new C1198q7(numValueOf, string, string2, lValueOf5, null, string3, string4, lValueOf6, numValueOf2, null, null, u8, string5, enumC1252sa3, enumC1403y10, boolValueOf, numValueOf3, columnIndex < 0 ? null : cursor.getBlob(columnIndex), null));
        } catch (Throwable unused5) {
            return null;
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.db.DatabaseScript
    public final void runScript(SQLiteDatabase sQLiteDatabase) {
        SQLiteDatabase sQLiteDatabase2;
        Cursor cursorQuery;
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY,session_id INTEGER,session_type INTEGER,number_in_session INTEGER,type INTEGER,global_number INTEGER,time INTEGER,event_description BLOB )");
        Cursor cursor = null;
        try {
            sQLiteDatabase2 = sQLiteDatabase;
            try {
                cursorQuery = sQLiteDatabase2.query(this.w, null, null, null, null, null, null, String.valueOf(this.a));
                while (cursorQuery.moveToNext()) {
                    try {
                        C1223r7 c1223r7A = a(cursorQuery);
                        if (c1223r7A != null && a(c1223r7A)) {
                            try {
                                sQLiteDatabase2.insertOrThrow("events", null, this.x.fromModel(c1223r7A));
                            } catch (Throwable unused) {
                            }
                        }
                    } catch (Throwable unused2) {
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursorQuery = cursor;
                        }
                        sQLiteDatabase2.execSQL("DROP TABLE IF EXISTS " + this.w);
                    }
                }
            } catch (Throwable unused3) {
            }
        } catch (Throwable unused4) {
            sQLiteDatabase2 = sQLiteDatabase;
        }
        cursorQuery.close();
        sQLiteDatabase2.execSQL("DROP TABLE IF EXISTS " + this.w);
    }

    public static boolean a(C1223r7 c1223r7) {
        Long l;
        EnumC1176pb enumC1176pb;
        Long l2;
        Long l3;
        Long l4 = c1223r7.a;
        if (l4 == null || l4.longValue() < 10000000000L || c1223r7.b == null || (l = c1223r7.c) == null || l.longValue() < 0 || (enumC1176pb = c1223r7.d) == null || enumC1176pb == EnumC1176pb.EVENT_TYPE_UNDEFINED || (l2 = c1223r7.e) == null || l2.longValue() < 0 || (l3 = c1223r7.f) == null || l3.longValue() < 0) {
            return false;
        }
        Long l5 = c1223r7.g.d;
        if (l5 != null && l5.longValue() < 0) {
            return false;
        }
        Integer num = c1223r7.g.i;
        return num == null || num.intValue() >= 0;
    }
}
