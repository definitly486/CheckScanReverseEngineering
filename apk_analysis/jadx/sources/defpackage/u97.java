package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import android.util.Log;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class u97 implements f13, eh8, vl1 {
    public static final iy2 g = new iy2("proto");
    public final xe7 b;
    public final hm1 c;
    public final hm1 d;
    public final ty e;
    public final ws6<String> f;

    public interface a<T, U> {
        U apply(T t);
    }

    public static class b {
        public final String a;
        public final String b;

        public b(String str, String str2) {
            this.a = str;
            this.b = str2;
        }
    }

    public u97(hm1 hm1Var, hm1 hm1Var2, ty tyVar, xe7 xe7Var, ws6<String> ws6Var) {
        this.b = xe7Var;
        this.c = hm1Var;
        this.d = hm1Var2;
        this.e = tyVar;
        this.f = ws6Var;
    }

    public static String P(Iterable<u46> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<u46> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next().b());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static <T> T Q(Cursor cursor, a<Cursor, T> aVar) {
        try {
            return aVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    public static Long v(SQLiteDatabase sQLiteDatabase, hz hzVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(hzVar.a, String.valueOf(kg6.a(hzVar.c))));
        byte[] bArr = hzVar.b;
        if (bArr != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(bArr, 0));
        } else {
            sb.append(" and extras is null");
        }
        Cursor cursorQuery = sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        try {
            return !cursorQuery.moveToNext() ? null : Long.valueOf(cursorQuery.getLong(0));
        } finally {
            cursorQuery.close();
        }
    }

    @Override // defpackage.f13
    public final void B(final long j, final hz hzVar) {
        y(new a() { // from class: p97
            @Override // u97.a
            public final Object apply(Object obj) {
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                ContentValues contentValues = new ContentValues();
                contentValues.put("next_request_ms", Long.valueOf(j));
                hz hzVar2 = hzVar;
                String str = hzVar2.a;
                ig6 ig6Var = hzVar2.c;
                if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{str, String.valueOf(kg6.a(ig6Var))}) < 1) {
                    contentValues.put("backend_name", str);
                    contentValues.put("priority", Integer.valueOf(kg6.a(ig6Var)));
                    sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                return null;
            }
        });
    }

    @Override // defpackage.f13
    public final long D(s29 s29Var) {
        Cursor cursorRawQuery = p().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{s29Var.b(), String.valueOf(kg6.a(s29Var.d()))});
        try {
            return (cursorRawQuery.moveToNext() ? Long.valueOf(cursorRawQuery.getLong(0)) : 0L).longValue();
        } finally {
            cursorRawQuery.close();
        }
    }

    public final ArrayList E(SQLiteDatabase sQLiteDatabase, final hz hzVar, int i) {
        final ArrayList arrayList = new ArrayList();
        Long lV = v(sQLiteDatabase, hzVar);
        if (lV == null) {
            return arrayList;
        }
        Q(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline", FirebaseAnalytics.Param.PRODUCT_ID, "pseudonymous_id", "experiment_ids_clear_blob", "experiment_ids_encrypted_blob"}, "context_id = ?", new String[]{lV.toString()}, null, null, null, String.valueOf(i)), new a() { // from class: r97
            @Override // u97.a
            public final Object apply(Object obj) {
                Cursor cursor = (Cursor) obj;
                while (cursor.moveToNext()) {
                    long j = cursor.getLong(0);
                    boolean z = cursor.getInt(7) != 0;
                    sy.a aVar = new sy.a();
                    aVar.f = new HashMap();
                    String string = cursor.getString(1);
                    if (string == null) {
                        o2.d("Null transportName");
                        break;
                    }
                    aVar.a = string;
                    aVar.d = Long.valueOf(cursor.getLong(2));
                    aVar.e = Long.valueOf(cursor.getLong(3));
                    if (z) {
                        String string2 = cursor.getString(4);
                        aVar.c = new sx2(string2 == null ? u97.g : new iy2(string2), cursor.getBlob(5));
                    } else {
                        String string3 = cursor.getString(4);
                        iy2 iy2Var = string3 == null ? u97.g : new iy2(string3);
                        Cursor cursorQuery = this.b.p().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num");
                        try {
                            ArrayList arrayList2 = new ArrayList();
                            int length = 0;
                            while (cursorQuery.moveToNext()) {
                                byte[] blob = cursorQuery.getBlob(0);
                                arrayList2.add(blob);
                                length += blob.length;
                            }
                            byte[] bArr = new byte[length];
                            int length2 = 0;
                            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                                byte[] bArr2 = (byte[]) arrayList2.get(i2);
                                System.arraycopy(bArr2, 0, bArr, length2, bArr2.length);
                                length2 += bArr2.length;
                            }
                            cursorQuery.close();
                            aVar.c = new sx2(iy2Var, bArr);
                        } catch (Throwable th) {
                            cursorQuery.close();
                            throw th;
                        }
                    }
                    if (!cursor.isNull(6)) {
                        aVar.b = Integer.valueOf(cursor.getInt(6));
                    }
                    if (!cursor.isNull(8)) {
                        aVar.g = Integer.valueOf(cursor.getInt(8));
                    }
                    if (!cursor.isNull(9)) {
                        aVar.h = cursor.getString(9);
                    }
                    if (!cursor.isNull(10)) {
                        aVar.i = cursor.getBlob(10);
                    }
                    if (!cursor.isNull(11)) {
                        aVar.j = cursor.getBlob(11);
                    }
                    arrayList.add(new cz(j, hzVar, aVar.b()));
                }
                return null;
            }
        });
        return arrayList;
    }

    @Override // defpackage.f13
    public final Iterable K(final hz hzVar) {
        return (Iterable) y(new a() { // from class: o97
            @Override // u97.a
            public final Object apply(Object obj) {
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                u97 u97Var = this.b;
                ty tyVar = u97Var.e;
                int iC = tyVar.c();
                hz hzVar2 = hzVar;
                ArrayList arrayListE = u97Var.E(sQLiteDatabase, hzVar2, iC);
                for (ig6 ig6Var : ig6.values()) {
                    if (ig6Var != hzVar2.c) {
                        int iC2 = tyVar.c() - arrayListE.size();
                        if (iC2 <= 0) {
                            break;
                        }
                        arrayListE.addAll(u97Var.E(sQLiteDatabase, hzVar2.e(ig6Var), iC2));
                    }
                }
                HashMap map = new HashMap();
                StringBuilder sb = new StringBuilder("event_id IN (");
                for (int i = 0; i < arrayListE.size(); i++) {
                    sb.append(((u46) arrayListE.get(i)).b());
                    if (i < arrayListE.size() - 1) {
                        sb.append(',');
                    }
                }
                sb.append(')');
                Cursor cursorQuery = sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null);
                while (cursorQuery.moveToNext()) {
                    try {
                        long j = cursorQuery.getLong(0);
                        Set hashSet = (Set) map.get(Long.valueOf(j));
                        if (hashSet == null) {
                            hashSet = new HashSet();
                            map.put(Long.valueOf(j), hashSet);
                        }
                        hashSet.add(new u97.b(cursorQuery.getString(1), cursorQuery.getString(2)));
                    } catch (Throwable th) {
                        cursorQuery.close();
                        throw th;
                    }
                }
                cursorQuery.close();
                ListIterator listIterator = arrayListE.listIterator();
                while (listIterator.hasNext()) {
                    u46 u46Var = (u46) listIterator.next();
                    if (map.containsKey(Long.valueOf(u46Var.b()))) {
                        sy.a aVarM = u46Var.a().m();
                        for (u97.b bVar : (Set) map.get(Long.valueOf(u46Var.b()))) {
                            aVarM.a(bVar.a, bVar.b);
                        }
                        listIterator.set(new cz(u46Var.b(), u46Var.c(), aVarM.b()));
                    }
                }
                return arrayListE;
            }
        });
    }

    @Override // defpackage.f13
    public final void N(Iterable<u46> iterable) {
        if (iterable.iterator().hasNext()) {
            p().compileStatement("DELETE FROM events WHERE _id in ".concat(P(iterable))).execute();
        }
    }

    @Override // defpackage.f13
    public final cz O(final hz hzVar, final z03 z03Var) {
        ig6 ig6Var = hzVar.c;
        String strK = z03Var.k();
        String str = hzVar.a;
        String strConcat = "TRuntime.".concat("SQLiteEventStore");
        if (Log.isLoggable(strConcat, 3)) {
            Log.d(strConcat, "Storing event with priority=" + ig6Var + ", name=" + strK + " for destination " + str);
        }
        long jLongValue = ((Long) y(new a() { // from class: s97
            @Override // u97.a
            public final Object apply(Object obj) {
                long jInsert;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                u97 u97Var = this.b;
                long jSimpleQueryForLong = u97Var.p().compileStatement("PRAGMA page_size").simpleQueryForLong() * u97Var.p().compileStatement("PRAGMA page_count").simpleQueryForLong();
                ty tyVar = u97Var.e;
                long jE = tyVar.e();
                z03 z03Var2 = z03Var;
                if (jSimpleQueryForLong >= jE) {
                    u97Var.o(1L, uu4.a.CACHE_FULL, z03Var2.k());
                    return -1L;
                }
                hz hzVar2 = hzVar;
                Long lV = u97.v(sQLiteDatabase, hzVar2);
                if (lV != null) {
                    jInsert = lV.longValue();
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("backend_name", hzVar2.a);
                    contentValues.put("priority", Integer.valueOf(kg6.a(hzVar2.c)));
                    contentValues.put("next_request_ms", (Integer) 0);
                    byte[] bArr = hzVar2.b;
                    if (bArr != null) {
                        contentValues.put(TJAdUnitConstants.String.EXTRAS, Base64.encodeToString(bArr, 0));
                    }
                    jInsert = sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                int iD = tyVar.d();
                byte[] bArr2 = z03Var2.d().b;
                boolean z = bArr2.length <= iD;
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("context_id", Long.valueOf(jInsert));
                contentValues2.put("transport_name", z03Var2.k());
                contentValues2.put("timestamp_ms", Long.valueOf(z03Var2.e()));
                contentValues2.put("uptime_ms", Long.valueOf(z03Var2.l()));
                contentValues2.put("payload_encoding", z03Var2.d().a.a);
                contentValues2.put("code", z03Var2.c());
                contentValues2.put("num_attempts", (Integer) 0);
                contentValues2.put("inline", Boolean.valueOf(z));
                contentValues2.put("payload", z ? bArr2 : new byte[0]);
                contentValues2.put(FirebaseAnalytics.Param.PRODUCT_ID, z03Var2.i());
                contentValues2.put("pseudonymous_id", z03Var2.j());
                contentValues2.put("experiment_ids_clear_blob", z03Var2.f());
                contentValues2.put("experiment_ids_encrypted_blob", z03Var2.g());
                long jInsert2 = sQLiteDatabase.insert("events", null, contentValues2);
                if (!z) {
                    int iCeil = (int) Math.ceil(((double) bArr2.length) / ((double) iD));
                    for (int i = 1; i <= iCeil; i++) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, (i - 1) * iD, Math.min(i * iD, bArr2.length));
                        ContentValues contentValues3 = new ContentValues();
                        contentValues3.put("event_id", Long.valueOf(jInsert2));
                        contentValues3.put("sequence_num", Integer.valueOf(i));
                        contentValues3.put("bytes", bArrCopyOfRange);
                        sQLiteDatabase.insert("event_payloads", null, contentValues3);
                    }
                }
                for (Map.Entry entry : Collections.unmodifiableMap(z03Var2.b()).entrySet()) {
                    ContentValues contentValues4 = new ContentValues();
                    contentValues4.put("event_id", Long.valueOf(jInsert2));
                    contentValues4.put("name", (String) entry.getKey());
                    contentValues4.put("value", (String) entry.getValue());
                    sQLiteDatabase.insert("event_metadata", null, contentValues4);
                }
                return Long.valueOf(jInsert2);
            }
        })).longValue();
        if (jLongValue < 1) {
            return null;
        }
        return new cz(jLongValue, hzVar, z03Var);
    }

    @Override // defpackage.f13
    public final Iterable<s29> R() {
        SQLiteDatabase sQLiteDatabaseP = p();
        sQLiteDatabaseP.beginTransaction();
        try {
            List list = (List) Q(sQLiteDatabaseP.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new n2());
            sQLiteDatabaseP.setTransactionSuccessful();
            return list;
        } finally {
            sQLiteDatabaseP.endTransaction();
        }
    }

    @Override // defpackage.eh8
    public final <T> T a(eh8.a<T> aVar) {
        SQLiteDatabase sQLiteDatabaseP = p();
        hm1 hm1Var = this.d;
        long time = hm1Var.getTime();
        while (true) {
            try {
                sQLiteDatabaseP.beginTransaction();
                try {
                    T tExecute = aVar.execute();
                    sQLiteDatabaseP.setTransactionSuccessful();
                    return tExecute;
                } finally {
                    sQLiteDatabaseP.endTransaction();
                }
            } catch (SQLiteDatabaseLockedException e) {
                if (hm1Var.getTime() >= ((long) this.e.a()) + time) {
                    throw new SynchronizationException("Timed out while trying to acquire the lock.", e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // defpackage.f13
    public final void a0(Iterable<u46> iterable) {
        if (iterable.iterator().hasNext()) {
            y(new yf2(this, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in ".concat(P(iterable))));
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.b.close();
    }

    @Override // defpackage.f13
    public final boolean i0(hz hzVar) {
        Boolean bool;
        SQLiteDatabase sQLiteDatabaseP = p();
        sQLiteDatabaseP.beginTransaction();
        try {
            Long lV = v(sQLiteDatabaseP, hzVar);
            if (lV == null) {
                bool = Boolean.FALSE;
            } else {
                Cursor cursorRawQuery = p().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lV.toString()});
                try {
                    Boolean boolValueOf = Boolean.valueOf(cursorRawQuery.moveToNext());
                    cursorRawQuery.close();
                    bool = boolValueOf;
                } catch (Throwable th) {
                    cursorRawQuery.close();
                    throw th;
                }
            }
            sQLiteDatabaseP.setTransactionSuccessful();
            sQLiteDatabaseP.endTransaction();
            return bool.booleanValue();
        } catch (Throwable th2) {
            sQLiteDatabaseP.endTransaction();
            throw th2;
        }
    }

    @Override // defpackage.vl1
    public final void m() {
        SQLiteDatabase sQLiteDatabaseP = p();
        sQLiteDatabaseP.beginTransaction();
        try {
            sQLiteDatabaseP.compileStatement("DELETE FROM log_event_dropped").execute();
            sQLiteDatabaseP.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + this.c.getTime()).execute();
            sQLiteDatabaseP.setTransactionSuccessful();
        } finally {
            sQLiteDatabaseP.endTransaction();
        }
    }

    @Override // defpackage.vl1
    public final zl1 n() {
        int i = zl1.e;
        final zl1.a aVar = new zl1.a();
        aVar.a = null;
        aVar.b = new ArrayList();
        aVar.c = null;
        aVar.d = "";
        final HashMap map = new HashMap();
        SQLiteDatabase sQLiteDatabaseP = p();
        sQLiteDatabaseP.beginTransaction();
        try {
            zl1 zl1Var = (zl1) Q(sQLiteDatabaseP.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new a() { // from class: t97
                /* JADX WARN: Code duplicated, block: B:10:0x0029 A[PHI: r6
                  0x0029: PHI (r6v11 uu4$a) = (r6v4 uu4$a), (r6v5 uu4$a), (r6v6 uu4$a), (r6v7 uu4$a), (r6v8 uu4$a), (r6v9 uu4$a) binds: [B:9:0x0027, B:12:0x0031, B:15:0x003a, B:18:0x0043, B:21:0x004c, B:24:0x0055] A[DONT_GENERATE, DONT_INLINE]] */
                @Override // u97.a
                public final Object apply(Object obj) {
                    HashMap map2;
                    zl1.a aVar2 = aVar;
                    ArrayList arrayList = aVar2.b;
                    Cursor cursor = (Cursor) obj;
                    while (true) {
                        boolean zMoveToNext = cursor.moveToNext();
                        map2 = map;
                        if (!zMoveToNext) {
                            break;
                        }
                        String string = cursor.getString(0);
                        int i2 = cursor.getInt(1);
                        uu4.a aVar3 = uu4.a.REASON_UNKNOWN;
                        if (i2 != aVar3.getNumber()) {
                            uu4.a aVar4 = uu4.a.MESSAGE_TOO_OLD;
                            if (i2 == aVar4.getNumber()) {
                                aVar3 = aVar4;
                            } else {
                                aVar4 = uu4.a.CACHE_FULL;
                                if (i2 == aVar4.getNumber()) {
                                    aVar3 = aVar4;
                                } else {
                                    aVar4 = uu4.a.PAYLOAD_TOO_BIG;
                                    if (i2 == aVar4.getNumber()) {
                                        aVar3 = aVar4;
                                    } else {
                                        aVar4 = uu4.a.MAX_RETRIES_REACHED;
                                        if (i2 == aVar4.getNumber()) {
                                            aVar3 = aVar4;
                                        } else {
                                            aVar4 = uu4.a.INVALID_PAYLOD;
                                            if (i2 == aVar4.getNumber()) {
                                                aVar3 = aVar4;
                                            } else {
                                                aVar4 = uu4.a.SERVER_ERROR;
                                                if (i2 == aVar4.getNumber()) {
                                                    aVar3 = aVar4;
                                                } else {
                                                    hv4.a(Integer.valueOf(i2), "SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN");
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        long j = cursor.getLong(2);
                        if (!map2.containsKey(string)) {
                            map2.put(string, new ArrayList());
                        }
                        ((List) map2.get(string)).add(new uu4(j, aVar3));
                    }
                    for (Map.Entry entry : map2.entrySet()) {
                        int i3 = bv4.c;
                        new ArrayList();
                        arrayList.add(new bv4((String) entry.getKey(), Collections.unmodifiableList((List) entry.getValue())));
                    }
                    u97 u97Var = this.b;
                    long time = u97Var.c.getTime();
                    SQLiteDatabase sQLiteDatabaseP2 = u97Var.p();
                    sQLiteDatabaseP2.beginTransaction();
                    try {
                        Cursor cursorRawQuery = sQLiteDatabaseP2.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]);
                        try {
                            cursorRawQuery.moveToNext();
                            rv8 rv8Var = new rv8(cursorRawQuery.getLong(0), time);
                            cursorRawQuery.close();
                            sQLiteDatabaseP2.setTransactionSuccessful();
                            sQLiteDatabaseP2.endTransaction();
                            aVar2.a = rv8Var;
                            aVar2.c = new dr3(new b98(u97Var.p().compileStatement("PRAGMA page_size").simpleQueryForLong() * u97Var.p().compileStatement("PRAGMA page_count").simpleQueryForLong(), ty.f.a));
                            aVar2.d = u97Var.f.get();
                            return new zl1(aVar2.a, Collections.unmodifiableList(arrayList), aVar2.c, aVar2.d);
                        } catch (Throwable th) {
                            cursorRawQuery.close();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        sQLiteDatabaseP2.endTransaction();
                        throw th2;
                    }
                }
            });
            sQLiteDatabaseP.setTransactionSuccessful();
            return zl1Var;
        } finally {
            sQLiteDatabaseP.endTransaction();
        }
    }

    @Override // defpackage.vl1
    public final void o(final long j, final uu4.a aVar, final String str) {
        y(new a() { // from class: q97
            @Override // u97.a
            public final Object apply(Object obj) {
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                uu4.a aVar2 = aVar;
                String string = Integer.toString(aVar2.getNumber());
                String str2 = str;
                boolean zBooleanValue = ((Boolean) u97.Q(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str2, string}), new k2(4))).booleanValue();
                long j2 = j;
                if (zBooleanValue) {
                    sQLiteDatabase.execSQL(bg.d(j2, "UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + ", " WHERE log_source = ? AND reason = ?"), new String[]{str2, Integer.toString(aVar2.getNumber())});
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("log_source", str2);
                    contentValues.put("reason", Integer.valueOf(aVar2.getNumber()));
                    contentValues.put("events_dropped_count", Long.valueOf(j2));
                    sQLiteDatabase.insert("log_event_dropped", null, contentValues);
                }
                return null;
            }
        });
    }

    public final SQLiteDatabase p() {
        xe7 xe7Var = this.b;
        Objects.requireNonNull(xe7Var);
        hm1 hm1Var = this.d;
        long time = hm1Var.getTime();
        while (true) {
            try {
                return xe7Var.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e) {
                if (hm1Var.getTime() >= ((long) this.e.a()) + time) {
                    throw new SynchronizationException("Timed out while trying to open db.", e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // defpackage.f13
    public final int s() {
        long time = this.c.getTime() - this.e.b();
        SQLiteDatabase sQLiteDatabaseP = p();
        sQLiteDatabaseP.beginTransaction();
        try {
            String[] strArr = {String.valueOf(time)};
            Cursor cursorRawQuery = sQLiteDatabaseP.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr);
            while (cursorRawQuery.moveToNext()) {
                try {
                    o(cursorRawQuery.getInt(0), uu4.a.MESSAGE_TOO_OLD, cursorRawQuery.getString(1));
                } catch (Throwable th) {
                    cursorRawQuery.close();
                    throw th;
                }
            }
            cursorRawQuery.close();
            int iDelete = sQLiteDatabaseP.delete("events", "timestamp_ms < ?", strArr);
            sQLiteDatabaseP.setTransactionSuccessful();
            sQLiteDatabaseP.endTransaction();
            return iDelete;
        } catch (Throwable th2) {
            sQLiteDatabaseP.endTransaction();
            throw th2;
        }
    }

    public final <T> T y(a<SQLiteDatabase, T> aVar) {
        SQLiteDatabase sQLiteDatabaseP = p();
        sQLiteDatabaseP.beginTransaction();
        try {
            T tApply = aVar.apply(sQLiteDatabaseP);
            sQLiteDatabaseP.setTransactionSuccessful();
            return tApply;
        } finally {
            sQLiteDatabaseP.endTransaction();
        }
    }
}
