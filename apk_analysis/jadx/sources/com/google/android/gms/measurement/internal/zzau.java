package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzhr;
import com.google.android.gms.internal.measurement.zzhs;
import com.tapjoy.TJVerifierKt;
import defpackage.cva;
import defpackage.kva;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzau {
    public final String a;
    public long b;
    public final /* synthetic */ kva c;

    public zzau(kva kvaVar, String str, long j) {
        Objects.requireNonNull(kvaVar);
        this.c = kvaVar;
        Preconditions.checkNotEmpty(str);
        this.a = str;
        this.b = kvaVar.u("select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1", new String[]{str, String.valueOf(j)}, -1L);
    }

    public final List zza() {
        List list;
        List list2;
        kva kvaVar = this.c;
        ArrayList arrayList = new ArrayList();
        String strValueOf = String.valueOf(this.b);
        String str = this.a;
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = kvaVar.M().query("raw_events", new String[]{"rowid", "name", TJVerifierKt.TJC_TIMESTAMP, "metadata_fingerprint", "data", "realtime", "elapsed_time"}, "app_id = ? and rowid > ?", new String[]{str, strValueOf}, null, null, "rowid", "1000");
                if (cursorQuery.moveToFirst()) {
                    do {
                        long j = cursorQuery.getLong(0);
                        long j2 = cursorQuery.getLong(3);
                        boolean z = cursorQuery.getLong(5) == 1;
                        long j3 = cursorQuery.getLong(6);
                        byte[] blob = cursorQuery.getBlob(4);
                        if (j > this.b) {
                            this.b = j;
                        }
                        try {
                            zzhr zzhrVar = (zzhr) zzpk.H(zzhs.zzp(), blob);
                            String string = cursorQuery.getString(1);
                            if (string == null) {
                                string = "";
                            }
                            zzhrVar.zzl(string);
                            zzhrVar.zzo(cursorQuery.getLong(2));
                            zzhrVar.zzw(j3);
                            arrayList.add(new cva(j, j2, z, (zzhs) zzhrVar.zzbd()));
                        } catch (IOException e) {
                            kvaVar.a.zzaW().zzb().zzc("Data loss. Failed to merge raw event. appId", zzgu.d(str), e);
                        }
                    } while (cursorQuery.moveToNext());
                    list = arrayList;
                } else {
                    list2 = Collections.EMPTY_LIST;
                }
            } catch (SQLiteException e2) {
                kvaVar.a.zzaW().zzb().zzc("Data loss. Error querying raw events batch. appId", zzgu.d(str), e2);
                list = arrayList;
            }
            list = list2;
            return list;
        } finally {
            if (0 != 0) {
                cursorQuery.close();
            }
        }
    }

    public zzau(kva kvaVar, String str) {
        Objects.requireNonNull(kvaVar);
        this.c = kvaVar;
        Preconditions.checkNotEmpty(str);
        this.a = str;
        this.b = -1L;
    }
}
