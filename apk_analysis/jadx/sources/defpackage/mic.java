package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzhr;
import com.google.android.gms.internal.measurement.zzhs;
import com.google.android.gms.internal.measurement.zzhw;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzpk;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class mic {
    public zzhs a;
    public Long b;
    public long c;
    public final /* synthetic */ zqa d;

    public /* synthetic */ mic(zqa zqaVar) {
        Objects.requireNonNull(zqaVar);
        this.d = zqaVar;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00fc A[PHI: r6 r16 r17
      0x00fc: PHI (r6v4 android.database.Cursor) = (r6v3 android.database.Cursor), (r6v6 android.database.Cursor) binds: [B:62:0x0124, B:49:0x00f5] A[DONT_GENERATE, DONT_INLINE]
      0x00fc: PHI (r16v5 com.google.android.gms.internal.measurement.zzhs) = (r16v3 com.google.android.gms.internal.measurement.zzhs), (r16v10 com.google.android.gms.internal.measurement.zzhs) binds: [B:62:0x0124, B:49:0x00f5] A[DONT_GENERATE, DONT_INLINE]
      0x00fc: PHI (r17v4 long) = (r17v2 long), (r17v7 long) binds: [B:62:0x0124, B:49:0x00f5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    public final zzhs a(zzhs zzhsVar, String str) {
        Cursor cursor;
        zzhs zzhsVar2;
        long j;
        Cursor cursorRawQuery;
        Pair pair;
        Object obj;
        Pair pair2;
        String strZzd = zzhsVar.zzd();
        List listZza = zzhsVar.zza();
        zqa zqaVar = this.d;
        zzpg zzpgVar = zqaVar.b;
        zzpg zzpgVar2 = zqaVar.b;
        zzic zzicVar = zqaVar.a;
        zzpgVar.zzp();
        zzhw zzhwVarG = zzpk.g(zzhsVar, "_eid");
        Long l = (Long) (zzhwVarG == null ? null : zzpk.o(zzhwVarG));
        if (l != null) {
            if (strZzd.equals("_ep")) {
                Preconditions.checkNotNull(l);
                zzpgVar.zzp();
                zzhw zzhwVarG2 = zzpk.g(zzhsVar, "_en");
                String str2 = (String) (zzhwVarG2 == null ? null : zzpk.o(zzhwVarG2));
                if (TextUtils.isEmpty(str2)) {
                    zzicVar.zzaW().zzc().zzb("Extra parameter without an event name. eventId", l);
                    return null;
                }
                if (this.a == null || this.b == null || l.longValue() != this.b.longValue()) {
                    kva kvaVarZzj = zzpgVar.zzj();
                    kvaVarZzj.zzg();
                    zzic zzicVar2 = kvaVarZzj.a;
                    kvaVarZzj.a();
                    try {
                        cursorRawQuery = kvaVarZzj.M().rawQuery("select main_event, children_to_process from main_event_params where app_id=? and event_id=?", new String[]{str, l.toString()});
                        try {
                            try {
                                if (cursorRawQuery.moveToFirst()) {
                                    zzhsVar2 = null;
                                    try {
                                        try {
                                            Pair pairCreate = Pair.create((zzhs) ((zzhr) zzpk.H(zzhs.zzp(), cursorRawQuery.getBlob(0))).zzbd(), Long.valueOf(cursorRawQuery.getLong(1)));
                                            cursorRawQuery.close();
                                            pair2 = pairCreate;
                                        } catch (IOException e) {
                                            j = 0;
                                            try {
                                                zzicVar2.zzaW().zzb().zzd("Failed to merge main event. appId, eventId", zzgu.d(str), l, e);
                                            } catch (SQLiteException e2) {
                                                e = e2;
                                                zzicVar2.zzaW().zzb().zzb("Error selecting main event", e);
                                                if (cursorRawQuery != null) {
                                                    cursorRawQuery.close();
                                                }
                                                pair = zzhsVar2;
                                                if (pair != 0) {
                                                }
                                                zzicVar.zzaW().zzc().zzc("Extra parameter without existing main event. eventName, eventId", str2, l);
                                                return zzhsVar2;
                                            }
                                            cursorRawQuery.close();
                                            pair = zzhsVar2;
                                        }
                                    } catch (SQLiteException e3) {
                                        e = e3;
                                        j = 0;
                                        zzicVar2.zzaW().zzb().zzb("Error selecting main event", e);
                                        if (cursorRawQuery != null) {
                                            cursorRawQuery.close();
                                        }
                                        pair = zzhsVar2;
                                    }
                                } else {
                                    zzicVar2.zzaW().zzk().zza("Main event not found");
                                    cursorRawQuery.close();
                                    pair2 = null;
                                    zzhsVar2 = null;
                                }
                                j = 0;
                                pair = pair2;
                            } catch (SQLiteException e4) {
                                e = e4;
                                zzhsVar2 = null;
                            }
                        } catch (Throwable th) {
                            th = th;
                            cursor = cursorRawQuery;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    } catch (SQLiteException e5) {
                        e = e5;
                        zzhsVar2 = null;
                        j = 0;
                        cursorRawQuery = null;
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = null;
                    }
                    if (pair != 0 || (obj = pair.first) == null) {
                        zzicVar.zzaW().zzc().zzc("Extra parameter without existing main event. eventName, eventId", str2, l);
                        return zzhsVar2;
                    }
                    this.a = (zzhs) obj;
                    this.c = ((Long) pair.second).longValue();
                    zzpgVar2.zzp();
                    this.b = (Long) zzpk.i(this.a, "_eid");
                } else {
                    j = 0;
                }
                long j2 = this.c - 1;
                this.c = j2;
                if (j2 <= j) {
                    kva kvaVarZzj2 = zzpgVar2.zzj();
                    kvaVarZzj2.zzg();
                    zzic zzicVar3 = kvaVarZzj2.a;
                    zzicVar3.zzaW().zzk().zzb("Clearing complex main event info. appId", str);
                    try {
                        kvaVarZzj2.M().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                    } catch (SQLiteException e6) {
                        zzicVar3.zzaW().zzb().zzb("Error clearing complex main event", e6);
                    }
                } else {
                    zzpgVar2.zzj().p(str, l, this.c, this.a);
                }
                ArrayList arrayList = new ArrayList();
                for (zzhw zzhwVar : this.a.zza()) {
                    zzpgVar2.zzp();
                    if (zzpk.g(zzhsVar, zzhwVar.zzb()) == null) {
                        arrayList.add(zzhwVar);
                    }
                }
                if (arrayList.isEmpty()) {
                    zzicVar.zzaW().zzc().zzb("No unique parameters in main event. eventName", str2);
                } else {
                    arrayList.addAll(listZza);
                    listZza = arrayList;
                }
                strZzd = str2;
            } else {
                this.b = l;
                this.a = zzhsVar;
                zzpgVar.zzp();
                zzhw zzhwVarG3 = zzpk.g(zzhsVar, "_epc");
                Serializable serializableO = zzhwVarG3 == null ? null : zzpk.o(zzhwVarG3);
                long jLongValue = ((Long) (serializableO != null ? serializableO : 0L)).longValue();
                this.c = jLongValue;
                if (jLongValue <= 0) {
                    zzicVar.zzaW().zzc().zzb("Complex event with zero extra param count. eventName", strZzd);
                } else {
                    zzpgVar.zzj().p(str, (Long) Preconditions.checkNotNull(l), this.c, zzhsVar);
                }
            }
        }
        zzhr zzhrVar = (zzhr) zzhsVar.zzco();
        zzhrVar.zzl(strZzd);
        zzhrVar.zzi();
        zzhrVar.zzh(listZza);
        return (zzhs) zzhrVar.zzbd();
    }
}
