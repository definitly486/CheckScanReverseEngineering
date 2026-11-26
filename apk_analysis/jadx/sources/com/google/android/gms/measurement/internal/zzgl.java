package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import defpackage.fjb;
import defpackage.qhb;
import defpackage.xp;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgl extends qhb {
    public static final String[] e = {"app_version", "ALTER TABLE messages ADD COLUMN app_version TEXT;", "app_version_int", "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"};
    public final fjb c;
    public boolean d;

    public zzgl(zzic zzicVar) {
        super(zzicVar);
        Context contextZzaZ = this.a.zzaZ();
        this.a.zzc();
        this.c = new fjb(this, contextZzaZ);
    }

    public final SQLiteDatabase b() {
        if (this.d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.d = true;
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0188  */
    /* JADX WARN: Code duplicated, block: B:102:0x018d  */
    /* JADX WARN: Code duplicated, block: B:107:0x0129 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x017f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:123:0x017f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x017f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:75:0x012f A[Catch: all -> 0x0160, TryCatch #0 {all -> 0x0160, blocks: (B:30:0x008b, B:32:0x0091, B:43:0x00b1, B:45:0x00d5, B:47:0x00df, B:49:0x00e7, B:59:0x0101, B:73:0x0129, B:75:0x012f, B:76:0x0132, B:93:0x0167, B:83:0x0150), top: B:107:0x0129 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0145  */
    /* JADX WARN: Code duplicated, block: B:86:0x0157  */
    /* JADX WARN: Code duplicated, block: B:88:0x015c A[PHI: r8 r10 r17
      0x015c: PHI (r8v5 int) = (r8v3 int), (r8v3 int), (r8v6 int) binds: [B:79:0x0148, B:96:0x017c, B:87:0x015a] A[DONT_GENERATE, DONT_INLINE]
      0x015c: PHI (r10v8 android.database.sqlite.SQLiteDatabase) = 
      (r10v6 android.database.sqlite.SQLiteDatabase)
      (r10v7 android.database.sqlite.SQLiteDatabase)
      (r10v9 android.database.sqlite.SQLiteDatabase)
     binds: [B:79:0x0148, B:96:0x017c, B:87:0x015a] A[DONT_GENERATE, DONT_INLINE]
      0x015c: PHI (r17v7 boolean) = (r17v4 boolean), (r17v5 boolean), (r17v8 boolean) binds: [B:79:0x0148, B:96:0x017c, B:87:0x015a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:95:0x0179  */
    public final boolean c(int i, byte[] bArr) throws Throwable {
        SQLiteDatabase sQLiteDatabaseB;
        boolean z;
        boolean z2;
        Cursor cursorRawQuery;
        zzg();
        boolean z3 = false;
        z3 = false;
        if (!this.d) {
            zzic zzicVar = this.a;
            zzal zzalVarZzc = zzicVar.zzc();
            zzfx zzfxVar = zzfy.zzaW;
            Cursor cursor = null;
            cursor = null;
            zzr zzrVarB = zzalVarZzc.zzp(null, zzfxVar) ? zzicVar.zzv().b(null) : null;
            ContentValues contentValues = new ContentValues();
            contentValues.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, Integer.valueOf(i));
            contentValues.put("entry", bArr);
            if (zzicVar.zzc().zzp(null, zzfxVar) && zzrVarB != null) {
                contentValues.put("app_version", zzrVarB.zzc);
                contentValues.put("app_version_int", Long.valueOf(zzrVarB.zzj));
            }
            zzicVar.zzc();
            int i2 = 0;
            int i3 = 5;
            for (int i4 = 5; i2 < i4; i4 = 5) {
                try {
                    sQLiteDatabaseB = b();
                    if (sQLiteDatabaseB == null) {
                        this.d = true;
                    } else {
                        try {
                            sQLiteDatabaseB.beginTransaction();
                            cursorRawQuery = sQLiteDatabaseB.rawQuery("select count(1) from messages", null);
                            long j = 0;
                            if (cursorRawQuery != null) {
                                try {
                                    if (cursorRawQuery.moveToFirst()) {
                                        j = cursorRawQuery.getLong(z3 ? 1 : 0);
                                    }
                                } catch (SQLiteDatabaseLockedException unused) {
                                    z = z3 ? 1 : 0;
                                    SystemClock.sleep(i3);
                                    i3 += 20;
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    if (sQLiteDatabaseB != null) {
                                        sQLiteDatabaseB.close();
                                    }
                                    i2++;
                                    z3 = z;
                                } catch (SQLiteFullException e2) {
                                    e = e2;
                                    z = z3 ? 1 : 0;
                                    zzicVar.zzaW().zzb().zzb("Error writing entry; local database full", e);
                                    this.d = true;
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    if (sQLiteDatabaseB != null) {
                                        sQLiteDatabaseB.close();
                                    }
                                    i2++;
                                    z3 = z;
                                } catch (SQLiteException e3) {
                                    e = e3;
                                    z = z3 ? 1 : 0;
                                    z2 = true;
                                    if (sQLiteDatabaseB != null) {
                                        try {
                                            if (sQLiteDatabaseB.inTransaction()) {
                                                sQLiteDatabaseB.endTransaction();
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            cursor = cursorRawQuery;
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            if (sQLiteDatabaseB != null) {
                                                sQLiteDatabaseB.close();
                                            }
                                            throw th;
                                        }
                                    }
                                    zzicVar.zzaW().zzb().zzb("Error writing entry to local database", e);
                                    this.d = z2;
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    if (sQLiteDatabaseB != null) {
                                        sQLiteDatabaseB.close();
                                    }
                                    i2++;
                                    z3 = z;
                                }
                            }
                            if (j >= SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US) {
                                zzicVar.zzaW().zzb().zza("Data loss, local db full");
                                long j2 = 100001 - j;
                                long jDelete = sQLiteDatabaseB.delete("messages", "rowid in (select rowid from messages order by rowid asc limit ?)", new String[]{Long.toString(j2)});
                                if (jDelete != j2) {
                                    zzgs zzgsVarZzb = zzicVar.zzaW().zzb();
                                    z = z3 ? 1 : 0;
                                    try {
                                        try {
                                            z2 = true;
                                            try {
                                                zzgsVarZzb.zzd("Different delete count than expected in local db. expected, received, difference", Long.valueOf(j2), Long.valueOf(jDelete), Long.valueOf(j2 - jDelete));
                                            } catch (SQLiteFullException e4) {
                                                e = e4;
                                                zzicVar.zzaW().zzb().zzb("Error writing entry; local database full", e);
                                                this.d = true;
                                                if (cursorRawQuery != null) {
                                                    cursorRawQuery.close();
                                                }
                                                if (sQLiteDatabaseB != null) {
                                                    sQLiteDatabaseB.close();
                                                }
                                                i2++;
                                                z3 = z;
                                            } catch (SQLiteException e5) {
                                                e = e5;
                                                if (sQLiteDatabaseB != null) {
                                                    if (sQLiteDatabaseB.inTransaction()) {
                                                        sQLiteDatabaseB.endTransaction();
                                                    }
                                                }
                                                zzicVar.zzaW().zzb().zzb("Error writing entry to local database", e);
                                                this.d = z2;
                                                if (cursorRawQuery != null) {
                                                    cursorRawQuery.close();
                                                }
                                                if (sQLiteDatabaseB != null) {
                                                    sQLiteDatabaseB.close();
                                                }
                                                i2++;
                                                z3 = z;
                                            }
                                        } catch (SQLiteDatabaseLockedException unused2) {
                                            SystemClock.sleep(i3);
                                            i3 += 20;
                                            if (cursorRawQuery != null) {
                                                cursorRawQuery.close();
                                            }
                                            if (sQLiteDatabaseB != null) {
                                                sQLiteDatabaseB.close();
                                            }
                                            i2++;
                                            z3 = z;
                                        }
                                    } catch (SQLiteFullException e6) {
                                        e = e6;
                                        zzicVar.zzaW().zzb().zzb("Error writing entry; local database full", e);
                                        this.d = true;
                                        if (cursorRawQuery != null) {
                                            cursorRawQuery.close();
                                        }
                                        if (sQLiteDatabaseB != null) {
                                            sQLiteDatabaseB.close();
                                        }
                                        i2++;
                                        z3 = z;
                                    } catch (SQLiteException e7) {
                                        e = e7;
                                        z2 = true;
                                        if (sQLiteDatabaseB != null) {
                                            if (sQLiteDatabaseB.inTransaction()) {
                                                sQLiteDatabaseB.endTransaction();
                                            }
                                        }
                                        zzicVar.zzaW().zzb().zzb("Error writing entry to local database", e);
                                        this.d = z2;
                                        if (cursorRawQuery != null) {
                                            cursorRawQuery.close();
                                        }
                                        if (sQLiteDatabaseB != null) {
                                            sQLiteDatabaseB.close();
                                        }
                                        i2++;
                                        z3 = z;
                                    }
                                } else {
                                    z = z3 ? 1 : 0;
                                    z2 = true;
                                }
                            } else {
                                z = z3 ? 1 : 0;
                                z2 = true;
                            }
                            sQLiteDatabaseB.insertOrThrow("messages", null, contentValues);
                            sQLiteDatabaseB.setTransactionSuccessful();
                            sQLiteDatabaseB.endTransaction();
                            if (cursorRawQuery != null) {
                                cursorRawQuery.close();
                            }
                            sQLiteDatabaseB.close();
                            return z2;
                        } catch (SQLiteDatabaseLockedException unused3) {
                            z = z3 ? 1 : 0;
                            cursorRawQuery = null;
                        } catch (SQLiteFullException e8) {
                            e = e8;
                            z = z3 ? 1 : 0;
                            cursorRawQuery = null;
                        } catch (SQLiteException e9) {
                            e = e9;
                            z = z3 ? 1 : 0;
                            z2 = true;
                            cursorRawQuery = null;
                        } catch (Throwable th2) {
                            th = th2;
                            if (cursor != null) {
                                cursor.close();
                            }
                            if (sQLiteDatabaseB != null) {
                                sQLiteDatabaseB.close();
                            }
                            throw th;
                        }
                    }
                } catch (SQLiteDatabaseLockedException unused4) {
                    z = z3 ? 1 : 0;
                    sQLiteDatabaseB = null;
                    cursorRawQuery = null;
                } catch (SQLiteFullException e10) {
                    e = e10;
                    z = z3 ? 1 : 0;
                    sQLiteDatabaseB = null;
                    cursorRawQuery = null;
                } catch (SQLiteException e11) {
                    e = e11;
                    z = z3 ? 1 : 0;
                    z2 = true;
                    sQLiteDatabaseB = null;
                    cursorRawQuery = null;
                } catch (Throwable th3) {
                    th = th3;
                    sQLiteDatabaseB = null;
                }
            }
            boolean z4 = z3 ? 1 : 0;
            zzicVar.zzaW().zzk().zza("Failed to write entry to local database");
            return z4;
        }
        return z3;
    }

    @Override // defpackage.qhb
    public final boolean zze() {
        return false;
    }

    public final void zzh() {
        int iDelete;
        zzic zzicVar = this.a;
        zzg();
        try {
            SQLiteDatabase sQLiteDatabaseB = b();
            if (sQLiteDatabaseB == null || (iDelete = sQLiteDatabaseB.delete("messages", null, null)) <= 0) {
                return;
            }
            zzicVar.zzaW().zzk().zzb("Reset local analytics data. records", Integer.valueOf(iDelete));
        } catch (SQLiteException e2) {
            zzicVar.zzaW().zzb().zzb("Error resetting local analytics data. error", e2);
        }
    }

    public final boolean zzi(zzbh zzbhVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzbi.a(zzbhVar, parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length <= 131072) {
            return c(0, bArrMarshall);
        }
        this.a.zzaW().zzc().zza("Event is too long for local database. Sending event directly to service");
        return false;
    }

    public final boolean zzj(zzpl zzplVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzpm.a(zzplVar, parcelObtain);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length <= 131072) {
            return c(1, bArrMarshall);
        }
        this.a.zzaW().zzc().zza("User property too long for local database. Sending directly to service");
        return false;
    }

    public final boolean zzk(zzah zzahVar) {
        zzic zzicVar = this.a;
        zzicVar.zzk().getClass();
        byte[] bArrF = zzpp.F(zzahVar);
        if (bArrF.length <= 131072) {
            return c(2, bArrF);
        }
        zzicVar.zzaW().zzc().zza("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    public final boolean zzl(zzbf zzbfVar) {
        zzic zzicVar = this.a;
        zzicVar.zzk().getClass();
        byte[] bArrF = zzpp.F(zzbfVar);
        if (bArrF == null) {
            zzicVar.zzaW().zzc().zza("Null default event parameters; not writing to database");
            return false;
        }
        if (bArrF.length <= 131072) {
            return c(4, bArrF);
        }
        zzicVar.zzaW().zzc().zza("Default event parameters too long for local database. Sending directly to service");
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:170:0x0312 A[Catch: all -> 0x034b, TRY_ENTER, TryCatch #26 {all -> 0x034b, blocks: (B:38:0x00eb, B:40:0x00f1, B:42:0x0104, B:44:0x010a, B:57:0x0143, B:61:0x0159, B:63:0x015e, B:180:0x033b, B:170:0x0312, B:172:0x0318, B:173:0x031b, B:190:0x0357, B:76:0x0187, B:77:0x018a, B:75:0x0183, B:85:0x019d, B:87:0x01b1, B:94:0x01ca, B:95:0x01d3, B:96:0x01d6, B:92:0x01c4, B:99:0x01da, B:101:0x01ee, B:108:0x0207, B:109:0x0211, B:110:0x0214, B:106:0x0201, B:113:0x0218, B:117:0x022c, B:131:0x024f, B:133:0x0259, B:134:0x025c, B:129:0x0249, B:137:0x0261, B:138:0x026f, B:145:0x02aa, B:147:0x02c7, B:148:0x02d4), top: B:222:0x033b }] */
    /* JADX WARN: Code duplicated, block: B:175:0x032b  */
    /* JADX WARN: Code duplicated, block: B:183:0x0342  */
    /* JADX WARN: Code duplicated, block: B:185:0x0347 A[PHI: r6 r12 r14 r19 r20 r21
      0x0347: PHI (r6v14 int) = (r6v7 int), (r6v9 int), (r6v15 int) binds: [B:176:0x032e, B:193:0x036a, B:184:0x0345] A[DONT_GENERATE, DONT_INLINE]
      0x0347: PHI (r12v3 int) = (r12v1 int), (r12v1 int), (r12v4 int) binds: [B:176:0x032e, B:193:0x036a, B:184:0x0345] A[DONT_GENERATE, DONT_INLINE]
      0x0347: PHI (r14v9 ??) = (r14v4 ??), (r14v6 ??), (r14v10 ??) binds: [B:176:0x032e, B:193:0x036a, B:184:0x0345] A[DONT_GENERATE, DONT_INLINE]
      0x0347: PHI (r19v8 java.lang.String) = (r19v3 java.lang.String), (r19v5 java.lang.String), (r19v9 java.lang.String) binds: [B:176:0x032e, B:193:0x036a, B:184:0x0345] A[DONT_GENERATE, DONT_INLINE]
      0x0347: PHI (r20v8 java.lang.String) = (r20v3 java.lang.String), (r20v5 java.lang.String), (r20v9 java.lang.String) binds: [B:176:0x032e, B:193:0x036a, B:184:0x0345] A[DONT_GENERATE, DONT_INLINE]
      0x0347: PHI (r21v8 java.lang.String) = (r21v3 java.lang.String), (r21v5 java.lang.String), (r21v9 java.lang.String) binds: [B:176:0x032e, B:193:0x036a, B:184:0x0345] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:192:0x0367  */
    /* JADX WARN: Code duplicated, block: B:197:0x037c  */
    /* JADX WARN: Code duplicated, block: B:199:0x0381  */
    /* JADX WARN: Code duplicated, block: B:245:0x036d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:246:0x036d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:248:0x036d A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12, types: [android.database.sqlite.SQLiteClosable, android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v18 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8, types: [android.database.sqlite.SQLiteClosable] */
    /* JADX WARN: Type inference failed for: r14v9, types: [android.database.sqlite.SQLiteClosable] */
    /* JADX WARN: Type inference failed for: r15v10, types: [com.google.android.gms.measurement.internal.zzal] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v53 */
    public final List zzm(int i) throws Throwable {
        Cursor cursor;
        ?? r14;
        ?? B;
        Cursor cursorQuery;
        Cursor cursorQuery2;
        long j;
        ?? r18;
        ?? r17;
        long j2;
        String string;
        int i2;
        zzbf zzbfVarCreateFromParcel;
        zzah zzahVarCreateFromParcel;
        zzpl zzplVarCreateFromParcel;
        String str = "entry";
        String str2 = ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY;
        String str3 = "rowid";
        zzg();
        ?? r6 = 0;
        r6 = 0;
        if (!this.d) {
            ArrayList arrayList = new ArrayList();
            zzic zzicVar = this.a;
            Context contextZzaZ = zzicVar.zzaZ();
            zzicVar.zzc();
            if (!contextZzaZ.getDatabasePath("google_app_measurement_local.db").exists()) {
                return arrayList;
            }
            int i3 = 0;
            int i4 = 5;
            int i5 = 0;
            for (int i6 = 5; i5 < i6; i6 = 5) {
                try {
                    B = b();
                    try {
                        if (B == 0) {
                            this.d = true;
                        } else {
                            try {
                                B.beginTransaction();
                                try {
                                    cursorQuery2 = B.query("messages", new String[]{str3}, "type=?", new String[]{ExifInterface.GPS_MEASUREMENT_3D}, null, null, "rowid desc", "1");
                                    try {
                                        long j3 = -1;
                                        if (cursorQuery2.moveToFirst()) {
                                            j = cursorQuery2.getLong(i3);
                                            cursorQuery2.close();
                                        } else {
                                            cursorQuery2.close();
                                            j = -1;
                                        }
                                        if (j != -1) {
                                            String[] strArr = new String[1];
                                            strArr[i3] = String.valueOf(j);
                                            r17 = "rowid<?";
                                            r18 = strArr;
                                        } else {
                                            ?? r19 = r6;
                                            r18 = r19;
                                            r17 = r19;
                                        }
                                        String[] strArr2 = {str3, str2, str};
                                        ?? Zzc = zzicVar.zzc();
                                        int i7 = 1;
                                        zzfx zzfxVar = zzfy.zzaW;
                                        boolean zZzp = Zzc.zzp(r6, zzfxVar);
                                        int i8 = 4;
                                        int i9 = 3;
                                        int i10 = 2;
                                        if (zZzp) {
                                            strArr2 = new String[i6];
                                            strArr2[i3] = str3;
                                            strArr2[1] = str2;
                                            strArr2[2] = str;
                                            strArr2[3] = "app_version";
                                            strArr2[4] = "app_version_int";
                                        }
                                        cursorQuery = B.query("messages", strArr2, r17, r18, null, null, "rowid asc", Integer.toString(100));
                                        while (cursorQuery.moveToNext()) {
                                            try {
                                                j3 = cursorQuery.getLong(i3);
                                                int i11 = cursorQuery.getInt(i7);
                                                byte[] blob = cursorQuery.getBlob(i10);
                                                try {
                                                    if (zzicVar.zzc().zzp(null, zzfxVar)) {
                                                        string = cursorQuery.getString(i9);
                                                        j2 = cursorQuery.getLong(i8);
                                                    } else {
                                                        j2 = 0;
                                                        string = null;
                                                    }
                                                    String str4 = str;
                                                    long j4 = j2;
                                                    str2 = str2;
                                                    if (i11 == 0) {
                                                        str3 = str3;
                                                        try {
                                                            Parcel parcelObtain = Parcel.obtain();
                                                            try {
                                                                str = str4;
                                                                try {
                                                                    try {
                                                                        parcelObtain.unmarshall(blob, 0, blob.length);
                                                                        parcelObtain.setDataPosition(0);
                                                                        zzbh zzbhVarCreateFromParcel = zzbh.CREATOR.createFromParcel(parcelObtain);
                                                                        try {
                                                                            parcelObtain.recycle();
                                                                            if (zzbhVarCreateFromParcel != null) {
                                                                                arrayList.add(new zzgk(zzbhVarCreateFromParcel, string, j4));
                                                                            }
                                                                        } catch (SQLiteDatabaseLockedException unused) {
                                                                            i3 = 0;
                                                                            try {
                                                                                SystemClock.sleep(i4);
                                                                                i4 += 20;
                                                                                if (cursorQuery != null) {
                                                                                    cursorQuery.close();
                                                                                }
                                                                                if (B != 0) {
                                                                                    B.close();
                                                                                }
                                                                                i5++;
                                                                                i3 = i3;
                                                                                str2 = str2;
                                                                                str3 = str3;
                                                                                str = str;
                                                                                r6 = 0;
                                                                            } catch (Throwable th) {
                                                                                th = th;
                                                                                cursor = cursorQuery;
                                                                                r14 = B;
                                                                                if (cursor != null) {
                                                                                    cursor.close();
                                                                                }
                                                                                if (r14 != 0) {
                                                                                    r14.close();
                                                                                }
                                                                                throw th;
                                                                            }
                                                                        } catch (SQLiteFullException e2) {
                                                                            e = e2;
                                                                            i3 = 0;
                                                                            zzicVar.zzaW().zzb().zzb("Error reading entries from local database", e);
                                                                            this.d = true;
                                                                            if (cursorQuery != null) {
                                                                                cursorQuery.close();
                                                                            }
                                                                            if (B != 0) {
                                                                                B.close();
                                                                            }
                                                                            i5++;
                                                                            i3 = i3;
                                                                            str2 = str2;
                                                                            str3 = str3;
                                                                            str = str;
                                                                            r6 = 0;
                                                                        } catch (SQLiteException e3) {
                                                                            e = e3;
                                                                            i3 = 0;
                                                                            if (B != 0) {
                                                                                B.endTransaction();
                                                                            }
                                                                            zzicVar.zzaW().zzb().zzb("Error reading entries from local database", e);
                                                                            this.d = true;
                                                                            if (cursorQuery != null) {
                                                                                cursorQuery.close();
                                                                            }
                                                                            if (B != 0) {
                                                                                B.close();
                                                                            }
                                                                            i5++;
                                                                            i3 = i3;
                                                                            str2 = str2;
                                                                            str3 = str3;
                                                                            str = str;
                                                                            r6 = 0;
                                                                        }
                                                                    } catch (Throwable th2) {
                                                                        th = th2;
                                                                        parcelObtain.recycle();
                                                                        throw th;
                                                                    }
                                                                } catch (SafeParcelReader.ParseException unused2) {
                                                                    zzicVar.zzaW().zzb().zza("Failed to load event from local database");
                                                                    parcelObtain.recycle();
                                                                }
                                                            } catch (SafeParcelReader.ParseException unused3) {
                                                                str = str4;
                                                            } catch (Throwable th3) {
                                                                th = th3;
                                                            }
                                                        } catch (SQLiteDatabaseLockedException unused4) {
                                                            str = str4;
                                                        } catch (SQLiteFullException e4) {
                                                            e = e4;
                                                            str = str4;
                                                        } catch (SQLiteException e5) {
                                                            e = e5;
                                                            str = str4;
                                                        }
                                                    } else {
                                                        str3 = str3;
                                                        str = str4;
                                                        if (i11 == 1) {
                                                            Parcel parcelObtain2 = Parcel.obtain();
                                                            try {
                                                                try {
                                                                    parcelObtain2.unmarshall(blob, 0, blob.length);
                                                                    parcelObtain2.setDataPosition(0);
                                                                    zzplVarCreateFromParcel = zzpl.CREATOR.createFromParcel(parcelObtain2);
                                                                    parcelObtain2.recycle();
                                                                } catch (Throwable th4) {
                                                                    parcelObtain2.recycle();
                                                                    throw th4;
                                                                }
                                                            } catch (SafeParcelReader.ParseException unused5) {
                                                                zzicVar.zzaW().zzb().zza("Failed to load user property from local database");
                                                                parcelObtain2.recycle();
                                                                zzplVarCreateFromParcel = null;
                                                            }
                                                            if (zzplVarCreateFromParcel != null) {
                                                                arrayList.add(new zzgk(zzplVarCreateFromParcel, string, j4));
                                                            }
                                                        } else {
                                                            if (i11 == 2) {
                                                                Parcel parcelObtain3 = Parcel.obtain();
                                                                try {
                                                                    try {
                                                                        parcelObtain3.unmarshall(blob, 0, blob.length);
                                                                        parcelObtain3.setDataPosition(0);
                                                                        zzahVarCreateFromParcel = zzah.CREATOR.createFromParcel(parcelObtain3);
                                                                        parcelObtain3.recycle();
                                                                    } catch (Throwable th5) {
                                                                        parcelObtain3.recycle();
                                                                        throw th5;
                                                                    }
                                                                } catch (SafeParcelReader.ParseException unused6) {
                                                                    zzicVar.zzaW().zzb().zza("Failed to load conditional user property from local database");
                                                                    parcelObtain3.recycle();
                                                                    zzahVarCreateFromParcel = null;
                                                                }
                                                                if (zzahVarCreateFromParcel != null) {
                                                                    arrayList.add(new zzgk(zzahVarCreateFromParcel, string, j4));
                                                                }
                                                            } else if (i11 == 4) {
                                                                Parcel parcelObtain4 = Parcel.obtain();
                                                                try {
                                                                    i3 = 0;
                                                                    try {
                                                                        try {
                                                                            parcelObtain4.unmarshall(blob, 0, blob.length);
                                                                            parcelObtain4.setDataPosition(0);
                                                                            zzbfVarCreateFromParcel = zzbf.CREATOR.createFromParcel(parcelObtain4);
                                                                            try {
                                                                                parcelObtain4.recycle();
                                                                                if (zzbfVarCreateFromParcel != null) {
                                                                                    arrayList.add(new zzgk(zzbfVarCreateFromParcel, string, j4));
                                                                                }
                                                                                i2 = 3;
                                                                            } catch (SQLiteDatabaseLockedException unused7) {
                                                                                SystemClock.sleep(i4);
                                                                                i4 += 20;
                                                                                if (cursorQuery != null) {
                                                                                    cursorQuery.close();
                                                                                }
                                                                                if (B != 0) {
                                                                                    B.close();
                                                                                }
                                                                                i5++;
                                                                                i3 = i3;
                                                                                str2 = str2;
                                                                                str3 = str3;
                                                                                str = str;
                                                                                r6 = 0;
                                                                            } catch (SQLiteFullException e6) {
                                                                                e = e6;
                                                                                zzicVar.zzaW().zzb().zzb("Error reading entries from local database", e);
                                                                                this.d = true;
                                                                                if (cursorQuery != null) {
                                                                                    cursorQuery.close();
                                                                                }
                                                                                if (B != 0) {
                                                                                    B.close();
                                                                                }
                                                                                i5++;
                                                                                i3 = i3;
                                                                                str2 = str2;
                                                                                str3 = str3;
                                                                                str = str;
                                                                                r6 = 0;
                                                                            } catch (SQLiteException e7) {
                                                                                e = e7;
                                                                                if (B != 0 && B.inTransaction()) {
                                                                                    B.endTransaction();
                                                                                }
                                                                                zzicVar.zzaW().zzb().zzb("Error reading entries from local database", e);
                                                                                this.d = true;
                                                                                if (cursorQuery != null) {
                                                                                    cursorQuery.close();
                                                                                }
                                                                                if (B != 0) {
                                                                                    B.close();
                                                                                }
                                                                                i5++;
                                                                                i3 = i3;
                                                                                str2 = str2;
                                                                                str3 = str3;
                                                                                str = str;
                                                                                r6 = 0;
                                                                            }
                                                                        } catch (Throwable th6) {
                                                                            th = th6;
                                                                            parcelObtain4.recycle();
                                                                            throw th;
                                                                        }
                                                                    } catch (SafeParcelReader.ParseException unused8) {
                                                                        zzicVar.zzaW().zzb().zza("Failed to load default event parameters from local database");
                                                                        parcelObtain4.recycle();
                                                                        zzbfVarCreateFromParcel = null;
                                                                    }
                                                                } catch (SafeParcelReader.ParseException unused9) {
                                                                    i3 = 0;
                                                                } catch (Throwable th7) {
                                                                    th = th7;
                                                                }
                                                            } else {
                                                                i2 = 3;
                                                                i3 = 0;
                                                                if (i11 == 3) {
                                                                    zzicVar.zzaW().zzk().zza("Skipping app launch break");
                                                                } else {
                                                                    zzicVar.zzaW().zzb().zza("Unknown record type in local database");
                                                                }
                                                            }
                                                            i9 = i2;
                                                            i3 = i3;
                                                            str2 = str2;
                                                            str3 = str3;
                                                            str = str;
                                                            i7 = 1;
                                                            i10 = 2;
                                                            i8 = 4;
                                                        }
                                                    }
                                                    i2 = 3;
                                                    i3 = 0;
                                                    i9 = i2;
                                                    i3 = i3;
                                                    str2 = str2;
                                                    str3 = str3;
                                                    str = str;
                                                    i7 = 1;
                                                    i10 = 2;
                                                    i8 = 4;
                                                } catch (SQLiteDatabaseLockedException unused10) {
                                                    str = str;
                                                    str2 = str2;
                                                    str3 = str3;
                                                } catch (SQLiteFullException e8) {
                                                    e = e8;
                                                    str = str;
                                                    str2 = str2;
                                                    str3 = str3;
                                                } catch (SQLiteException e9) {
                                                    e = e9;
                                                    str = str;
                                                    str2 = str2;
                                                    str3 = str3;
                                                }
                                            } catch (SQLiteDatabaseLockedException unused11) {
                                                str = str;
                                                str2 = str2;
                                                str3 = str3;
                                                i3 = i3;
                                            } catch (SQLiteFullException e10) {
                                                e = e10;
                                                str = str;
                                                str2 = str2;
                                                str3 = str3;
                                                i3 = i3;
                                            } catch (SQLiteException e11) {
                                                e = e11;
                                                str = str;
                                                str2 = str2;
                                                str3 = str3;
                                                i3 = i3;
                                            }
                                        }
                                        if (B.delete("messages", "rowid <= ?", new String[]{Long.toString(j3)}) < arrayList.size()) {
                                            zzicVar.zzaW().zzb().zza("Fewer entries removed from local database than expected");
                                        }
                                        B.setTransactionSuccessful();
                                        B.endTransaction();
                                        cursorQuery.close();
                                        B.close();
                                        return arrayList;
                                    } catch (Throwable th8) {
                                        th = th8;
                                        if (cursorQuery2 != null) {
                                            try {
                                                cursorQuery2.close();
                                            } catch (SQLiteDatabaseLockedException unused12) {
                                                cursorQuery = null;
                                                SystemClock.sleep(i4);
                                                i4 += 20;
                                                if (cursorQuery != null) {
                                                    cursorQuery.close();
                                                }
                                                if (B != 0) {
                                                    B.close();
                                                }
                                                i5++;
                                                i3 = i3;
                                                str2 = str2;
                                                str3 = str3;
                                                str = str;
                                                r6 = 0;
                                            } catch (SQLiteFullException e12) {
                                                e = e12;
                                                B = B;
                                                cursorQuery = null;
                                                zzicVar.zzaW().zzb().zzb("Error reading entries from local database", e);
                                                this.d = true;
                                                if (cursorQuery != null) {
                                                    cursorQuery.close();
                                                }
                                                if (B != 0) {
                                                    B.close();
                                                }
                                                i5++;
                                                i3 = i3;
                                                str2 = str2;
                                                str3 = str3;
                                                str = str;
                                                r6 = 0;
                                            } catch (SQLiteException e13) {
                                                e = e13;
                                                B = B;
                                                cursorQuery = null;
                                                if (B != 0) {
                                                    B.endTransaction();
                                                }
                                                zzicVar.zzaW().zzb().zzb("Error reading entries from local database", e);
                                                this.d = true;
                                                if (cursorQuery != null) {
                                                    cursorQuery.close();
                                                }
                                                if (B != 0) {
                                                    B.close();
                                                }
                                                i5++;
                                                i3 = i3;
                                                str2 = str2;
                                                str3 = str3;
                                                str = str;
                                                r6 = 0;
                                            }
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th9) {
                                    th = th9;
                                    cursorQuery2 = null;
                                }
                            } catch (SQLiteDatabaseLockedException unused13) {
                                str = str;
                                str2 = str2;
                                str3 = str3;
                                i3 = i3;
                            } catch (SQLiteFullException e14) {
                                e = e14;
                                str = str;
                                str2 = str2;
                                str3 = str3;
                                i3 = i3;
                                B = B;
                            } catch (SQLiteException e15) {
                                e = e15;
                                str = str;
                                str2 = str2;
                                str3 = str3;
                                i3 = i3;
                                B = B;
                            }
                        }
                    } catch (Throwable th10) {
                        th = th10;
                        cursor = null;
                        r14 = B;
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (r14 != 0) {
                            r14.close();
                        }
                        throw th;
                    }
                } catch (SQLiteDatabaseLockedException unused14) {
                    str = str;
                    str2 = str2;
                    str3 = str3;
                    i3 = i3;
                    B = 0;
                } catch (SQLiteFullException e16) {
                    e = e16;
                    str = str;
                    str2 = str2;
                    str3 = str3;
                    i3 = i3;
                    B = 0;
                } catch (SQLiteException e17) {
                    e = e17;
                    str = str;
                    str2 = str2;
                    str3 = str3;
                    i3 = i3;
                    B = 0;
                } catch (Throwable th11) {
                    th = th11;
                    cursor = null;
                    r14 = 0;
                }
            }
            xp.h(zzicVar, "Failed to read events from database in reasonable time");
            return null;
        }
        return r6;
    }

    public final boolean zzn() {
        return c(3, new byte[0]);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0074 A[PHI: r5
      0x0074: PHI (r5v3 int) = (r5v1 int), (r5v1 int), (r5v4 int) binds: [B:25:0x006b, B:32:0x0086, B:28:0x0072] A[DONT_GENERATE, DONT_INLINE]] */
    public final boolean zzo() {
        zzg();
        if (!this.d) {
            zzic zzicVar = this.a;
            Context contextZzaZ = zzicVar.zzaZ();
            zzicVar.zzc();
            if (contextZzaZ.getDatabasePath("google_app_measurement_local.db").exists()) {
                int i = 5;
                for (int i2 = 0; i2 < 5; i2++) {
                    SQLiteDatabase sQLiteDatabase = null;
                    try {
                        SQLiteDatabase sQLiteDatabaseB = b();
                        if (sQLiteDatabaseB != null) {
                            sQLiteDatabaseB.beginTransaction();
                            sQLiteDatabaseB.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                            sQLiteDatabaseB.setTransactionSuccessful();
                            sQLiteDatabaseB.endTransaction();
                            sQLiteDatabaseB.close();
                            return true;
                        }
                        this.d = true;
                    } catch (SQLiteDatabaseLockedException unused) {
                        SystemClock.sleep(i);
                        i += 20;
                        if (0 != 0) {
                            sQLiteDatabase.close();
                        }
                    } catch (SQLiteFullException e2) {
                        zzicVar.zzaW().zzb().zzb("Error deleting app launch break from local database", e2);
                        this.d = true;
                        if (0 != 0) {
                            sQLiteDatabase.close();
                        }
                    } catch (SQLiteException e3) {
                        if (0 != 0) {
                            try {
                                if (sQLiteDatabase.inTransaction()) {
                                    sQLiteDatabase.endTransaction();
                                }
                            } catch (Throwable th) {
                                if (0 != 0) {
                                    sQLiteDatabase.close();
                                }
                                throw th;
                            }
                        }
                        zzicVar.zzaW().zzb().zzb("Error deleting app launch break from local database", e3);
                        this.d = true;
                        if (0 != 0) {
                            sQLiteDatabase.close();
                        }
                    }
                }
                xp.h(zzicVar, "Error deleting app launch break from local database in reasonable time");
            }
        }
        return false;
    }
}
