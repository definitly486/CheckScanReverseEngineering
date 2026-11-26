package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.j59;
import defpackage.kn1;
import defpackage.qn1;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes5.dex */
public final class P8 {
    public final C1068l7 a;
    public final C0989i5 b;
    public final AtomicLong c;
    public final List d;
    public final V6 e;
    public final ReentrantReadWriteLock.WriteLock f;

    public P8(C1068l7 c1068l7, C0989i5 c0989i5, AtomicLong atomicLong, ArrayList arrayList, V6 v6, ReentrantReadWriteLock reentrantReadWriteLock) {
        this.a = c1068l7;
        this.b = c0989i5;
        this.c = atomicLong;
        this.d = arrayList;
        this.e = v6;
        this.f = reentrantReadWriteLock.writeLock();
    }

    public final int a(SQLiteDatabase sQLiteDatabase) {
        try {
            int i = this.e.a(sQLiteDatabase, String.format("id IN (SELECT id FROM events ORDER BY CASE WHEN type IN (%1$s) THEN 2 WHEN type IN (%2$s) THEN 1 ELSE 0 END, id LIMIT (SELECT count() FROM events) / %3$s)", Arrays.copyOf(new Object[]{qn1.a0(I9.i, ", ", null, null, 0, null, 62), qn1.a0(I9.j, ", ", null, null, 0, null, 62), 10}, 3)), null, 2, this.b.b.b, true).b;
            try {
                sQLiteDatabase.delete("sessions", F5.c, new String[]{String.valueOf(this.b.j.a())});
                return i;
            } catch (Throwable unused) {
                return i;
            }
        } catch (Throwable th) {
            C0900ek c0900ek = Bj.a;
            c0900ek.getClass();
            c0900ek.a(new Cj("deleteExcessiveReports exception", th));
            return 0;
        }
    }

    public final void b(List list) {
        int iA;
        if (list.isEmpty()) {
            return;
        }
        long j = ((C1233rh) this.b.k.a()).v;
        ReentrantReadWriteLock.WriteLock writeLock = this.f;
        writeLock.lock();
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
                if (writableDatabase != null) {
                    try {
                        writableDatabase.beginTransaction();
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            ContentValues contentValues = (ContentValues) it.next();
                            writableDatabase.insertOrThrow("events", null, contentValues);
                            this.c.incrementAndGet();
                            a(contentValues);
                        }
                        if (this.c.get() > j) {
                            iA = a(writableDatabase);
                            this.c.addAndGet(-iA);
                        } else {
                            iA = 0;
                        }
                        writableDatabase.setTransactionSuccessful();
                        if (iA != 0) {
                            Iterator it2 = this.d.iterator();
                            while (it2.hasNext()) {
                                ((InterfaceC0889e9) it2.next()).a();
                            }
                        }
                        j59 j59Var = j59.a;
                    } catch (Throwable unused) {
                        sQLiteDatabase = writableDatabase;
                        try {
                            j59 j59Var2 = j59.a;
                            xo.a(sQLiteDatabase);
                        } catch (Throwable th) {
                            xo.a(sQLiteDatabase);
                            throw th;
                        }
                    }
                }
                xo.a(writableDatabase);
            } catch (Throwable th2) {
                writeLock.unlock();
                throw th2;
            }
        } catch (Throwable unused2) {
        }
        writeLock.unlock();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(ContentValues contentValues) {
        Integer asInteger = contentValues.getAsInteger(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        if (I9.d.contains(EnumC1176pb.a(asInteger != null ? asInteger.intValue() : -1))) {
            C1223r7 model = new C1249s7(null, 1, 0 == true ? 1 : 0).toModel(contentValues);
            PublicLogger publicLogger = this.b.m;
            EnumC1176pb enumC1176pb = model.d;
            C1198q7 c1198q7 = model.g;
            publicLogger.info(AbstractC0896eg.a("Event saved to db", enumC1176pb, c1198q7.b, c1198q7.c), new Object[0]);
        }
    }

    public final void a(List list) {
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Integer asInteger = ((ContentValues) it.next()).getAsInteger(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
            arrayList.add(Integer.valueOf(asInteger != null ? asInteger.intValue() : -1));
        }
        Iterator it2 = this.d.iterator();
        while (it2.hasNext()) {
            ((InterfaceC0889e9) it2.next()).a(arrayList);
        }
        ((C1324v5) this.b.p).e();
    }
}
