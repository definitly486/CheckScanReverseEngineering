package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import defpackage.j59;
import defpackage.kx2;
import defpackage.m96;
import io.appmetrica.analytics.coreutils.internal.db.DBUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Bh {
    public final Y6 a;
    public final C1030jl b;
    public final Go c;

    public Bh(C0989i5 c0989i5) {
        this.a = c0989i5.i();
        this.b = c0989i5.s();
        this.c = c0989i5.u();
    }

    public final List a(LinkedHashMap linkedHashMap) {
        Cursor cursorQuery;
        Y6 y6 = this.a;
        y6.a.lock();
        try {
            SQLiteDatabase readableDatabase = y6.c.getReadableDatabase();
            if (readableDatabase != null) {
                String strA = Y6.a(linkedHashMap);
                ArrayList arrayList = new ArrayList(Arrays.asList(Long.toString(0L)));
                Iterator it = linkedHashMap.entrySet().iterator();
                while (it.hasNext()) {
                    arrayList.add((String) ((Map.Entry) it.next()).getValue());
                }
                cursorQuery = readableDatabase.query("sessions", null, strA, (String[]) arrayList.toArray(new String[0]), null, null, "id ASC", String.valueOf(100));
            } else {
                cursorQuery = null;
            }
        } catch (Throwable unused) {
        }
        y6.a.unlock();
        if (cursorQuery == null) {
            return kx2.b;
        }
        ArrayList arrayList2 = new ArrayList();
        while (cursorQuery.moveToNext()) {
            try {
                try {
                    ContentValues contentValues = new ContentValues();
                    DBUtils.cursorRowToContentValues(cursorQuery, contentValues);
                    arrayList2.add(new G7(null, 1, null).toModel(contentValues));
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        m96.c(cursorQuery, th);
                        throw th2;
                    }
                }
            } catch (Throwable unused2) {
            }
        }
        j59 j59Var = j59.a;
        cursorQuery.close();
        return arrayList2;
    }

    public final int a() {
        int iOptInt;
        Go go = this.c;
        synchronized (go) {
            iOptInt = go.a.a().optInt("report_request_id", -1);
        }
        return iOptInt + 1;
    }
}
