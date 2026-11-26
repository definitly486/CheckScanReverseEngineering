package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.db.DBUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class Y6 {
    public final ReentrantReadWriteLock.ReadLock a;
    public final ReentrantReadWriteLock.WriteLock b;
    public final C1068l7 c;
    public final Context d;
    public final C0989i5 e;
    public final AtomicLong f;
    public final ArrayList g;
    public final V6 h;
    public final C1249s7 i;
    public final C1090m3 j;

    public Y6(C0989i5 c0989i5, C1068l7 c1068l7, V6 v6, C1249s7 c1249s7) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.a = reentrantReadWriteLock.readLock();
        this.b = reentrantReadWriteLock.writeLock();
        AtomicLong atomicLong = new AtomicLong();
        this.f = atomicLong;
        ArrayList arrayList = new ArrayList();
        this.g = arrayList;
        this.c = c1068l7;
        this.d = c0989i5.getContext();
        this.e = c0989i5;
        this.h = v6;
        this.i = c1249s7;
        atomicLong.set(b());
        this.j = new C1090m3(new P8(c1068l7, c0989i5, atomicLong, arrayList, v6, reentrantReadWriteLock), Fa.k().w().e());
    }

    public final C1056kl a(long j, EnumC1160ol enumC1160ol) {
        Cursor cursorQuery;
        ContentValues contentValues = new ContentValues();
        this.a.lock();
        try {
            SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
            if (readableDatabase != null) {
                cursorQuery = readableDatabase.query("sessions", new String[]{"report_request_parameters"}, "id = ? AND type = ?", new String[]{String.valueOf(j), String.valueOf(enumC1160ol.a)}, null, null, null, "1");
                try {
                    if (cursorQuery.moveToNext()) {
                        ContentValues contentValues2 = new ContentValues();
                        DatabaseUtils.cursorRowToContentValues(cursorQuery, contentValues2);
                        contentValues = contentValues2;
                    }
                } catch (Throwable unused) {
                }
            } else {
                cursorQuery = null;
            }
        } catch (Throwable unused2) {
        }
        xo.a(cursorQuery);
        this.a.unlock();
        try {
            String asString = contentValues.getAsString("report_request_parameters");
            if (!StringUtils.isNullOrEmpty(asString)) {
                return new C1056kl(new JSONObject(asString));
            }
        } catch (Throwable unused3) {
        }
        return null;
    }

    public final long b() {
        long jQueryRowsCount;
        this.a.lock();
        try {
            SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
            jQueryRowsCount = readableDatabase != null ? DBUtils.queryRowsCount(readableDatabase, "events") : 0L;
        } catch (Throwable unused) {
        }
        this.a.unlock();
        return jQueryRowsCount;
    }

    public final void c() {
        Cursor cursor;
        Cursor cursorQuery;
        this.a.lock();
        Cursor cursorQuery2 = null;
        try {
            SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
            if (readableDatabase != null) {
                cursorQuery = readableDatabase.query(true, "sessions", new String[]{TtmlNode.ATTR_ID}, null, null, null, null, "id ASC", null);
                try {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("All sessions in db: ");
                    while (cursorQuery.moveToNext()) {
                        stringBuffer.append(cursorQuery.getString(0));
                        stringBuffer.append(", ");
                    }
                    cursorQuery2 = readableDatabase.query(true, "events", new String[]{"session_id"}, null, null, null, null, "session_id ASC", null);
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("All sessions in reports db: ");
                    while (cursorQuery2.moveToNext()) {
                        stringBuffer2.append(cursorQuery2.getString(0));
                        stringBuffer2.append(", ");
                    }
                } catch (Throwable unused) {
                    cursor = cursorQuery2;
                    cursorQuery2 = cursorQuery;
                    Cursor cursor2 = cursor;
                    cursorQuery = cursorQuery2;
                    cursorQuery2 = cursor2;
                }
            } else {
                cursorQuery = null;
            }
        } catch (Throwable unused2) {
            cursor = null;
        }
        this.a.unlock();
        xo.a(cursorQuery);
        xo.a(cursorQuery2);
    }

    public final long a(Set set) {
        long jQueryNumEntries;
        String[] strArr;
        String string;
        this.a.lock();
        try {
            SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
            if (readableDatabase != null) {
                if (set.isEmpty()) {
                    strArr = null;
                    string = null;
                } else {
                    StringBuilder sb = new StringBuilder("type IN (");
                    strArr = new String[set.size()];
                    Iterator it = set.iterator();
                    int i = 0;
                    while (it.hasNext()) {
                        Integer num = (Integer) it.next();
                        if (i > 0) {
                            sb.append(", ");
                        }
                        sb.append("?");
                        strArr[i] = String.valueOf(num);
                        i++;
                    }
                    sb.append(")");
                    string = sb.toString();
                }
                jQueryNumEntries = DatabaseUtils.queryNumEntries(readableDatabase, "events", string, strArr);
            } else {
                jQueryNumEntries = 0;
            }
        } catch (Throwable unused) {
        }
        this.a.unlock();
        return jQueryNumEntries;
    }

    public final void a(InterfaceC0889e9 interfaceC0889e9) {
        this.g.add(interfaceC0889e9);
    }

    public final void a(ContentValues contentValues) {
        if (contentValues == null) {
            return;
        }
        this.b.lock();
        try {
            SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
            if (writableDatabase != null) {
                writableDatabase.insertOrThrow("sessions", null, contentValues);
            }
        } catch (Throwable unused) {
        }
        this.b.unlock();
    }

    public final T6 a(SQLiteDatabase sQLiteDatabase, String str, Yk yk) {
        return this.h.a(sQLiteDatabase, str, new String[]{Long.toString(yk.a), Integer.toString(yk.b), Long.toString(yk.c)}, 1, this.e.b.b, yk.d);
    }

    public final long a() {
        this.a.lock();
        try {
            return this.f.get();
        } finally {
            this.a.unlock();
        }
    }

    public static String a(LinkedHashMap linkedHashMap) {
        StringBuilder sb = new StringBuilder("id >= ? AND EXISTS (SELECT 1 FROM events WHERE events.session_id = sessions.id AND events.session_type = sessions.type)");
        Iterator it = linkedHashMap.keySet().iterator();
        while (it.hasNext()) {
            defpackage.n1.d(sb, sb.length() > 0 ? " AND " : "", (String) it.next(), " = ? ");
        }
        if (TextUtils.isEmpty(sb.toString())) {
            return null;
        }
        return sb.toString();
    }
}
