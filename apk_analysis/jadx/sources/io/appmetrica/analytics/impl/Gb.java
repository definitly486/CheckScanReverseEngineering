package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TJKeyValueStorageKt;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jr;
import defpackage.m96;
import defpackage.me0;
import defpackage.qn1;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.buffering.BatchProcessor;
import io.appmetrica.analytics.coreutils.internal.buffering.DeferredBatchExecutor;
import io.appmetrica.analytics.coreutils.internal.buffering.MapMergingBuffer;
import io.appmetrica.analytics.coreutils.internal.parsing.ParseUtils;
import io.appmetrica.analytics.impl.Gb;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class Gb implements Va, Closeable {
    public static final Fb g = new Fb();
    public final String a;
    public final M6 b;
    public final LinkedHashMap c = new LinkedHashMap();
    public final Object d = new Object();
    public volatile boolean e;
    public final DeferredBatchExecutor f;

    public Gb(String str, M6 m6, IHandlerExecutor iHandlerExecutor) {
        this.a = str;
        this.b = m6;
        this.f = new DeferredBatchExecutor(iHandlerExecutor, new MapMergingBuffer(), new BatchProcessor() { // from class: bp3
            @Override // io.appmetrica.analytics.coreutils.internal.buffering.BatchProcessor
            public final void processBatch(List list) {
                Gb.a(this.b, list);
            }
        }, 1000L, me0.c("[KeyValueTableDbHelper-(", str, ")]"));
        iHandlerExecutor.execute(new defpackage.rh(this, 2));
    }

    public static final void a(Gb gb, List list) {
        SQLiteDatabase sQLiteDatabaseA;
        Map map = (Map) qn1.T(list);
        gb.getClass();
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            ContentValues contentValues = new ContentValues();
            contentValues.put(TJKeyValueStorageKt.KEY, str);
            if (value == gb) {
                contentValues.putNull("value");
            } else if (value instanceof String) {
                contentValues.put("value", (String) value);
                contentValues.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, (Integer) 4);
            } else if (value instanceof Long) {
                contentValues.put("value", (Long) value);
                contentValues.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, (Integer) 3);
            } else if (value instanceof Integer) {
                contentValues.put("value", (Integer) value);
                contentValues.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, (Integer) 2);
            } else if (value instanceof Boolean) {
                contentValues.put("value", String.valueOf(((Boolean) value).booleanValue()));
                contentValues.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, (Integer) 1);
            } else if (value instanceof Float) {
                contentValues.put("value", (Float) value);
                contentValues.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, (Integer) 5);
            }
            arrayList.add(contentValues);
        }
        ContentValues[] contentValuesArr = (ContentValues[]) arrayList.toArray(new ContentValues[0]);
        if (contentValuesArr == null) {
            return;
        }
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabaseA = gb.b.a();
            if (sQLiteDatabaseA != null) {
                try {
                    sQLiteDatabaseA.beginTransaction();
                    try {
                        jr jrVar = new jr(contentValuesArr);
                        while (jrVar.hasNext()) {
                            ContentValues contentValues2 = (ContentValues) jrVar.next();
                            if (contentValues2.getAsString("value") == null) {
                                sQLiteDatabaseA.delete(gb.a, "key = ?", new String[]{contentValues2.getAsString(TJKeyValueStorageKt.KEY)});
                            } else {
                                sQLiteDatabaseA.insertWithOnConflict(gb.a, null, contentValues2, 5);
                            }
                        }
                        sQLiteDatabaseA.setTransactionSuccessful();
                        xo.a(sQLiteDatabaseA);
                    } catch (Throwable th) {
                        xo.a(sQLiteDatabaseA);
                        throw th;
                    }
                } catch (Throwable unused) {
                    sQLiteDatabase = sQLiteDatabaseA;
                    sQLiteDatabaseA = sQLiteDatabase;
                }
            }
        } catch (Throwable unused2) {
        }
        gb.b.a(sQLiteDatabaseA);
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final Set<String> b() {
        HashSet hashSet;
        synchronized (this.d) {
            hashSet = new HashSet(this.c.keySet());
        }
        return hashSet;
    }

    public final void c() {
        SQLiteDatabase sQLiteDatabaseA;
        Object obj;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabaseA = this.b.a();
            if (sQLiteDatabaseA != null) {
                try {
                    Cursor cursorQuery = sQLiteDatabaseA.query(this.a, new String[]{TJKeyValueStorageKt.KEY, "value", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY}, null, null, null, null, null);
                    if (cursorQuery != null) {
                        while (cursorQuery.moveToNext()) {
                            try {
                                String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(TJKeyValueStorageKt.KEY));
                                String string2 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("value"));
                                int i = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY));
                                if (string != null && string.length() != 0) {
                                    if (i != 1) {
                                        if (i == 2) {
                                            obj = ParseUtils.parseInt(string2);
                                        } else if (i == 3) {
                                            obj = ParseUtils.parseLong(string2);
                                        } else if (i != 4) {
                                            if (i != 5) {
                                                obj = string2;
                                            } else {
                                                obj = string2;
                                                obj = ParseUtils.parseFloat(string2);
                                            }
                                        }
                                    } else if (aa4.e(string2, TJAdUnitConstants.String.TRUE)) {
                                        obj = Boolean.TRUE;
                                    } else {
                                        obj = aa4.e(string2, TJAdUnitConstants.String.FALSE) ? Boolean.FALSE : null;
                                    }
                                    if (obj != null) {
                                        this.c.put(string, obj);
                                    }
                                }
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    m96.c(cursorQuery, th);
                                    throw th2;
                                }
                            }
                        }
                        j59 j59Var = j59.a;
                        cursorQuery.close();
                    }
                } catch (Throwable unused) {
                    sQLiteDatabase = sQLiteDatabaseA;
                    sQLiteDatabaseA = sQLiteDatabase;
                }
            }
        } catch (Throwable unused2) {
        }
        this.b.a(sQLiteDatabaseA);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f.flush();
    }

    public final void d() {
        if (this.e) {
            return;
        }
        try {
            Object obj = this.d;
            obj.getClass();
            obj.wait();
        } catch (InterruptedException unused) {
        }
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final void flushAsync() {
        this.f.flushAsync();
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final boolean getBoolean(String str, boolean z) {
        Object objB = b(str);
        return objB instanceof Boolean ? ((Boolean) objB).booleanValue() : z;
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final int getInt(String str, int i) {
        Object objB = b(str);
        return objB instanceof Integer ? ((Number) objB).intValue() : i;
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final long getLong(String str, long j) {
        Object objB = b(str);
        return objB instanceof Long ? ((Number) objB).longValue() : j;
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final String getString(String str, String str2) {
        Object objB = b(str);
        return objB instanceof String ? (String) objB : str2;
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final Va remove(String str) {
        synchronized (this.d) {
            d();
            this.c.remove(str);
        }
        DeferredBatchExecutor deferredBatchExecutor = this.f;
        Map mapSingletonMap = Collections.singletonMap(str, this);
        mapSingletonMap.getClass();
        DeferredBatchExecutor.submit$default(deferredBatchExecutor, mapSingletonMap, false, 2, null);
        return this;
    }

    public final float b(String str, float f) {
        Object objB = b(str);
        return objB instanceof Float ? ((Number) objB).floatValue() : f;
    }

    public final Object b(String str) {
        Object obj;
        synchronized (this.d) {
            d();
            obj = this.c.get(str);
        }
        return obj;
    }

    public static final void a(Gb gb) {
        synchronized (gb.d) {
            gb.c();
            gb.e = true;
            Object obj = gb.d;
            obj.getClass();
            obj.notifyAll();
            j59 j59Var = j59.a;
        }
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final void a() {
        this.f.flush();
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final Va a(String str, String str2) {
        a(str, (Object) str2);
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final Va a(String str, long j) {
        a(str, Long.valueOf(j));
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final Va a(String str, int i) {
        a(str, Integer.valueOf(i));
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final Va a(String str, boolean z) {
        a(str, Boolean.valueOf(z));
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final Va a(String str, float f) {
        a(str, Float.valueOf(f));
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final boolean a(String str) {
        boolean zContainsKey;
        synchronized (this.d) {
            d();
            zContainsKey = this.c.containsKey(str);
        }
        return zContainsKey;
    }

    public final void a(String str, Object obj) {
        synchronized (this.d) {
            d();
            this.c.put(str, obj);
            j59 j59Var = j59.a;
        }
        DeferredBatchExecutor deferredBatchExecutor = this.f;
        Map mapSingletonMap = Collections.singletonMap(str, obj);
        mapSingletonMap.getClass();
        DeferredBatchExecutor.submit$default(deferredBatchExecutor, mapSingletonMap, false, 2, null);
    }
}
