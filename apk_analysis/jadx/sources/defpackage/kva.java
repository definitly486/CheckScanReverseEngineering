package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.collection.SieveCacheKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.tracing.Trace;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzahk;
import com.google.android.gms.internal.measurement.zzaif;
import com.google.android.gms.internal.measurement.zzfa;
import com.google.android.gms.internal.measurement.zzfb;
import com.google.android.gms.internal.measurement.zzhr;
import com.google.android.gms.internal.measurement.zzhs;
import com.google.android.gms.internal.measurement.zzhw;
import com.google.android.gms.internal.measurement.zzhz;
import com.google.android.gms.internal.measurement.zzib;
import com.google.android.gms.internal.measurement.zzid;
import com.google.android.gms.internal.measurement.zziu;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzah;
import com.google.android.gms.measurement.internal.zzal;
import com.google.android.gms.measurement.internal.zzar;
import com.google.android.gms.measurement.internal.zzau;
import com.google.android.gms.measurement.internal.zzbc;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzfx;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzgv;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzjl;
import com.google.android.gms.measurement.internal.zzls;
import com.google.android.gms.measurement.internal.zzoh;
import com.google.android.gms.measurement.internal.zzoo;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzpj;
import com.google.android.gms.measurement.internal.zzpk;
import com.google.android.gms.measurement.internal.zzpl;
import com.google.android.gms.measurement.internal.zzpp;
import com.tapjoy.TJVerifierKt;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class kva extends lac {
    public static final String[] f = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};
    public static final String[] g = {"associated_row_id", "ALTER TABLE upload_queue ADD COLUMN associated_row_id INTEGER;", "last_upload_timestamp", "ALTER TABLE upload_queue ADD COLUMN last_upload_timestamp INTEGER;"};
    public static final String[] h = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    public static final String[] i = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;", "sgtm_upload_enabled", "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;", "target_os_version", "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;", "session_stitching_token_hash", "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;", "ad_services_version", "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;", "unmatched_first_open_without_ad_id", "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;", "npa_metadata_value", "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;", "attribution_eligibility_status", "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;", "sgtm_preview_key", "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;", "dma_consent_state", "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;", "daily_realtime_dcu_count", "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;", "bundle_delivery_index", "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;", "serialized_npa_metadata", "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;", "unmatched_pfo", "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;", "unmatched_uwa", "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;", "ad_campaign_info", "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;", "daily_registered_triggers_count", "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;", "client_upload_eligibility", "ALTER TABLE apps ADD COLUMN client_upload_eligibility INTEGER;", "gmp_version_for_remote_config", "ALTER TABLE apps ADD COLUMN gmp_version_for_remote_config INTEGER;", "last_diagnostics_signal_upload_timestamp", "ALTER TABLE apps ADD COLUMN last_diagnostics_signal_upload_timestamp INTEGER;"};
    public static final String[] j = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;", "elapsed_time", "ALTER TABLE raw_events ADD COLUMN elapsed_time INTEGER;"};
    public static final String[] k = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    public static final String[] l = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};
    public static final String[] m = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    public static final String[] n = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    public static final String[] o = {"consent_source", "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;", "dma_consent_settings", "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;", "storage_consent_at_bundling", "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"};
    public static final String[] p = {"idempotent", "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"};
    public final hva d;
    public final o9c e;

    public kva(zzpg zzpgVar) {
        super(zzpgVar);
        this.e = new o9c(this.a.zzba());
        this.a.zzc();
        this.d = new hva(this, this.a.zzaZ());
    }

    public static final String C(List list) {
        return list.isEmpty() ? "" : me0.c(" AND (upload_type IN (", TextUtils.join(", ", list), "))");
    }

    public static final void K(ContentValues contentValues, Object obj) {
        Preconditions.checkNotEmpty("value");
        Preconditions.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put("value", (String) obj);
            return;
        }
        if (obj instanceof Long) {
            contentValues.put("value", (Long) obj);
        } else if (obj instanceof Double) {
            contentValues.put("value", (Double) obj);
        } else {
            fg.c("Invalid value type");
        }
    }

    public final zzpj A(String str, long j2, byte[] bArr, String str2, String str3, int i2, int i3, long j3, long j4, long j5) {
        boolean zIsEmpty = TextUtils.isEmpty(str2);
        zzic zzicVar = this.a;
        if (zIsEmpty) {
            zzicVar.zzaW().zzj().zza("Upload uri is null or empty. Destination is unknown. Dropping batch. ");
            return null;
        }
        try {
            zzhz zzhzVar = (zzhz) zzpk.H(zzib.zzi(), bArr);
            zzls zzlsVarZzb = zzls.zzb(i2);
            if (zzlsVarZzb != zzls.GOOGLE_SIGNAL && zzlsVarZzb != zzls.GOOGLE_SIGNAL_PENDING && i3 > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator it = zzhzVar.zza().iterator();
                while (it.hasNext()) {
                    com.google.android.gms.internal.measurement.zzic zzicVar2 = (com.google.android.gms.internal.measurement.zzic) ((zzid) it.next()).zzco();
                    zzicVar2.zzao(i3);
                    arrayList.add((zzid) zzicVar2.zzbd());
                }
                zzhzVar.zzg();
                zzhzVar.zzf(arrayList);
            }
            HashMap map = new HashMap();
            if (str3 != null) {
                for (String str4 : str3.split("\r\n")) {
                    if (str4.isEmpty()) {
                        break;
                    }
                    String[] strArrSplit = str4.split("=", 2);
                    if (strArrSplit.length != 2) {
                        zzicVar.zzaW().zzb().zzb("Invalid upload header: ", str4);
                        break;
                    }
                    map.put(strArrSplit[0], strArrSplit[1]);
                }
            }
            return new zzpj(j2, (zzib) zzhzVar.zzbd(), str2, map, zzlsVarZzb, j3, j4, j5, i3);
        } catch (IOException e) {
            zzicVar.zzaW().zzb().zzc("Failed to queued MeasurementBatch from upload_queue. appId", str, e);
            return null;
        }
    }

    public final String B() {
        zzic zzicVar = this.a;
        long jCurrentTimeMillis = zzicVar.zzba().currentTimeMillis();
        Locale locale = Locale.US;
        zzls zzlsVar = zzls.GOOGLE_SIGNAL;
        int iZza = zzlsVar.zza();
        zzicVar.zzc();
        Long l2 = (Long) zzfy.zzS.zzb(null);
        l2.longValue();
        String str = "(upload_type = " + iZza + " AND ABS(creation_timestamp - " + jCurrentTimeMillis + ") > " + l2 + ")";
        int iZza2 = zzlsVar.zza();
        zzicVar.zzc();
        String str2 = "(upload_type != " + iZza2 + " AND ABS(creation_timestamp - " + jCurrentTimeMillis + ") > " + zzal.zzI() + ")";
        StringBuilder sb = new StringBuilder(str.length() + 5 + str2.length() + 1);
        kv2.c(sb, "(", str, " OR ", str2);
        sb.append(")");
        return sb.toString();
    }

    public final void D(String str, zzjl zzjlVar) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzjlVar);
        zzg();
        a();
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, str);
        contentValues.put("consent_state", zzjlVar.zzl());
        contentValues.put("consent_source", Integer.valueOf(zzjlVar.zzb()));
        w(contentValues);
    }

    public final List E(String str) {
        List list;
        zzic zzicVar = this.a;
        zzg();
        a();
        ArrayList arrayList = new ArrayList();
        try {
            SQLiteDatabase sQLiteDatabaseM = M();
            sQLiteDatabaseM.beginTransaction();
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = sQLiteDatabaseM.query("diagnostic_signals", new String[]{"signal_name", TtmlNode.TAG_METADATA, "count"}, "app_id=?", new String[]{str}, null, null, "rowid", null);
                    if (cursorQuery.moveToFirst()) {
                        boolean zIsEmpty = str.isEmpty();
                        do {
                            String string = cursorQuery.getString(0);
                            String str2 = cursorQuery.isNull(1) ? "" : (String) Preconditions.checkNotNull(cursorQuery.getString(1));
                            if (string == null) {
                                zzicVar.zzaW().zzb().zzb("Read null value from diagnostic signals table, ignoring it. appId", zzgu.d(str));
                            } else {
                                long j2 = cursorQuery.getLong(2);
                                zzfa zzfaVarZza = zzfb.zza();
                                zzfaVarZza.zza(string);
                                zzfaVarZza.zzd(j2);
                                zzfaVarZza.zzc(str2);
                                if (zIsEmpty) {
                                    zzfaVarZza.zzb(true);
                                }
                                arrayList.add((zzfb) zzfaVarZza.zzbd());
                            }
                        } while (cursorQuery.moveToNext());
                        sQLiteDatabaseM.delete("diagnostic_signals", "app_id=?", new String[]{str});
                        sQLiteDatabaseM.setTransactionSuccessful();
                        list = arrayList;
                    } else {
                        sQLiteDatabaseM.setTransactionSuccessful();
                    }
                } catch (SQLiteException e) {
                    zzicVar.zzaW().zzb().zzc("Error querying or deleting diagnostic signals. appId", zzgu.d(str), e);
                    list = Collections.EMPTY_LIST;
                }
                if (cursorQuery != null) {
                    list = arrayList;
                    cursorQuery.close();
                }
                list = arrayList;
                sQLiteDatabaseM.endTransaction();
                return list;
            } catch (Throwable th) {
                if (0 != 0) {
                    cursorQuery.close();
                }
                sQLiteDatabaseM.endTransaction();
                throw th;
            }
        } catch (SQLiteException e2) {
            zzicVar.zzaW().zzb().zzc("Error opening database for diagnostic signals. appId", zzgu.d(str), e2);
            return Collections.EMPTY_LIST;
        }
    }

    public final void F(String str, zzjl zzjlVar) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzjlVar);
        zzg();
        a();
        D(str, r(str));
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, str);
        contentValues.put("storage_consent_at_bundling", zzjlVar.zzl());
        w(contentValues);
    }

    public final zzjl G(String str) {
        Preconditions.checkNotNull(str);
        zzg();
        a();
        return zzjl.zzf(v("select storage_consent_at_bundling from consent_settings where app_id=? limit 1;", new String[]{str}), 100);
    }

    public final qwa H(String str, zzhs zzhsVar, String str2) {
        qwa qwaVarX = x("events", str, zzhsVar.zzd());
        if (qwaVarX == null) {
            zzic zzicVar = this.a;
            zzicVar.zzaW().zze().zzc("Event aggregate wasn't created during raw event logging. appId, event", zzgu.d(str), zzicVar.zzl().a(str2));
            return new qwa(str, zzhsVar.zzd(), 1L, 1L, 1L, zzhsVar.zzf(), 0L, null, null, null, null);
        }
        long j2 = qwaVarX.e + 1;
        long j3 = qwaVarX.d + 1;
        return new qwa(qwaVarX.a, qwaVarX.b, qwaVarX.c + 1, j3, j2, qwaVarX.f, qwaVarX.g, qwaVarX.h, qwaVarX.i, qwaVarX.j, qwaVarX.k);
    }

    public final boolean I() {
        zzic zzicVar = this.a;
        Context contextZzaZ = zzicVar.zzaZ();
        zzicVar.zzc();
        return contextZzaZ.getDatabasePath("google_app_measurement.db").exists();
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00f0 A[Catch: all -> 0x007a, SQLiteException -> 0x007d, TryCatch #5 {all -> 0x007a, blocks: (B:3:0x0018, B:8:0x002c, B:14:0x004a, B:15:0x0066, B:18:0x006e, B:19:0x0072, B:40:0x00ca, B:42:0x00f0, B:43:0x0103, B:44:0x0107, B:45:0x0117, B:47:0x011d, B:48:0x012e, B:60:0x015f, B:63:0x0167, B:64:0x0172, B:66:0x0192, B:67:0x01a0, B:68:0x01aa, B:73:0x01db, B:72:0x01ca, B:76:0x01e2, B:53:0x014c, B:78:0x01f5, B:82:0x0209, B:11:0x003e, B:29:0x0089, B:31:0x008f, B:35:0x009e, B:38:0x00c2, B:32:0x0094), top: B:93:0x0018 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x0103 A[Catch: all -> 0x007a, SQLiteException -> 0x007d, TRY_LEAVE, TryCatch #5 {all -> 0x007a, blocks: (B:3:0x0018, B:8:0x002c, B:14:0x004a, B:15:0x0066, B:18:0x006e, B:19:0x0072, B:40:0x00ca, B:42:0x00f0, B:43:0x0103, B:44:0x0107, B:45:0x0117, B:47:0x011d, B:48:0x012e, B:60:0x015f, B:63:0x0167, B:64:0x0172, B:66:0x0192, B:67:0x01a0, B:68:0x01aa, B:73:0x01db, B:72:0x01ca, B:76:0x01e2, B:53:0x014c, B:78:0x01f5, B:82:0x0209, B:11:0x003e, B:29:0x0089, B:31:0x008f, B:35:0x009e, B:38:0x00c2, B:32:0x0094), top: B:93:0x0018 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x011d A[Catch: all -> 0x007a, SQLiteException -> 0x007d, TryCatch #5 {all -> 0x007a, blocks: (B:3:0x0018, B:8:0x002c, B:14:0x004a, B:15:0x0066, B:18:0x006e, B:19:0x0072, B:40:0x00ca, B:42:0x00f0, B:43:0x0103, B:44:0x0107, B:45:0x0117, B:47:0x011d, B:48:0x012e, B:60:0x015f, B:63:0x0167, B:64:0x0172, B:66:0x0192, B:67:0x01a0, B:68:0x01aa, B:73:0x01db, B:72:0x01ca, B:76:0x01e2, B:53:0x014c, B:78:0x01f5, B:82:0x0209, B:11:0x003e, B:29:0x0089, B:31:0x008f, B:35:0x009e, B:38:0x00c2, B:32:0x0094), top: B:93:0x0018 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x0146  */
    /* JADX WARN: Code duplicated, block: B:52:0x014a  */
    /* JADX WARN: Code duplicated, block: B:53:0x014c A[Catch: all -> 0x007a, SQLiteException -> 0x007d, TryCatch #5 {all -> 0x007a, blocks: (B:3:0x0018, B:8:0x002c, B:14:0x004a, B:15:0x0066, B:18:0x006e, B:19:0x0072, B:40:0x00ca, B:42:0x00f0, B:43:0x0103, B:44:0x0107, B:45:0x0117, B:47:0x011d, B:48:0x012e, B:60:0x015f, B:63:0x0167, B:64:0x0172, B:66:0x0192, B:67:0x01a0, B:68:0x01aa, B:73:0x01db, B:72:0x01ca, B:76:0x01e2, B:53:0x014c, B:78:0x01f5, B:82:0x0209, B:11:0x003e, B:29:0x0089, B:31:0x008f, B:35:0x009e, B:38:0x00c2, B:32:0x0094), top: B:93:0x0018 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0155  */
    /* JADX WARN: Code duplicated, block: B:61:0x0164 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:62:0x0166  */
    /* JADX WARN: Code duplicated, block: B:66:0x0192 A[Catch: all -> 0x007a, SQLiteException -> 0x007d, LOOP:0: B:66:0x0192->B:101:?, LOOP_START, TRY_LEAVE, TryCatch #5 {all -> 0x007a, blocks: (B:3:0x0018, B:8:0x002c, B:14:0x004a, B:15:0x0066, B:18:0x006e, B:19:0x0072, B:40:0x00ca, B:42:0x00f0, B:43:0x0103, B:44:0x0107, B:45:0x0117, B:47:0x011d, B:48:0x012e, B:60:0x015f, B:63:0x0167, B:64:0x0172, B:66:0x0192, B:67:0x01a0, B:68:0x01aa, B:73:0x01db, B:72:0x01ca, B:76:0x01e2, B:53:0x014c, B:78:0x01f5, B:82:0x0209, B:11:0x003e, B:29:0x0089, B:31:0x008f, B:35:0x009e, B:38:0x00c2, B:32:0x0094), top: B:93:0x0018 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x01db A[Catch: all -> 0x007a, SQLiteException -> 0x007d, TryCatch #5 {all -> 0x007a, blocks: (B:3:0x0018, B:8:0x002c, B:14:0x004a, B:15:0x0066, B:18:0x006e, B:19:0x0072, B:40:0x00ca, B:42:0x00f0, B:43:0x0103, B:44:0x0107, B:45:0x0117, B:47:0x011d, B:48:0x012e, B:60:0x015f, B:63:0x0167, B:64:0x0172, B:66:0x0192, B:67:0x01a0, B:68:0x01aa, B:73:0x01db, B:72:0x01ca, B:76:0x01e2, B:53:0x014c, B:78:0x01f5, B:82:0x0209, B:11:0x003e, B:29:0x0089, B:31:0x008f, B:35:0x009e, B:38:0x00c2, B:32:0x0094), top: B:93:0x0018 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x01e2 A[Catch: all -> 0x007a, SQLiteException -> 0x007d, TryCatch #5 {all -> 0x007a, blocks: (B:3:0x0018, B:8:0x002c, B:14:0x004a, B:15:0x0066, B:18:0x006e, B:19:0x0072, B:40:0x00ca, B:42:0x00f0, B:43:0x0103, B:44:0x0107, B:45:0x0117, B:47:0x011d, B:48:0x012e, B:60:0x015f, B:63:0x0167, B:64:0x0172, B:66:0x0192, B:67:0x01a0, B:68:0x01aa, B:73:0x01db, B:72:0x01ca, B:76:0x01e2, B:53:0x014c, B:78:0x01f5, B:82:0x0209, B:11:0x003e, B:29:0x0089, B:31:0x008f, B:35:0x009e, B:38:0x00c2, B:32:0x0094), top: B:93:0x0018 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x01c8 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v5 */
    public final void J(String str, long j2, long j3, mbc mbcVar) {
        ?? IsEmpty;
        ?? string;
        String str2;
        String[] strArr;
        String string2;
        ?? r3;
        long jU;
        long j4;
        String[] strArr2;
        String str3;
        long j5;
        zzhr zzhrVar;
        zzic zzicVar = this.a;
        Preconditions.checkNotNull(mbcVar);
        zzg();
        a();
        Cursor cursorRawQuery = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseM = M();
                IsEmpty = TextUtils.isEmpty(str);
                String str4 = "";
                if (IsEmpty != 0) {
                    String[] strArr3 = j3 != -1 ? new String[]{String.valueOf(j3), String.valueOf(j2)} : new String[]{String.valueOf(j2)};
                    str4 = j3 != -1 ? "rowid <= ? and " : "";
                    StringBuilder sb = new StringBuilder(str4.length() + 148);
                    sb.append("select app_id, metadata_fingerprint from raw_events where ");
                    sb.append(str4);
                    sb.append("app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;");
                    cursorRawQuery = sQLiteDatabaseM.rawQuery(sb.toString(), strArr3);
                    try {
                        if (cursorRawQuery.moveToFirst()) {
                            string = cursorRawQuery.getString(0);
                            try {
                                string2 = cursorRawQuery.getString(1);
                                cursorRawQuery.close();
                                r3 = string;
                                cursorRawQuery = sQLiteDatabaseM.query("raw_events_metadata", new String[]{TtmlNode.TAG_METADATA}, "app_id = ? and metadata_fingerprint = ?", new String[]{r3, string2}, null, null, "rowid", ExifInterface.GPS_MEASUREMENT_2D);
                                if (cursorRawQuery.moveToFirst()) {
                                    try {
                                        zzid zzidVar = (zzid) ((com.google.android.gms.internal.measurement.zzic) zzpk.H(zzid.zzaE(), cursorRawQuery.getBlob(0))).zzbd();
                                        if (cursorRawQuery.moveToNext()) {
                                            zzicVar.zzaW().zze().zzb("Get multiple raw event metadata records, expected one. appId", zzgu.d(r3));
                                        }
                                        cursorRawQuery.close();
                                        Preconditions.checkNotNull(zzidVar);
                                        mbcVar.a = zzidVar;
                                        jU = u("select (rowid - 1) as max_rowid from raw_events where app_id = ? and metadata_fingerprint != ? order by rowid limit 1;", new String[]{r3, string2}, -1L);
                                        if (j3 == -1) {
                                            if (jU != -1) {
                                                j4 = -1;
                                            } else {
                                                str3 = "app_id = ? and metadata_fingerprint = ?";
                                                strArr2 = new String[]{r3, string2};
                                            }
                                            cursorRawQuery = sQLiteDatabaseM.query("raw_events", new String[]{"rowid", "name", TJVerifierKt.TJC_TIMESTAMP, "data", "elapsed_time"}, str3, strArr2, null, null, "rowid", null);
                                            if (cursorRawQuery.moveToFirst()) {
                                                do {
                                                    j5 = cursorRawQuery.getLong(0);
                                                    byte[] blob = cursorRawQuery.getBlob(3);
                                                    long j6 = cursorRawQuery.getLong(4);
                                                    try {
                                                        zzhrVar = (zzhr) zzpk.H(zzhs.zzp(), blob);
                                                        zzhrVar.zzl(cursorRawQuery.getString(1));
                                                        zzhrVar.zzo(cursorRawQuery.getLong(2));
                                                        zzhrVar.zzw(j6);
                                                        if (!mbcVar.a(j5, (zzhs) zzhrVar.zzbd())) {
                                                            break;
                                                        }
                                                    } catch (IOException e) {
                                                        zzicVar.zzaW().zzb().zzc("Data loss. Failed to merge raw event. appId", zzgu.d(r3), e);
                                                    }
                                                } while (cursorRawQuery.moveToNext());
                                            } else {
                                                zzicVar.zzaW().zze().zzb("Raw event data disappeared while in transaction. appId", zzgu.d(r3));
                                            }
                                        } else {
                                            j4 = j3;
                                        }
                                        if (j4 == -1 && jU != -1) {
                                            jU = Math.min(j4, jU);
                                        } else if (j4 != -1) {
                                            jU = j4;
                                        }
                                        str3 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                                        strArr2 = new String[]{r3, string2, String.valueOf(jU)};
                                        cursorRawQuery = sQLiteDatabaseM.query("raw_events", new String[]{"rowid", "name", TJVerifierKt.TJC_TIMESTAMP, "data", "elapsed_time"}, str3, strArr2, null, null, "rowid", null);
                                        if (cursorRawQuery.moveToFirst()) {
                                            do {
                                                j5 = cursorRawQuery.getLong(0);
                                                byte[] blob2 = cursorRawQuery.getBlob(3);
                                                long j7 = cursorRawQuery.getLong(4);
                                                zzhrVar = (zzhr) zzpk.H(zzhs.zzp(), blob2);
                                                zzhrVar.zzl(cursorRawQuery.getString(1));
                                                zzhrVar.zzo(cursorRawQuery.getLong(2));
                                                zzhrVar.zzw(j7);
                                                if (!mbcVar.a(j5, (zzhs) zzhrVar.zzbd())) {
                                                    break;
                                                    break;
                                                }
                                            } while (cursorRawQuery.moveToNext());
                                        } else {
                                            zzicVar.zzaW().zze().zzb("Raw event data disappeared while in transaction. appId", zzgu.d(r3));
                                        }
                                    } catch (IOException e2) {
                                        zzicVar.zzaW().zzb().zzc("Data loss. Failed to merge raw event metadata. appId", zzgu.d(r3), e2);
                                    }
                                } else {
                                    zzicVar.zzaW().zzb().zzb("Raw event metadata record is missing. appId", zzgu.d(r3));
                                }
                            } catch (SQLiteException e3) {
                                e = e3;
                                zzicVar.zzaW().zzb().zzc("Data loss. Error selecting raw event. appId", zzgu.d(string), e);
                            }
                        }
                    } catch (SQLiteException e4) {
                        e = e4;
                        string = str;
                    }
                } else {
                    try {
                        if (j3 != -1) {
                            String str5 = str;
                            strArr = new String[]{str5, String.valueOf(j3)};
                            IsEmpty = str5;
                        } else {
                            str2 = str;
                            strArr = new String[]{str2};
                        }
                        if (j3 != -1) {
                            IsEmpty = str2;
                            str4 = " and rowid <= ?";
                        }
                        IsEmpty = str2;
                        StringBuilder sb2 = new StringBuilder(str4.length() + 84);
                        sb2.append("select metadata_fingerprint from raw_events where app_id = ?");
                        sb2.append(str4);
                        sb2.append(" order by rowid limit 1;");
                        cursorRawQuery = sQLiteDatabaseM.rawQuery(sb2.toString(), strArr);
                        if (cursorRawQuery.moveToFirst()) {
                            string2 = cursorRawQuery.getString(0);
                            cursorRawQuery.close();
                            r3 = IsEmpty;
                            cursorRawQuery = sQLiteDatabaseM.query("raw_events_metadata", new String[]{TtmlNode.TAG_METADATA}, "app_id = ? and metadata_fingerprint = ?", new String[]{r3, string2}, null, null, "rowid", ExifInterface.GPS_MEASUREMENT_2D);
                            if (cursorRawQuery.moveToFirst()) {
                                zzicVar.zzaW().zzb().zzb("Raw event metadata record is missing. appId", zzgu.d(r3));
                            } else {
                                zzid zzidVar2 = (zzid) ((com.google.android.gms.internal.measurement.zzic) zzpk.H(zzid.zzaE(), cursorRawQuery.getBlob(0))).zzbd();
                                if (cursorRawQuery.moveToNext()) {
                                    zzicVar.zzaW().zze().zzb("Get multiple raw event metadata records, expected one. appId", zzgu.d(r3));
                                }
                                cursorRawQuery.close();
                                Preconditions.checkNotNull(zzidVar2);
                                mbcVar.a = zzidVar2;
                                jU = u("select (rowid - 1) as max_rowid from raw_events where app_id = ? and metadata_fingerprint != ? order by rowid limit 1;", new String[]{r3, string2}, -1L);
                                if (j3 == -1) {
                                    if (jU != -1) {
                                        j4 = -1;
                                    } else {
                                        str3 = "app_id = ? and metadata_fingerprint = ?";
                                        strArr2 = new String[]{r3, string2};
                                    }
                                    cursorRawQuery = sQLiteDatabaseM.query("raw_events", new String[]{"rowid", "name", TJVerifierKt.TJC_TIMESTAMP, "data", "elapsed_time"}, str3, strArr2, null, null, "rowid", null);
                                    if (cursorRawQuery.moveToFirst()) {
                                        do {
                                            j5 = cursorRawQuery.getLong(0);
                                            byte[] blob3 = cursorRawQuery.getBlob(3);
                                            long j8 = cursorRawQuery.getLong(4);
                                            zzhrVar = (zzhr) zzpk.H(zzhs.zzp(), blob3);
                                            zzhrVar.zzl(cursorRawQuery.getString(1));
                                            zzhrVar.zzo(cursorRawQuery.getLong(2));
                                            zzhrVar.zzw(j8);
                                            if (!mbcVar.a(j5, (zzhs) zzhrVar.zzbd())) {
                                                break;
                                                break;
                                            }
                                        } while (cursorRawQuery.moveToNext());
                                    } else {
                                        zzicVar.zzaW().zze().zzb("Raw event data disappeared while in transaction. appId", zzgu.d(r3));
                                    }
                                } else {
                                    j4 = j3;
                                }
                                if (j4 == -1) {
                                    if (j4 != -1) {
                                        jU = j4;
                                    }
                                } else if (j4 != -1) {
                                    jU = j4;
                                }
                                str3 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                                strArr2 = new String[]{r3, string2, String.valueOf(jU)};
                                cursorRawQuery = sQLiteDatabaseM.query("raw_events", new String[]{"rowid", "name", TJVerifierKt.TJC_TIMESTAMP, "data", "elapsed_time"}, str3, strArr2, null, null, "rowid", null);
                                if (cursorRawQuery.moveToFirst()) {
                                    do {
                                        j5 = cursorRawQuery.getLong(0);
                                        byte[] blob4 = cursorRawQuery.getBlob(3);
                                        long j9 = cursorRawQuery.getLong(4);
                                        zzhrVar = (zzhr) zzpk.H(zzhs.zzp(), blob4);
                                        zzhrVar.zzl(cursorRawQuery.getString(1));
                                        zzhrVar.zzo(cursorRawQuery.getLong(2));
                                        zzhrVar.zzw(j9);
                                        if (!mbcVar.a(j5, (zzhs) zzhrVar.zzbd())) {
                                            break;
                                            break;
                                        }
                                    } while (cursorRawQuery.moveToNext());
                                } else {
                                    zzicVar.zzaW().zze().zzb("Raw event data disappeared while in transaction. appId", zzgu.d(r3));
                                }
                            }
                        }
                    } catch (SQLiteException e5) {
                        e = e5;
                        string = IsEmpty;
                        zzicVar.zzaW().zzb().zzc("Data loss. Error selecting raw event. appId", zzgu.d(string), e);
                    }
                }
            } catch (SQLiteException e6) {
                e = e6;
                IsEmpty = str;
            }
        } finally {
            if (0 != 0) {
                cursorRawQuery.close();
            }
        }
    }

    public final void L() {
        a();
        M().beginTransaction();
    }

    public final SQLiteDatabase M() {
        zzg();
        try {
            return this.d.getWritableDatabase();
        } catch (SQLiteException e) {
            this.a.zzaW().zze().zzb("Error opening database", e);
            throw e;
        }
    }

    public final void N(String str) {
        qwa qwaVarX;
        z("events_snapshot", str);
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = M().query("events", (String[]) Collections.singletonList("name").toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
                if (cursorQuery.moveToFirst()) {
                    do {
                        String string = cursorQuery.getString(0);
                        if (string != null && (qwaVarX = x("events", str, string)) != null) {
                            y("events_snapshot", qwaVarX);
                        }
                    } while (cursorQuery.moveToNext());
                }
            } catch (SQLiteException e) {
                this.a.zzaW().zzb().zzc("Error creating snapshot. appId", zzgu.d(str), e);
            }
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x00d8 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:7:0x0054  */
    /* JADX WARN: Code duplicated, block: B:9:0x005b  */
    public final void O(String str) throws Throwable {
        boolean z;
        qwa qwaVarX;
        ArrayList arrayList = new ArrayList(Arrays.asList("name", "lifetime_count"));
        qwa qwaVarX2 = x("events", str, "_f");
        qwa qwaVarX3 = x("events", str, "_v");
        z("events", str);
        Cursor cursorQuery = null;
        boolean z2 = false;
        try {
            cursorQuery = M().query("events_snapshot", (String[]) arrayList.toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
            if (cursorQuery.moveToFirst()) {
                boolean z3 = false;
                z = false;
                do {
                    try {
                        String string = cursorQuery.getString(0);
                        if (cursorQuery.getLong(1) >= 1) {
                            if ("_f".equals(string)) {
                                z3 = true;
                            } else if ("_v".equals(string)) {
                                z = true;
                            }
                        }
                        if (string != null && (qwaVarX = x("events_snapshot", str, string)) != null) {
                            y("events", qwaVarX);
                        }
                    } catch (SQLiteException e) {
                        e = e;
                        z2 = z3;
                        try {
                            this.a.zzaW().zzb().zzc("Error querying snapshot. appId", zzgu.d(str), e);
                            z3 = z2;
                        } catch (Throwable th) {
                            th = th;
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            if (z2 && qwaVarX2 != null) {
                                y("events", qwaVarX2);
                            } else if (!z && qwaVarX3 != null) {
                                y("events", qwaVarX3);
                            }
                            z("events_snapshot", str);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        z2 = z3;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        if (z2) {
                            if (!z) {
                                y("events", qwaVarX3);
                            }
                        } else if (!z) {
                            y("events", qwaVarX3);
                        }
                        z("events_snapshot", str);
                        throw th;
                    }
                } while (cursorQuery.moveToNext());
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                if (!z3 && qwaVarX2 != null) {
                    y("events", qwaVarX2);
                } else if (!z && qwaVarX3 != null) {
                    y("events", qwaVarX3);
                }
            } else {
                cursorQuery.close();
                if (qwaVarX2 != null) {
                    y("events", qwaVarX2);
                } else if (qwaVarX3 != null) {
                    y("events", qwaVarX3);
                }
            }
        } catch (SQLiteException e2) {
            e = e2;
            z = false;
        } catch (Throwable th3) {
            th = th3;
            z = false;
        }
        z("events_snapshot", str);
    }

    public final void P(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        a();
        try {
            M().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzic zzicVar = this.a;
            zzicVar.zzaW().zzb().zzd("Error deleting user property. appId", zzgu.d(str), zzicVar.zzl().c(str2), e);
        }
    }

    public final boolean Q(sbc sbcVar) {
        Preconditions.checkNotNull(sbcVar);
        zzg();
        a();
        String str = sbcVar.a;
        String str2 = sbcVar.b;
        String str3 = sbcVar.c;
        sbc sbcVarR = R(str, str3);
        zzic zzicVar = this.a;
        if (sbcVarR == null) {
            if (zzpp.K(str3)) {
                if (t("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{str}) >= zzicVar.zzc().zzn(str, zzfy.zzV, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(str3)) {
                long jT = t("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{str, str2});
                zzicVar.zzc();
                if (jT >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, str);
        contentValues.put("origin", str2);
        contentValues.put("name", str3);
        contentValues.put("set_timestamp", Long.valueOf(sbcVar.d));
        K(contentValues, sbcVar.e);
        try {
            if (M().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            zzicVar.zzaW().zzb().zzb("Failed to insert/update user property (got -1). appId", zzgu.d(str));
            return true;
        } catch (SQLiteException e) {
            zzicVar.zzaW().zzb().zzc("Error storing user property. appId", zzgu.d(str), e);
            return true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009e  */
    /* JADX WARN: Code duplicated, block: B:43:? A[SYNTHETIC] */
    public final sbc R(String str, String str2) {
        Throwable th;
        String str3;
        String str4;
        SQLiteException sQLiteException;
        Cursor cursorQuery;
        zzic zzicVar = this.a;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        a();
        Cursor cursor = null;
        try {
            cursorQuery = M().query("user_attributes", new String[]{"set_timestamp", "value", "origin"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                try {
                    if (cursorQuery.moveToFirst()) {
                        long j2 = cursorQuery.getLong(0);
                        Object objK = k(cursorQuery, 1);
                        if (objK != null) {
                            str3 = str;
                            str4 = str2;
                            try {
                                sbc sbcVar = new sbc(str3, cursorQuery.getString(2), str4, j2, objK);
                                if (cursorQuery.moveToNext()) {
                                    zzicVar.zzaW().zzb().zzb("Got multiple records for user property, expected one. appId", zzgu.d(str3));
                                }
                                cursorQuery.close();
                                return sbcVar;
                            } catch (SQLiteException e) {
                                e = e;
                            }
                        }
                        sQLiteException = e;
                        zzicVar.zzaW().zzb().zzd("Error querying user property. appId", zzgu.d(str3), zzicVar.zzl().c(str4), sQLiteException);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        throw th;
                    }
                    cursor.close();
                    throw th;
                }
            } catch (SQLiteException e2) {
                e = e2;
                str3 = str;
                str4 = str2;
            }
        } catch (SQLiteException e3) {
            str3 = str;
            str4 = str2;
            sQLiteException = e3;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
                throw th;
            }
            cursor.close();
            throw th;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.List] */
    public final List S(String str) {
        String str2;
        SQLiteException sQLiteException;
        zzic zzicVar = this.a;
        Preconditions.checkNotEmpty(str);
        zzg();
        a();
        ?? arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                zzicVar.zzc();
                cursorQuery = M().query("user_attributes", new String[]{"name", "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (cursorQuery.moveToFirst()) {
                    while (true) {
                        String string = cursorQuery.getString(0);
                        String string2 = cursorQuery.getString(1);
                        if (string2 == null) {
                            string2 = "";
                        }
                        String str3 = string2;
                        long j2 = cursorQuery.getLong(2);
                        Object objK = k(cursorQuery, 3);
                        if (objK == null) {
                            try {
                                zzicVar.zzaW().zzb().zzb("Read invalid user property value, ignoring it. appId", zzgu.d(str));
                                str2 = str;
                            } catch (SQLiteException e) {
                                sQLiteException = e;
                                str2 = str;
                                zzicVar.zzaW().zzb().zzc("Error querying user properties. appId", zzgu.d(str2), sQLiteException);
                                arrayList = Collections.EMPTY_LIST;
                            }
                        } else {
                            str2 = str;
                            arrayList.add(new sbc(str2, str3, string, j2, objK));
                        }
                        try {
                            if (!cursorQuery.moveToNext()) {
                                break;
                            }
                            str = str2;
                        } catch (SQLiteException e2) {
                            e = e2;
                            sQLiteException = e;
                            zzicVar.zzaW().zzb().zzc("Error querying user properties. appId", zzgu.d(str2), sQLiteException);
                            arrayList = Collections.EMPTY_LIST;
                        }
                    }
                }
            } catch (SQLiteException e3) {
                e = e3;
                str2 = str;
            }
            return arrayList;
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0136  */
    /* JADX WARN: Code duplicated, block: B:53:0x013d  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.List] */
    public final List T(String str, String str2, String str3) throws Throwable {
        Cursor cursor;
        String str4;
        Cursor cursorQuery;
        String str5;
        zzic zzicVar = this.a;
        Preconditions.checkNotEmpty(str);
        zzg();
        a();
        ?? arrayList = new ArrayList();
        try {
            ArrayList arrayList2 = new ArrayList(3);
            String str6 = str;
            arrayList2.add(str6);
            StringBuilder sb = new StringBuilder("app_id=?");
            if (!TextUtils.isEmpty(str2)) {
                arrayList2.add(str2);
                sb.append(" and origin=?");
            }
            if (!TextUtils.isEmpty(str3)) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + 1);
                sb2.append(str3);
                sb2.append(ProxyConfig.MATCH_ALL_SCHEMES);
                arrayList2.add(sb2.toString());
                sb.append(" and name glob ?");
            }
            String[] strArr = (String[]) arrayList2.toArray(new String[arrayList2.size()]);
            String string = sb.toString();
            zzicVar.zzc();
            cursorQuery = M().query("user_attributes", new String[]{"name", "set_timestamp", "value", "origin"}, string, strArr, null, null, "rowid", "1001");
            try {
                try {
                    if (cursorQuery.moveToFirst()) {
                        str4 = str2;
                        while (true) {
                            try {
                                int size = arrayList.size();
                                zzicVar.zzc();
                                if (size >= 1000) {
                                    zzgs zzgsVarZzb = zzicVar.zzaW().zzb();
                                    zzicVar.zzc();
                                    zzgsVarZzb.zzb("Read more than the max allowed user properties, ignoring excess", 1000);
                                    break;
                                }
                                String string2 = cursorQuery.getString(0);
                                long j2 = cursorQuery.getLong(1);
                                Object objK = k(cursorQuery, 2);
                                String string3 = cursorQuery.getString(3);
                                if (objK == null) {
                                    try {
                                        zzicVar.zzaW().zzb().zzd("(2)Read invalid user property value, ignoring it", zzgu.d(str6), string3, str3);
                                        str5 = string3;
                                    } catch (SQLiteException e) {
                                        e = e;
                                        str5 = string3;
                                        cursor = cursorQuery;
                                        str4 = str5;
                                        try {
                                            zzicVar.zzaW().zzb().zzd("(2)Error querying user properties", zzgu.d(str), str4, e);
                                            arrayList = Collections.EMPTY_LIST;
                                            cursorQuery = cursor;
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            return arrayList;
                                        } catch (Throwable th) {
                                            th = th;
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            throw th;
                                        }
                                    }
                                } else {
                                    str5 = string3;
                                    arrayList.add(new sbc(str, str5, string2, j2, objK));
                                }
                                try {
                                    if (!cursorQuery.moveToNext()) {
                                        break;
                                    }
                                    str6 = str;
                                    str4 = str5;
                                } catch (SQLiteException e2) {
                                    e = e2;
                                    cursor = cursorQuery;
                                    str4 = str5;
                                    zzicVar.zzaW().zzb().zzd("(2)Error querying user properties", zzgu.d(str), str4, e);
                                    arrayList = Collections.EMPTY_LIST;
                                    cursorQuery = cursor;
                                }
                            } catch (SQLiteException e3) {
                                e = e3;
                                cursor = cursorQuery;
                                zzicVar.zzaW().zzb().zzd("(2)Error querying user properties", zzgu.d(str), str4, e);
                                arrayList = Collections.EMPTY_LIST;
                                cursorQuery = cursor;
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                return arrayList;
                            }
                        }
                    }
                } catch (SQLiteException e4) {
                    e = e4;
                    str4 = str2;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e5) {
            e = e5;
            str4 = str2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return arrayList;
    }

    public final boolean U(zzah zzahVar) {
        Preconditions.checkNotNull(zzahVar);
        zzg();
        a();
        String str = zzahVar.zza;
        Preconditions.checkNotNull(str);
        sbc sbcVarR = R(str, zzahVar.zzc.zzb);
        zzic zzicVar = this.a;
        if (sbcVarR == null) {
            long jT = t("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            zzicVar.zzc();
            if (jT >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, str);
        contentValues.put("origin", zzahVar.zzb);
        contentValues.put("name", zzahVar.zzc.zzb);
        K(contentValues, Preconditions.checkNotNull(zzahVar.zzc.zza()));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.valueOf(zzahVar.zze));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, zzahVar.zzf);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.valueOf(zzahVar.zzh));
        zzbh zzbhVar = zzahVar.zzg;
        zzicVar.zzk().getClass();
        contentValues.put("timed_out_event", zzpp.F(zzbhVar));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzahVar.zzd));
        zzpp zzppVarZzk = zzicVar.zzk();
        zzbh zzbhVar2 = zzahVar.zzi;
        zzppVarZzk.getClass();
        contentValues.put("triggered_event", zzpp.F(zzbhVar2));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.valueOf(zzahVar.zzc.zzc));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.valueOf(zzahVar.zzj));
        zzbh zzbhVar3 = zzahVar.zzk;
        zzicVar.zzk().getClass();
        contentValues.put("expired_event", zzpp.F(zzbhVar3));
        try {
            if (M().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            zzicVar.zzaW().zzb().zzb("Failed to insert/update conditional user property (got -1)", zzgu.d(str));
            return true;
        } catch (SQLiteException e) {
            zzicVar.zzaW().zzb().zzc("Error storing conditional user property", zzgu.d(str), e);
            return true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0114  */
    /* JADX WARN: Code duplicated, block: B:39:0x011a  */
    /* JADX WARN: Not initialized variable reg: 8, insn: 0x00f1: MOVE (r7 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]), block:B:29:0x00f1 */
    public final zzah V(String str, String str2) throws Throwable {
        String str3;
        Cursor cursorQuery;
        Cursor cursor;
        zzic zzicVar = this.a;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        a();
        Cursor cursor2 = null;
        try {
            try {
                cursorQuery = M().query("conditional_properties", new String[]{"origin", "value", AppMeasurementSdk.ConditionalUserProperty.ACTIVE, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, "timed_out_event", AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, "triggered_event", AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, "expired_event"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    String string = cursorQuery.getString(0);
                    if (string == null) {
                        string = "";
                    }
                    String str4 = string;
                    Object objK = k(cursorQuery, 1);
                    boolean z = cursorQuery.getInt(2) != 0;
                    String string2 = cursorQuery.getString(3);
                    long j2 = cursorQuery.getLong(4);
                    zzpg zzpgVar = this.b;
                    zzpk zzpkVarZzp = zzpgVar.zzp();
                    byte[] blob = cursorQuery.getBlob(5);
                    Parcelable.Creator<zzbh> creator = zzbh.CREATOR;
                    zzbh zzbhVar = (zzbh) zzpkVarZzp.z(blob, creator);
                    long j3 = cursorQuery.getLong(6);
                    zzbh zzbhVar2 = (zzbh) zzpgVar.zzp().z(cursorQuery.getBlob(7), creator);
                    long j4 = cursorQuery.getLong(8);
                    long j5 = cursorQuery.getLong(9);
                    zzbh zzbhVar3 = (zzbh) zzpgVar.zzp().z(cursorQuery.getBlob(10), creator);
                    str3 = str2;
                    try {
                        zzah zzahVar = new zzah(str, str4, new zzpl(j4, objK, str3, str4), j3, z, string2, zzbhVar, j2, zzbhVar2, j5, zzbhVar3);
                        if (cursorQuery.moveToNext()) {
                            zzicVar.zzaW().zzb().zzc("Got multiple records for conditional property, expected one", zzgu.d(str), zzicVar.zzl().c(str3));
                        }
                        cursorQuery.close();
                        return zzahVar;
                    } catch (SQLiteException e) {
                        e = e;
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    str3 = str2;
                }
            } catch (Throwable th) {
                th = th;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            str3 = str2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
        zzicVar.zzaW().zzb().zzd("Error querying conditional property", zzgu.d(str), zzicVar.zzl().c(str3), e);
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final void W(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        a();
        try {
            M().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzic zzicVar = this.a;
            zzicVar.zzaW().zzb().zzd("Error deleting conditional property", zzgu.d(str), zzicVar.zzl().c(str2), e);
        }
    }

    public final List X(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzg();
        a();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat(ProxyConfig.MATCH_ALL_SCHEMES));
            sb.append(" and name glob ?");
        }
        return Y(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.List] */
    public final List Y(String str, String[] strArr) {
        zzic zzicVar = this.a;
        zzg();
        a();
        ?? arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseM = M();
                String[] strArr2 = {CommonUrlParts.APP_ID, "origin", "name", "value", AppMeasurementSdk.ConditionalUserProperty.ACTIVE, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, "timed_out_event", AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, "triggered_event", AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, "expired_event"};
                zzicVar.zzc();
                cursorQuery = sQLiteDatabaseM.query("conditional_properties", strArr2, str, strArr, null, null, "rowid", "1001");
                if (cursorQuery.moveToFirst()) {
                    do {
                        int size = arrayList.size();
                        zzicVar.zzc();
                        if (size >= 1000) {
                            zzgs zzgsVarZzb = zzicVar.zzaW().zzb();
                            zzicVar.zzc();
                            zzgsVarZzb.zzb("Read more than the max allowed conditional properties, ignoring extra", 1000);
                            break;
                        }
                        String string = cursorQuery.getString(0);
                        String string2 = cursorQuery.getString(1);
                        String string3 = cursorQuery.getString(2);
                        Object objK = k(cursorQuery, 3);
                        boolean z = cursorQuery.getInt(4) != 0;
                        String string4 = cursorQuery.getString(5);
                        long j2 = cursorQuery.getLong(6);
                        zzpg zzpgVar = this.b;
                        zzpk zzpkVarZzp = zzpgVar.zzp();
                        byte[] blob = cursorQuery.getBlob(7);
                        Parcelable.Creator<zzbh> creator = zzbh.CREATOR;
                        zzbh zzbhVar = (zzbh) zzpkVarZzp.z(blob, creator);
                        arrayList.add(new zzah(string, string2, new zzpl(cursorQuery.getLong(10), objK, string3, string2), cursorQuery.getLong(8), z, string4, zzbhVar, j2, (zzbh) zzpgVar.zzp().z(cursorQuery.getBlob(9), creator), cursorQuery.getLong(11), (zzbh) zzpgVar.zzp().z(cursorQuery.getBlob(12), creator)));
                    } while (cursorQuery.moveToNext());
                }
            } catch (SQLiteException e) {
                zzicVar.zzaW().zzb().zzb("Error querying conditional user property value", e);
                arrayList = Collections.EMPTY_LIST;
            }
            return arrayList;
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:183:0x0503  */
    public final fmb Z(String str) {
        Cursor cursorQuery;
        Boolean boolValueOf;
        zzic zzicVar = this.a;
        Preconditions.checkNotEmpty(str);
        zzg();
        a();
        Cursor cursor = null;
        try {
            cursorQuery = M().query("apps", new String[]{"app_instance_id", "gmp_app_id", "resettable_device_id_hash", "last_bundle_index", "last_bundle_start_timestamp", "last_bundle_end_timestamp", "app_version", "app_store", "gmp_version", "dev_cert_hash", "measurement_enabled", "day", "daily_public_events_count", "daily_events_count", "daily_conversions_count", "config_fetched_time", "failed_config_fetch_time", "app_version_int", "firebase_instance_id", "daily_error_events_count", "daily_realtime_events_count", "health_monitor_sample", "android_id", "adid_reporting_enabled", "admob_app_id", "dynamite_version", "safelisted_events", "ga_app_id", "session_stitching_token", "sgtm_upload_enabled", "target_os_version", "session_stitching_token_hash", "ad_services_version", "unmatched_first_open_without_ad_id", "npa_metadata_value", "attribution_eligibility_status", "sgtm_preview_key", "dma_consent_state", "daily_realtime_dcu_count", "bundle_delivery_index", "serialized_npa_metadata", "unmatched_pfo", "unmatched_uwa", "ad_campaign_info", "client_upload_eligibility", "last_diagnostics_signal_upload_timestamp"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (cursorQuery.moveToFirst()) {
                        zzpg zzpgVar = this.b;
                        fmb fmbVar = new fmb(zzpgVar.l, str);
                        zzic zzicVar2 = fmbVar.a;
                        zzjl zzjlVarA = zzpgVar.a(str);
                        zzjk zzjkVar = zzjk.ANALYTICS_STORAGE;
                        if (zzjlVarA.zzo(zzjkVar)) {
                            fmbVar.o(cursorQuery.getString(0));
                        }
                        boolean z = true;
                        fmbVar.q(cursorQuery.getString(1));
                        if (zzpgVar.a(str).zzo(zzjk.AD_STORAGE)) {
                            fmbVar.r(cursorQuery.getString(2));
                        }
                        fmbVar.d(cursorQuery.getLong(3));
                        fmbVar.u(cursorQuery.getLong(4));
                        fmbVar.v(cursorQuery.getLong(5));
                        fmbVar.x(cursorQuery.getString(6));
                        fmbVar.A(cursorQuery.getString(7));
                        fmbVar.B(cursorQuery.getLong(8));
                        fmbVar.a(cursorQuery.getLong(9));
                        fmbVar.c(cursorQuery.isNull(10) || cursorQuery.getInt(10) != 0);
                        long j2 = cursorQuery.getLong(11);
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.K != j2;
                        fmbVar.K = j2;
                        long j3 = cursorQuery.getLong(12);
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.L != j3;
                        fmbVar.L = j3;
                        long j4 = cursorQuery.getLong(13);
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.M != j4;
                        fmbVar.M = j4;
                        long j5 = cursorQuery.getLong(14);
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.N != j5;
                        fmbVar.N = j5;
                        fmbVar.e(cursorQuery.getLong(15));
                        long j6 = cursorQuery.getLong(16);
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.T != j6;
                        fmbVar.T = j6;
                        fmbVar.z(cursorQuery.isNull(17) ? SieveCacheKt.NodeMetaAndPreviousMask : cursorQuery.getInt(17));
                        fmbVar.t(cursorQuery.getString(18));
                        long j7 = cursorQuery.getLong(19);
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.O != j7;
                        fmbVar.O = j7;
                        long j8 = cursorQuery.getLong(20);
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.P != j8;
                        fmbVar.P = j8;
                        fmbVar.j(cursorQuery.getString(21));
                        boolean z2 = cursorQuery.isNull(23) || cursorQuery.getInt(23) != 0;
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.p != z2;
                        fmbVar.p = z2;
                        fmbVar.b(cursorQuery.isNull(25) ? 0L : cursorQuery.getLong(25));
                        if (!cursorQuery.isNull(26)) {
                            fmbVar.k(Arrays.asList(cursorQuery.getString(26).split(StringUtils.COMMA, -1)));
                        }
                        if (zzpgVar.a(str).zzo(zzjkVar)) {
                            String string = cursorQuery.getString(28);
                            zzicVar2.zzaX().zzg();
                            fmbVar.R |= !Objects.equals(fmbVar.t, string);
                            fmbVar.t = string;
                        }
                        boolean z3 = (cursorQuery.isNull(29) || cursorQuery.getInt(29) == 0) ? false : true;
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.u != z3;
                        fmbVar.u = z3;
                        long j9 = cursorQuery.getLong(39);
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.F != j9;
                        fmbVar.F = j9;
                        String string2 = cursorQuery.getString(36);
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.C != string2;
                        fmbVar.C = string2;
                        long j10 = cursorQuery.getLong(30);
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.v != j10;
                        fmbVar.v = j10;
                        long j11 = cursorQuery.getLong(31);
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.w != j11;
                        fmbVar.w = j11;
                        zzaif.zza();
                        if (zzicVar.zzc().zzp(str, zzfy.zzaO)) {
                            int i2 = cursorQuery.getInt(32);
                            zzicVar2.zzaX().zzg();
                            fmbVar.R |= fmbVar.x != i2;
                            fmbVar.x = i2;
                            long j12 = cursorQuery.getLong(35);
                            zzicVar2.zzaX().zzg();
                            fmbVar.R |= fmbVar.B != j12;
                            fmbVar.B = j12;
                        }
                        boolean z4 = (cursorQuery.isNull(33) || cursorQuery.getInt(33) == 0) ? false : true;
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.y != z4;
                        fmbVar.y = z4;
                        if (cursorQuery.isNull(34)) {
                            boolValueOf = null;
                        } else {
                            boolValueOf = Boolean.valueOf(cursorQuery.getInt(34) != 0);
                        }
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= !Objects.equals(fmbVar.q, boolValueOf);
                        fmbVar.q = boolValueOf;
                        int i3 = cursorQuery.getInt(37);
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.D != i3;
                        fmbVar.D = i3;
                        fmbVar.g(cursorQuery.getInt(38));
                        String str2 = cursorQuery.isNull(40) ? "" : (String) Preconditions.checkNotNull(cursorQuery.getString(40));
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.G != str2;
                        fmbVar.G = str2;
                        if (!cursorQuery.isNull(41)) {
                            Long lValueOf = Long.valueOf(cursorQuery.getLong(41));
                            zzicVar2.zzaX().zzg();
                            fmbVar.R |= !Objects.equals(fmbVar.z, lValueOf);
                            fmbVar.z = lValueOf;
                        }
                        if (!cursorQuery.isNull(42)) {
                            Long lValueOf2 = Long.valueOf(cursorQuery.getLong(42));
                            zzicVar2.zzaX().zzg();
                            fmbVar.R |= !Objects.equals(fmbVar.A, lValueOf2);
                            fmbVar.A = lValueOf2;
                        }
                        byte[] blob = cursorQuery.getBlob(43);
                        zzicVar2.zzaX().zzg();
                        fmbVar.R |= fmbVar.H != blob;
                        fmbVar.H = blob;
                        if (!cursorQuery.isNull(44)) {
                            int i4 = cursorQuery.getInt(44);
                            zzicVar2.zzaX().zzg();
                            fmbVar.R |= fmbVar.I != i4;
                            fmbVar.I = i4;
                        }
                        if (zzicVar.zzc().zzp(str, zzfy.zzbj) && !cursorQuery.isNull(45)) {
                            long j13 = cursorQuery.getLong(45);
                            zzicVar2.zzaX().zzg();
                            boolean z5 = fmbVar.R;
                            if (fmbVar.J == j13) {
                                z = false;
                            }
                            fmbVar.R = z5 | z;
                            fmbVar.J = j13;
                        }
                        zzicVar2.zzaX().zzg();
                        fmbVar.R = false;
                        if (cursorQuery.moveToNext()) {
                            zzicVar.zzaW().zzb().zzb("Got multiple records for app, expected one. appId", zzgu.d(str));
                        }
                        cursorQuery.close();
                        return fmbVar;
                    }
                } catch (SQLiteException e) {
                    e = e;
                    zzicVar.zzaW().zzb().zzc("Error querying app. appId", zzgu.d(str), e);
                }
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final void a0(fmb fmbVar, boolean z) {
        Preconditions.checkNotNull(fmbVar);
        zzg();
        a();
        String strM = fmbVar.m();
        zzic zzicVar = fmbVar.a;
        Preconditions.checkNotNull(strM);
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, strM);
        zzpg zzpgVar = this.b;
        if (z) {
            contentValues.put("app_instance_id", (String) null);
        } else if (zzpgVar.a(strM).zzo(zzjk.ANALYTICS_STORAGE)) {
            contentValues.put("app_instance_id", fmbVar.n());
        }
        contentValues.put("gmp_app_id", fmbVar.p());
        if (zzpgVar.a(strM).zzo(zzjk.AD_STORAGE)) {
            zzicVar.zzaX().zzg();
            contentValues.put("resettable_device_id_hash", fmbVar.e);
        }
        zzicVar.zzaX().zzg();
        contentValues.put("last_bundle_index", Long.valueOf(fmbVar.g));
        zzicVar.zzaX().zzg();
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(fmbVar.h));
        zzicVar.zzaX().zzg();
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(fmbVar.i));
        contentValues.put("app_version", fmbVar.w());
        zzicVar.zzaX().zzg();
        contentValues.put("app_store", fmbVar.l);
        zzicVar.zzaX().zzg();
        contentValues.put("gmp_version", Long.valueOf(fmbVar.m));
        zzicVar.zzaX().zzg();
        contentValues.put("dev_cert_hash", Long.valueOf(fmbVar.n));
        zzicVar.zzaX().zzg();
        contentValues.put("measurement_enabled", Boolean.valueOf(fmbVar.o));
        zzicVar.zzaX().zzg();
        contentValues.put("day", Long.valueOf(fmbVar.K));
        zzicVar.zzaX().zzg();
        contentValues.put("daily_public_events_count", Long.valueOf(fmbVar.L));
        zzicVar.zzaX().zzg();
        contentValues.put("daily_events_count", Long.valueOf(fmbVar.M));
        zzicVar.zzaX().zzg();
        contentValues.put("daily_conversions_count", Long.valueOf(fmbVar.N));
        zzicVar.zzaX().zzg();
        contentValues.put("config_fetched_time", Long.valueOf(fmbVar.S));
        zzicVar.zzaX().zzg();
        contentValues.put("failed_config_fetch_time", Long.valueOf(fmbVar.T));
        contentValues.put("app_version_int", Long.valueOf(fmbVar.y()));
        contentValues.put("firebase_instance_id", fmbVar.s());
        zzicVar.zzaX().zzg();
        contentValues.put("daily_error_events_count", Long.valueOf(fmbVar.O));
        zzicVar.zzaX().zzg();
        contentValues.put("daily_realtime_events_count", Long.valueOf(fmbVar.P));
        zzicVar.zzaX().zzg();
        contentValues.put("health_monitor_sample", fmbVar.Q);
        contentValues.put("android_id", (Long) 0L);
        zzicVar.zzaX().zzg();
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(fmbVar.p));
        zzicVar.zzaX().zzg();
        contentValues.put("dynamite_version", Long.valueOf(fmbVar.r));
        if (zzpgVar.a(strM).zzo(zzjk.ANALYTICS_STORAGE)) {
            zzicVar.zzaX().zzg();
            contentValues.put("session_stitching_token", fmbVar.t);
        }
        zzicVar.zzaX().zzg();
        contentValues.put("sgtm_upload_enabled", Boolean.valueOf(fmbVar.u));
        zzicVar.zzaX().zzg();
        contentValues.put("target_os_version", Long.valueOf(fmbVar.v));
        zzicVar.zzaX().zzg();
        contentValues.put("session_stitching_token_hash", Long.valueOf(fmbVar.w));
        zzaif.zza();
        zzic zzicVar2 = this.a;
        if (zzicVar2.zzc().zzp(strM, zzfy.zzaO)) {
            zzicVar.zzaX().zzg();
            contentValues.put("ad_services_version", Integer.valueOf(fmbVar.x));
            zzicVar.zzaX().zzg();
            contentValues.put("attribution_eligibility_status", Long.valueOf(fmbVar.B));
        }
        zzicVar.zzaX().zzg();
        contentValues.put("unmatched_first_open_without_ad_id", Boolean.valueOf(fmbVar.y));
        zzicVar.zzaX().zzg();
        contentValues.put("npa_metadata_value", fmbVar.q);
        zzicVar.zzaX().zzg();
        contentValues.put("bundle_delivery_index", Long.valueOf(fmbVar.F));
        contentValues.put("sgtm_preview_key", fmbVar.l());
        zzicVar.zzaX().zzg();
        contentValues.put("dma_consent_state", Integer.valueOf(fmbVar.D));
        zzicVar.zzaX().zzg();
        contentValues.put("daily_realtime_dcu_count", Integer.valueOf(fmbVar.E));
        zzicVar.zzaX().zzg();
        contentValues.put("serialized_npa_metadata", fmbVar.G);
        contentValues.put("client_upload_eligibility", Integer.valueOf(fmbVar.h()));
        zzicVar.zzaX().zzg();
        ArrayList arrayList = fmbVar.s;
        if (arrayList != null) {
            if (arrayList.isEmpty()) {
                zzicVar2.zzaW().zze().zzb("Safelisted events should not be an empty list. appId", strM);
            } else {
                contentValues.put("safelisted_events", TextUtils.join(StringUtils.COMMA, arrayList));
            }
        }
        zzahk.zza();
        if (zzicVar2.zzc().zzp(null, zzfy.zzaK) && !contentValues.containsKey("safelisted_events")) {
            contentValues.put("safelisted_events", (String) null);
        }
        zzicVar.zzaX().zzg();
        contentValues.put("unmatched_pfo", fmbVar.z);
        zzicVar.zzaX().zzg();
        contentValues.put("unmatched_uwa", fmbVar.A);
        zzicVar.zzaX().zzg();
        contentValues.put("ad_campaign_info", fmbVar.H);
        if (zzicVar2.zzc().zzp(strM, zzfy.zzbj)) {
            zzicVar.zzaX().zzg();
            contentValues.put("last_diagnostics_signal_upload_timestamp", Long.valueOf(fmbVar.J));
        }
        try {
            SQLiteDatabase sQLiteDatabaseM = M();
            if (sQLiteDatabaseM.update("apps", contentValues, "app_id = ?", new String[]{strM}) == 0 && sQLiteDatabaseM.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                zzicVar2.zzaW().zzb().zzb("Failed to insert/update app (got -1). appId", zzgu.d(strM));
            }
        } catch (SQLiteException e) {
            zzicVar2.zzaW().zzb().zzc("Error storing app. appId", zzgu.d(strM), e);
        }
    }

    @Override // defpackage.lac
    public final void b() {
        zzic zzicVar = this.a;
        if (zzicVar.zzc().zzp(null, zzfy.zzbe)) {
            zzicVar.zzaX().zzj(new Runnable() { // from class: zua
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    kva kvaVar = this.b;
                    try {
                        SQLiteDatabase sQLiteDatabaseM = kvaVar.M();
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("elapsed_time", (Long) 0L);
                        sQLiteDatabaseM.update("raw_events", contentValues, null, null);
                    } catch (SQLiteException e) {
                        kvaVar.a.zzaW().zzb().zzb("Failed to remove elapsed times from raw events table", e);
                    }
                }
            });
        }
    }

    public final zzar b0(long j2, String str, boolean z, boolean z2, boolean z3, boolean z4) {
        return c0(j2, str, 1L, false, false, z, false, z2, z3, z4);
    }

    public final long c(String str, zzib zzibVar, String str2, Map map, zzls zzlsVar, Long l2) {
        int iDelete;
        zzg();
        a();
        Preconditions.checkNotNull(zzibVar);
        Preconditions.checkNotEmpty(str);
        zzg();
        a();
        boolean zI = I();
        zzic zzicVar = this.a;
        if (zI) {
            zzpg zzpgVar = this.b;
            long jZza = zzpgVar.zzq().zzb.zza();
            long jElapsedRealtime = zzicVar.zzba().elapsedRealtime();
            long jAbs = Math.abs(jElapsedRealtime - jZza);
            zzicVar.zzc();
            if (jAbs > zzal.zzJ()) {
                zzpgVar.zzq().zzb.zzb(jElapsedRealtime);
                zzg();
                a();
                if (I() && (iDelete = M().delete("upload_queue", B(), new String[0])) > 0) {
                    zzicVar.zzaW().zzk().zzb("Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted", Integer.valueOf(iDelete));
                }
                Preconditions.checkNotEmpty(str);
                zzg();
                a();
                try {
                    int iZzm = zzicVar.zzc().zzm(str, zzfy.zzz);
                    if (iZzm > 0) {
                        M().delete("upload_queue", "rowid in (SELECT rowid FROM upload_queue WHERE app_id=? ORDER BY rowid DESC LIMIT -1 OFFSET ?)", new String[]{str, String.valueOf(iZzm)});
                    }
                } catch (SQLiteException e) {
                    zzicVar.zzaW().zzb().zzc("Error deleting over the limit queued batches. appId", zzgu.d(str), e);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            String str3 = (String) entry.getKey();
            String str4 = (String) entry.getValue();
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 1 + String.valueOf(str4).length());
            sb.append(str3);
            sb.append("=");
            sb.append(str4);
            arrayList.add(sb.toString());
        }
        byte[] bArrZzcd = zzibVar.zzcd();
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, str);
        contentValues.put("measurement_batch", bArrZzcd);
        contentValues.put("upload_uri", str2);
        contentValues.put("upload_headers", TextUtils.join("\r\n", arrayList));
        contentValues.put("upload_type", Integer.valueOf(zzlsVar.zza()));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzicVar.zzba().currentTimeMillis()));
        contentValues.put("retry_count", (Integer) 0);
        if (l2 != null) {
            contentValues.put("associated_row_id", l2);
        }
        try {
            long jInsert = M().insert("upload_queue", null, contentValues);
            if (jInsert != -1) {
                return jInsert;
            }
            zzicVar.zzaW().zzb().zzb("Failed to insert MeasurementBatch (got -1) to upload_queue. appId", str);
            return -1L;
        } catch (SQLiteException e2) {
            zzicVar.zzaW().zzb().zzc("Error storing MeasurementBatch to upload_queue. appId", str, e2);
            return -1L;
        }
    }

    public final zzar c0(long j2, String str, long j3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        zzic zzicVar = this.a;
        Preconditions.checkNotEmpty(str);
        zzg();
        a();
        String[] strArr = {str};
        zzar zzarVar = new zzar();
        Cursor cursorQuery = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseM = M();
                cursorQuery = sQLiteDatabaseM.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count", "daily_realtime_dcu_count", "daily_registered_triggers_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (cursorQuery.moveToFirst()) {
                    if (cursorQuery.getLong(0) == j2) {
                        zzarVar.b = cursorQuery.getLong(1);
                        zzarVar.a = cursorQuery.getLong(2);
                        zzarVar.c = cursorQuery.getLong(3);
                        zzarVar.d = cursorQuery.getLong(4);
                        zzarVar.e = cursorQuery.getLong(5);
                        zzarVar.f = cursorQuery.getLong(6);
                        zzarVar.g = cursorQuery.getLong(7);
                    }
                    if (z) {
                        zzarVar.b += j3;
                    }
                    if (z2) {
                        zzarVar.a += j3;
                    }
                    if (z3) {
                        zzarVar.c += j3;
                    }
                    if (z4) {
                        zzarVar.d += j3;
                    }
                    if (z5) {
                        zzarVar.e += j3;
                    }
                    if (z6) {
                        zzarVar.f += j3;
                    }
                    if (z7) {
                        zzarVar.g += j3;
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("day", Long.valueOf(j2));
                    contentValues.put("daily_public_events_count", Long.valueOf(zzarVar.a));
                    contentValues.put("daily_events_count", Long.valueOf(zzarVar.b));
                    contentValues.put("daily_conversions_count", Long.valueOf(zzarVar.c));
                    contentValues.put("daily_error_events_count", Long.valueOf(zzarVar.d));
                    contentValues.put("daily_realtime_events_count", Long.valueOf(zzarVar.e));
                    contentValues.put("daily_realtime_dcu_count", Long.valueOf(zzarVar.f));
                    contentValues.put("daily_registered_triggers_count", Long.valueOf(zzarVar.g));
                    sQLiteDatabaseM.update("apps", contentValues, "app_id=?", strArr);
                } else {
                    zzicVar.zzaW().zze().zzb("Not updating daily counts, app is not known. appId", zzgu.d(str));
                }
            } catch (SQLiteException e) {
                zzicVar.zzaW().zzb().zzc("Error updating daily counts. appId", zzgu.d(str), e);
            }
            return zzarVar;
        } finally {
            if (0 != 0) {
                cursorQuery.close();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.ArrayList] */
    public final List d(String str, zzoo zzooVar, int i2) {
        ?? arrayList;
        Preconditions.checkNotEmpty(str);
        zzg();
        a();
        Cursor cursorQuery = null;
        try {
            SQLiteDatabase sQLiteDatabaseM = M();
            String[] strArr = {"rowId", CommonUrlParts.APP_ID, "measurement_batch", "upload_uri", "upload_headers", "upload_type", "retry_count", AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, "associated_row_id", "last_upload_timestamp"};
            String strC = C(zzooVar.zza);
            String strB = B();
            StringBuilder sb = new StringBuilder(strC.length() + 17 + strB.length());
            sb.append("app_id=?");
            sb.append(strC);
            sb.append(" AND NOT ");
            sb.append(strB);
            cursorQuery = sQLiteDatabaseM.query("upload_queue", strArr, sb.toString(), new String[]{str}, null, null, "creation_timestamp ASC", i2 > 0 ? String.valueOf(i2) : null);
            arrayList = new ArrayList();
            while (cursorQuery.moveToNext()) {
                zzpj zzpjVarA = A(str, cursorQuery.getLong(0), cursorQuery.getBlob(2), cursorQuery.getString(3), cursorQuery.getString(4), cursorQuery.getInt(5), cursorQuery.getInt(6), cursorQuery.getLong(7), cursorQuery.getLong(8), cursorQuery.getLong(9));
                if (zzpjVarA != null) {
                    arrayList.add(zzpjVarA);
                }
            }
        } catch (SQLiteException e) {
            this.a.zzaW().zzb().zzc("Error to querying MeasurementBatch from upload_queue. appId", str, e);
            arrayList = Collections.EMPTY_LIST;
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x008a  */
    /* JADX WARN: Code duplicated, block: B:36:? A[SYNTHETIC] */
    public final tua d0(String str) throws Throwable {
        Throwable th;
        Cursor cursorQuery;
        zzic zzicVar = this.a;
        Preconditions.checkNotEmpty(str);
        zzg();
        a();
        Cursor cursor = null;
        try {
            cursorQuery = M().query("apps", new String[]{"remote_config", "config_last_modified_time", "e_tag"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (cursorQuery.moveToFirst()) {
                        byte[] blob = cursorQuery.getBlob(0);
                        String string = cursorQuery.getString(1);
                        String string2 = cursorQuery.getString(2);
                        if (cursorQuery.moveToNext()) {
                            zzicVar.zzaW().zzb().zzb("Got multiple records for app config, expected one. appId", zzgu.d(str));
                        }
                        if (blob != null) {
                            tua tuaVar = new tua(blob, string, string2);
                            cursorQuery.close();
                            return tuaVar;
                        }
                    }
                } catch (SQLiteException e) {
                    e = e;
                    zzicVar.zzaW().zzb().zzc("Error querying remote config. appId", zzgu.d(str), e);
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorQuery;
                if (cursor != null) {
                    throw th;
                }
                cursor.close();
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
                throw th;
            }
            cursor.close();
            throw th;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final void e(Long l2) {
        zzic zzicVar = this.a;
        zzg();
        a();
        Preconditions.checkNotNull(l2);
        try {
            if (M().delete("upload_queue", "rowid=?", new String[]{l2.toString()}) != 1) {
                zzicVar.zzaW().zze().zza("Deleted fewer rows from upload_queue than expected");
            }
        } catch (SQLiteException e) {
            zzicVar.zzaW().zzb().zzb("Failed to delete a MeasurementBatch in a upload_queue table", e);
            throw e;
        }
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0045  */
    public final void e0(zzid zzidVar, boolean z) {
        zzg();
        a();
        Preconditions.checkNotNull(zzidVar);
        Preconditions.checkNotEmpty(zzidVar.zzA());
        Preconditions.checkState(zzidVar.zzn());
        h();
        zzic zzicVar = this.a;
        long jCurrentTimeMillis = zzicVar.zzba().currentTimeMillis();
        long jZzo = zzidVar.zzo();
        zzicVar.zzc();
        if (jZzo >= jCurrentTimeMillis - zzal.zzI()) {
            long jZzo2 = zzidVar.zzo();
            zzicVar.zzc();
            if (jZzo2 > zzal.zzI() + jCurrentTimeMillis) {
                zzicVar.zzaW().zze().zzd("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzgu.d(zzidVar.zzA()), Long.valueOf(jCurrentTimeMillis), Long.valueOf(zzidVar.zzo()));
            }
        } else {
            zzicVar.zzaW().zze().zzd("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzgu.d(zzidVar.zzA()), Long.valueOf(jCurrentTimeMillis), Long.valueOf(zzidVar.zzo()));
        }
        try {
            byte[] bArrG = this.b.zzp().G(zzidVar.zzcd());
            zzicVar.zzaW().zzk().zzb("Saving bundle, size", Integer.valueOf(bArrG.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put(CommonUrlParts.APP_ID, zzidVar.zzA());
            contentValues.put("bundle_end_timestamp", Long.valueOf(zzidVar.zzo()));
            contentValues.put("data", bArrG);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (zzidVar.zzaa()) {
                contentValues.put("retry_count", Integer.valueOf(zzidVar.zzab()));
            }
            try {
                if (M().insert("queue", null, contentValues) == -1) {
                    zzicVar.zzaW().zzb().zzb("Failed to insert bundle (got -1). appId", zzgu.d(zzidVar.zzA()));
                }
            } catch (SQLiteException e) {
                zzicVar.zzaW().zzb().zzc("Error storing bundle. appId", zzgu.d(zzidVar.zzA()), e);
            }
        } catch (IOException e2) {
            zzicVar.zzaW().zzb().zzc("Data loss. Failed to serialize bundle. appId", zzgu.d(zzidVar.zzA()), e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x003c  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v2 */
    public final String f() throws Throwable {
        SQLiteException e;
        Cursor cursorRawQuery;
        SQLiteDatabase sQLiteDatabaseM = M();
        ?? r1 = 0;
        try {
            try {
                cursorRawQuery = sQLiteDatabaseM.rawQuery("select app_id from queue order by has_realtime desc, rowid asc limit 1;", null);
                try {
                    if (cursorRawQuery.moveToFirst()) {
                        String string = cursorRawQuery.getString(0);
                        cursorRawQuery.close();
                        return string;
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    this.a.zzaW().zzb().zzb("Database error getting next bundle app id", e);
                }
            } catch (Throwable th) {
                th = th;
                r1 = sQLiteDatabaseM;
                if (r1 != 0) {
                    r1.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorRawQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (r1 != 0) {
                r1.close();
            }
            throw th;
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        return null;
    }

    public final void g(long j2) {
        zzg();
        a();
        try {
            if (M().delete("queue", "rowid=?", new String[]{String.valueOf(j2)}) == 1) {
            } else {
                throw new SQLiteException("Deleted fewer rows from queue than expected");
            }
        } catch (SQLiteException e) {
            this.a.zzaW().zzb().zzb("Failed to delete a bundle in a queue table", e);
            throw e;
        }
    }

    public final void h() {
        zzg();
        a();
        if (I()) {
            zzpg zzpgVar = this.b;
            long jZza = zzpgVar.zzq().zza.zza();
            zzic zzicVar = this.a;
            long jElapsedRealtime = zzicVar.zzba().elapsedRealtime();
            long jAbs = Math.abs(jElapsedRealtime - jZza);
            zzicVar.zzc();
            if (jAbs > zzal.zzJ()) {
                zzpgVar.zzq().zza.zzb(jElapsedRealtime);
                zzg();
                a();
                if (I()) {
                    SQLiteDatabase sQLiteDatabaseM = M();
                    String strValueOf = String.valueOf(zzicVar.zzba().currentTimeMillis());
                    zzicVar.zzc();
                    int iDelete = sQLiteDatabaseM.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{strValueOf, String.valueOf(zzal.zzI())});
                    if (iDelete > 0) {
                        zzicVar.zzaW().zzk().zzb("Deleted stale rows. rowsDeleted", Integer.valueOf(iDelete));
                    }
                }
            }
        }
    }

    public final void i(List list) {
        zzg();
        a();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (I()) {
            String strJoin = TextUtils.join(StringUtils.COMMA, list);
            String strC = kh.c(new StringBuilder(String.valueOf(strJoin).length() + 2), "(", strJoin, ")");
            long jT = t(kh.c(new StringBuilder(strC.length() + 80), "SELECT COUNT(1) FROM queue WHERE rowid IN ", strC, " AND retry_count =  2147483647 LIMIT 1"), null);
            zzic zzicVar = this.a;
            if (jT > 0) {
                xp.h(zzicVar, "The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase sQLiteDatabaseM = M();
                StringBuilder sb = new StringBuilder(strC.length() + Trace.MAX_TRACE_LABEL_LENGTH);
                sb.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb.append(strC);
                sb.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                sQLiteDatabaseM.execSQL(sb.toString());
            } catch (SQLiteException e) {
                zzicVar.zzaW().zzb().zzb("Error incrementing retry count. error", e);
            }
        }
    }

    public final void j(Long l2) {
        zzg();
        a();
        Preconditions.checkNotNull(l2);
        if (I()) {
            StringBuilder sb = new StringBuilder(l2.toString().length() + 86);
            sb.append("SELECT COUNT(1) FROM upload_queue WHERE rowid = ");
            sb.append(l2);
            sb.append(" AND retry_count =  2147483647 LIMIT 1");
            long jT = t(sb.toString(), null);
            zzic zzicVar = this.a;
            if (jT > 0) {
                xp.h(zzicVar, "The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase sQLiteDatabaseM = M();
                long jCurrentTimeMillis = zzicVar.zzba().currentTimeMillis();
                StringBuilder sb2 = new StringBuilder(String.valueOf(jCurrentTimeMillis).length() + 60);
                sb2.append(" SET retry_count = retry_count + 1, last_upload_timestamp = ");
                sb2.append(jCurrentTimeMillis);
                String string = sb2.toString();
                StringBuilder sb3 = new StringBuilder(string.length() + 34 + l2.toString().length() + 29);
                sb3.append("UPDATE upload_queue");
                sb3.append(string);
                sb3.append(" WHERE rowid = ");
                sb3.append(l2);
                sb3.append(" AND retry_count < 2147483647");
                sQLiteDatabaseM.execSQL(sb3.toString());
            } catch (SQLiteException e) {
                zzicVar.zzaW().zzb().zzb("Error incrementing retry count. error", e);
            }
        }
    }

    public final Object k(Cursor cursor, int i2) {
        int type = cursor.getType(i2);
        zzic zzicVar = this.a;
        if (type == 0) {
            u4.e(zzicVar, "Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i2));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i2));
        }
        if (type == 3) {
            return cursor.getString(i2);
        }
        if (type != 4) {
            zzicVar.zzaW().zzb().zzb("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
            return null;
        }
        u4.e(zzicVar, "Loaded invalid blob type value, ignoring it");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0092 A[Catch: all -> 0x006c, SQLiteException -> 0x00a4, TryCatch #0 {SQLiteException -> 0x00a4, blocks: (B:15:0x0071, B:17:0x0092, B:20:0x00a6), top: B:30:0x0071 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x00a6 A[Catch: all -> 0x006c, SQLiteException -> 0x00a4, TRY_LEAVE, TryCatch #0 {SQLiteException -> 0x00a4, blocks: (B:15:0x0071, B:17:0x0092, B:20:0x00a6), top: B:30:0x0071 }] */
    public final long l(String str) {
        long j2;
        ContentValues contentValues;
        zzic zzicVar = this.a;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty("first_open_count");
        zzg();
        a();
        SQLiteDatabase sQLiteDatabaseM = M();
        sQLiteDatabaseM.beginTransaction();
        long j3 = 0;
        try {
            try {
                StringBuilder sb = new StringBuilder(48);
                sb.append("select first_open_count from app2 where app_id=?");
                j2 = -1;
                long jU = u(sb.toString(), new String[]{str}, -1L);
                if (jU == -1) {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put(CommonUrlParts.APP_ID, str);
                    contentValues2.put("first_open_count", (Integer) 0);
                    contentValues2.put("previous_install_count", (Integer) 0);
                    if (sQLiteDatabaseM.insertWithOnConflict("app2", null, contentValues2, 5) == -1) {
                        zzicVar.zzaW().zzb().zzc("Failed to insert column (got -1). appId", zzgu.d(str), "first_open_count");
                    } else {
                        jU = 0;
                        try {
                            contentValues = new ContentValues();
                            contentValues.put(CommonUrlParts.APP_ID, str);
                            contentValues.put("first_open_count", Long.valueOf(1 + jU));
                            if (sQLiteDatabaseM.update("app2", contentValues, "app_id = ?", new String[]{str}) == 0) {
                                zzicVar.zzaW().zzb().zzc("Failed to update column (got 0). appId", zzgu.d(str), "first_open_count");
                            } else {
                                sQLiteDatabaseM.setTransactionSuccessful();
                                j2 = jU;
                            }
                        } catch (SQLiteException e) {
                            e = e;
                            j3 = jU;
                            zzicVar.zzaW().zzb().zzd("Error inserting column. appId", zzgu.d(str), "first_open_count", e);
                            j2 = j3;
                        }
                    }
                } else {
                    contentValues = new ContentValues();
                    contentValues.put(CommonUrlParts.APP_ID, str);
                    contentValues.put("first_open_count", Long.valueOf(1 + jU));
                    if (sQLiteDatabaseM.update("app2", contentValues, "app_id = ?", new String[]{str}) == 0) {
                        zzicVar.zzaW().zzb().zzc("Failed to update column (got 0). appId", zzgu.d(str), "first_open_count");
                    } else {
                        sQLiteDatabaseM.setTransactionSuccessful();
                        j2 = jU;
                    }
                }
            } finally {
                sQLiteDatabaseM.endTransaction();
            }
        } catch (SQLiteException e2) {
            e = e2;
        }
        return j2;
    }

    public final boolean m(String str, String str2) {
        return t("select count(1) from raw_events where app_id = ? and name = ?", new String[]{str, str2}) > 0;
    }

    public final void n(List list) {
        Preconditions.checkNotNull(list);
        zzg();
        a();
        StringBuilder sb = new StringBuilder("rowid in (");
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (i2 != 0) {
                sb.append(StringUtils.COMMA);
            }
            sb.append(((Long) list.get(i2)).longValue());
        }
        sb.append(")");
        int iDelete = M().delete("raw_events", sb.toString(), null);
        if (iDelete != list.size()) {
            this.a.zzaW().zzb().zzc("Deleted fewer rows from raw events table than expected", Integer.valueOf(iDelete), Integer.valueOf(list.size()));
        }
    }

    public final long o(String str) {
        Preconditions.checkNotEmpty(str);
        return u("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    public final void p(String str, Long l2, long j2, zzhs zzhsVar) {
        zzg();
        a();
        Preconditions.checkNotNull(zzhsVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l2);
        byte[] bArrZzcd = zzhsVar.zzcd();
        zzic zzicVar = this.a;
        zzicVar.zzaW().zzk().zzc("Saving complex main event, appId, data size", zzicVar.zzl().a(str), Integer.valueOf(bArrZzcd.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, str);
        contentValues.put("event_id", l2);
        contentValues.put("children_to_process", Long.valueOf(j2));
        contentValues.put("main_event", bArrZzcd);
        try {
            if (M().insertWithOnConflict("main_event_params", null, contentValues, 5) == -1) {
                zzicVar.zzaW().zzb().zzb("Failed to insert complex main event (got -1). appId", zzgu.d(str));
            }
        } catch (SQLiteException e) {
            zzicVar.zzaW().zzb().zzc("Error storing complex main event. appId", zzgu.d(str), e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:115:0x0118 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:0x0118 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:0x002e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:? A[LOOP:2: B:51:0x00fe->B:120:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:53:0x0104  */
    public final void q(String str, Long l2, String str2, Bundle bundle) throws Throwable {
        Bundle bundle2;
        long j2;
        String str3;
        ContentValues contentValues;
        zzid zzidVar;
        Iterator it;
        kva kvaVar = this;
        String str4 = str;
        Preconditions.checkNotNull(bundle);
        kvaVar.zzg();
        kvaVar.a();
        zzau zzauVar = l2 != null ? new zzau(kvaVar, str4, l2.longValue()) : new zzau(kvaVar, str4);
        List<cva> listZza = zzauVar.zza();
        while (!listZza.isEmpty()) {
            for (cva cvaVar : listZza) {
                boolean zIsEmpty = TextUtils.isEmpty(str2);
                zzic zzicVar = kvaVar.a;
                try {
                    if (!zIsEmpty) {
                        Cursor cursor = null;
                        zzid zzidVar2 = null;
                        Cursor cursor2 = null;
                        try {
                            try {
                                Cursor cursorQuery = kvaVar.M().query("raw_events_metadata", new String[]{TtmlNode.TAG_METADATA}, "app_id = ? and metadata_fingerprint = ?", new String[]{str4, Long.toString(cvaVar.b)}, null, null, "rowid", ExifInterface.GPS_MEASUREMENT_2D);
                                try {
                                    try {
                                        if (cursorQuery.moveToFirst()) {
                                            try {
                                                zzidVar = (zzid) ((com.google.android.gms.internal.measurement.zzic) zzpk.H(zzid.zzaE(), cursorQuery.getBlob(0))).zzbd();
                                                try {
                                                    if (cursorQuery.moveToNext()) {
                                                        zzicVar.zzaW().zze().zzb("Get multiple raw event metadata records, expected one. appId", zzgu.d(str4));
                                                    }
                                                    cursorQuery.close();
                                                    cursorQuery.close();
                                                } catch (SQLiteException e) {
                                                    e = e;
                                                    cursor = cursorQuery;
                                                    zzicVar.zzaW().zzb().zzc("Data loss. Error selecting raw event. appId", zzgu.d(str4), e);
                                                    if (cursor != null) {
                                                        cursor.close();
                                                    }
                                                }
                                                zzidVar2 = zzidVar;
                                            } catch (IOException e2) {
                                                zzicVar.zzaW().zzb().zzc("Data loss. Failed to merge raw event metadata. appId", zzgu.d(str4), e2);
                                                cursorQuery.close();
                                            }
                                            if (zzidVar2 != null) {
                                                it = zzidVar2.zzf().iterator();
                                                while (true) {
                                                    if (it.hasNext()) {
                                                        if (((zziu) it.next()).zzc().equals(str2)) {
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            zzicVar.zzaW().zzb().zzb("Raw event metadata record is missing. appId", zzgu.d(str4));
                                        }
                                        cursorQuery.close();
                                    } catch (Throwable th) {
                                        th = th;
                                        cursor2 = cursorQuery;
                                        if (cursor2 != null) {
                                            cursor2.close();
                                        }
                                        throw th;
                                    }
                                } catch (SQLiteException e3) {
                                    e = e3;
                                    zzidVar = null;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (SQLiteException e4) {
                            e = e4;
                            zzidVar = null;
                        }
                        if (zzidVar2 != null) {
                            it = zzidVar2.zzf().iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    if (((zziu) it.next()).zzc().equals(str2)) {
                                    }
                                }
                            }
                        }
                    }
                    long jUpdate = M().update("raw_events", contentValues, "rowid = ?", new String[]{String.valueOf(j2)});
                    if (jUpdate != 1) {
                        zzicVar.zzaW().zzb().zzc("Failed to update raw event. appId, updatedRows", zzgu.d(str3), Long.valueOf(jUpdate));
                    }
                } catch (SQLiteException e5) {
                    zzicVar.zzaW().zzb().zzc("Error updating raw event. appId", zzgu.d(str3), e5);
                }
                zzpg zzpgVar = kvaVar.b;
                zzpk zzpkVarZzp = zzpgVar.zzp();
                zzhs zzhsVar = cvaVar.d;
                Bundle bundle3 = new Bundle();
                for (zzhw zzhwVar : zzhsVar.zza()) {
                    if (zzhwVar.zzj()) {
                        bundle3.putDouble(zzhwVar.zzb(), zzhwVar.zzk());
                    } else if (zzhwVar.zzh()) {
                        bundle3.putFloat(zzhwVar.zzb(), zzhwVar.zzi());
                    } else if (zzhwVar.zze()) {
                        bundle3.putLong(zzhwVar.zzb(), zzhwVar.zzf());
                    } else if (zzhwVar.zzc()) {
                        bundle3.putString(zzhwVar.zzb(), zzhwVar.zzd());
                    } else if (zzhwVar.zzl().isEmpty()) {
                        zzpkVarZzp.a.zzaW().zzb().zzb("Unexpected parameter type for parameter", zzhwVar);
                    } else {
                        bundle3.putParcelableArray(zzhwVar.zzb(), zzpk.J(zzhwVar.zzl()));
                    }
                }
                String string = bundle3.getString("_o");
                bundle3.remove("_o");
                String strZzd = zzhsVar.zzd();
                if (string == null) {
                    string = "";
                }
                zzgv zzgvVar = new zzgv(strZzd, string, bundle3, zzhsVar.zzf(), zzhsVar.zzo());
                Bundle bundle4 = zzgvVar.zze;
                String str5 = zzgvVar.zza;
                zzpp zzppVarZzk = zzicVar.zzk();
                if (str5.equals("_cmp")) {
                    bundle2 = new Bundle(bundle);
                    for (String str6 : bundle.keySet()) {
                        zzpg zzpgVar2 = zzpgVar;
                        if (str6.startsWith("gad_")) {
                            bundle2.remove(str6);
                        }
                        zzpgVar = zzpgVar2;
                    }
                } else {
                    bundle2 = bundle;
                }
                zzpg zzpgVar3 = zzpgVar;
                zzppVarZzk.k(bundle4, bundle2);
                zzbc zzbcVar = new zzbc(kvaVar.a, zzgvVar.zzb, str4, zzhsVar.zzd(), zzhsVar.zzf(), zzhsVar.zzo(), zzhsVar.zzi(), bundle4);
                j2 = cvaVar.a;
                long j3 = cvaVar.b;
                boolean z = cvaVar.c;
                zzg();
                a();
                Preconditions.checkNotNull(zzbcVar);
                str3 = zzbcVar.a;
                Preconditions.checkNotEmpty(str3);
                byte[] bArrZzcd = zzpgVar3.zzp().w(zzbcVar).zzcd();
                contentValues = new ContentValues();
                contentValues.put(CommonUrlParts.APP_ID, str3);
                contentValues.put("name", zzbcVar.b);
                contentValues.put(TJVerifierKt.TJC_TIMESTAMP, Long.valueOf(zzbcVar.d));
                contentValues.put("metadata_fingerprint", Long.valueOf(j3));
                contentValues.put("data", bArrZzcd);
                contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
                contentValues.put("elapsed_time", Long.valueOf(zzbcVar.e));
                kvaVar = this;
                str4 = str;
            }
            listZza = zzauVar.zza();
            kvaVar = this;
            str4 = str;
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005e  */
    /* JADX WARN: Code duplicated, block: B:26:0x0061 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x0064  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r3v0, types: [jvb, kva, lac] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v9, types: [android.database.Cursor] */
    public final zzjl r(String str) {
        Throwable th;
        SQLiteException e;
        zzic zzicVar = this.a;
        Preconditions.checkNotNull(str);
        zzg();
        a();
        ?? r2 = 0;
        zzjlVarZzf = null;
        zzjlVarZzf = null;
        zzjl zzjlVarZzf = null;
        try {
            try {
                this = M().rawQuery("select consent_state, consent_source from consent_settings where app_id=? limit 1;", new String[]{str});
                try {
                    if (this.moveToFirst()) {
                        zzjlVarZzf = zzjl.zzf(this.getString(0), this.getInt(1));
                    } else {
                        zzicVar.zzaW().zzk().zza("No data found");
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    zzicVar.zzaW().zzb().zzb("Error querying database.", e);
                    if (this != 0) {
                    }
                    if (zzjlVarZzf == null) {
                        return zzjl.zza;
                    }
                    return zzjlVarZzf;
                }
            } catch (Throwable th2) {
                th = th2;
                r2 = this;
                if (r2 != 0) {
                    r2.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            this = 0;
        } catch (Throwable th3) {
            th = th3;
            if (r2 != 0) {
                r2.close();
            }
            throw th;
        }
        this.close();
        if (zzjlVarZzf == null) {
            return zzjl.zza;
        }
        return zzjlVarZzf;
    }

    public final void s(String str, zzoh zzohVar) {
        zzg();
        a();
        Preconditions.checkNotNull(zzohVar);
        Preconditions.checkNotEmpty(str);
        zzic zzicVar = this.a;
        long jCurrentTimeMillis = zzicVar.zzba().currentTimeMillis();
        zzfx zzfxVar = zzfy.zzau;
        long jLongValue = jCurrentTimeMillis - ((Long) zzfxVar.zzb(null)).longValue();
        long j2 = zzohVar.zzb;
        if (j2 < jLongValue || j2 > ((Long) zzfxVar.zzb(null)).longValue() + jCurrentTimeMillis) {
            zzicVar.zzaW().zze().zzd("Storing trigger URI outside of the max retention time span. appId, now, timestamp", zzgu.d(str), Long.valueOf(jCurrentTimeMillis), Long.valueOf(j2));
        }
        zzicVar.zzaW().zzk().zza("Saving trigger URI");
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, str);
        contentValues.put("trigger_uri", zzohVar.zza);
        contentValues.put("source", Integer.valueOf(zzohVar.zzc));
        contentValues.put("timestamp_millis", Long.valueOf(j2));
        try {
            if (M().insert("trigger_uris", null, contentValues) == -1) {
                zzicVar.zzaW().zzb().zzb("Failed to insert trigger URI (got -1). appId", zzgu.d(str));
            }
        } catch (SQLiteException e) {
            zzicVar.zzaW().zzb().zzc("Error storing trigger URI. appId", zzgu.d(str), e);
        }
    }

    public final long t(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = M().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j2 = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j2;
            } catch (SQLiteException e) {
                this.a.zzaW().zzb().zzc("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final long u(String str, String[] strArr, long j2) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = M().rawQuery(str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    j2 = cursorRawQuery.getLong(0);
                }
                cursorRawQuery.close();
                return j2;
            } catch (SQLiteException e) {
                this.a.zzaW().zzb().zzc("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0033  */
    public final String v(String str, String[] strArr) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = M().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    cursorRawQuery.close();
                    return "";
                }
                String string = cursorRawQuery.getString(0);
                cursorRawQuery.close();
                return string;
            } catch (SQLiteException e) {
                this.a.zzaW().zzb().zzc("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        throw th;
    }

    public final void w(ContentValues contentValues) {
        zzic zzicVar = this.a;
        try {
            SQLiteDatabase sQLiteDatabaseM = M();
            String asString = contentValues.getAsString(CommonUrlParts.APP_ID);
            if (asString == null) {
                zzicVar.zzaW().zzd().zzb("Value of the primary key is not set.", zzgu.d(CommonUrlParts.APP_ID));
                return;
            }
            StringBuilder sb = new StringBuilder(10);
            sb.append("app_id = ?");
            if (sQLiteDatabaseM.update("consent_settings", contentValues, sb.toString(), new String[]{asString}) == 0 && sQLiteDatabaseM.insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                zzicVar.zzaW().zzb().zzc("Failed to insert/update table (got -1). key", zzgu.d("consent_settings"), zzgu.d(CommonUrlParts.APP_ID));
            }
        } catch (SQLiteException e) {
            zzicVar.zzaW().zzb().zzd("Error storing into table. key", zzgu.d("consent_settings"), zzgu.d(CommonUrlParts.APP_ID), e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x012a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v5 */
    public final qwa x(String str, String str2, String str3) {
        Cursor cursorQuery;
        Boolean boolValueOf;
        zzic zzicVar = this.a;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        zzg();
        a();
        ArrayList arrayList = new ArrayList(Arrays.asList("lifetime_count", "current_bundle_count", "last_fire_timestamp", "last_bundled_timestamp", "last_bundled_day", "last_sampled_complex_event_id", "last_sampling_rate", "last_exempt_from_sampling", "current_session_count"));
        ?? r3 = 0;
        try {
            try {
                cursorQuery = M().query(str, (String[]) arrayList.toArray(new String[0]), "app_id=? and name=?", new String[]{str2, str3}, null, null, null);
                try {
                    if (cursorQuery.moveToFirst()) {
                        long j2 = cursorQuery.getLong(0);
                        long j3 = cursorQuery.getLong(1);
                        long j4 = cursorQuery.getLong(2);
                        long j5 = 0;
                        long j6 = cursorQuery.isNull(3) ? 0L : cursorQuery.getLong(3);
                        Long lValueOf = cursorQuery.isNull(4) ? null : Long.valueOf(cursorQuery.getLong(4));
                        Long lValueOf2 = cursorQuery.isNull(5) ? null : Long.valueOf(cursorQuery.getLong(5));
                        Long lValueOf3 = cursorQuery.isNull(6) ? null : Long.valueOf(cursorQuery.getLong(6));
                        if (cursorQuery.isNull(7)) {
                            boolValueOf = null;
                        } else {
                            boolValueOf = Boolean.valueOf(cursorQuery.getLong(7) == 1);
                        }
                        if (!cursorQuery.isNull(8)) {
                            j5 = cursorQuery.getLong(8);
                        }
                        qwa qwaVar = new qwa(str2, str3, j2, j3, j5, j4, j6, lValueOf, lValueOf2, lValueOf3, boolValueOf);
                        if (cursorQuery.moveToNext()) {
                            zzicVar.zzaW().zzb().zzb("Got multiple records for event aggregates, expected one. appId", zzgu.d(str2));
                        }
                        cursorQuery.close();
                        return qwaVar;
                    }
                } catch (SQLiteException e) {
                    e = e;
                    zzicVar.zzaW().zzb().zzd("Error querying events. appId", zzgu.d(str2), zzicVar.zzl().a(str3), e);
                }
            } catch (Throwable th) {
                th = th;
                r3 = arrayList;
                if (r3 != 0) {
                    r3.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (r3 != 0) {
                r3.close();
            }
            throw th;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final void y(String str, qwa qwaVar) {
        zzic zzicVar = this.a;
        Preconditions.checkNotNull(qwaVar);
        zzg();
        a();
        ContentValues contentValues = new ContentValues();
        String str2 = qwaVar.a;
        contentValues.put(CommonUrlParts.APP_ID, str2);
        contentValues.put("name", qwaVar.b);
        contentValues.put("lifetime_count", Long.valueOf(qwaVar.c));
        contentValues.put("current_bundle_count", Long.valueOf(qwaVar.d));
        contentValues.put("last_fire_timestamp", Long.valueOf(qwaVar.f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(qwaVar.g));
        contentValues.put("last_bundled_day", qwaVar.h);
        contentValues.put("last_sampled_complex_event_id", qwaVar.i);
        contentValues.put("last_sampling_rate", qwaVar.j);
        contentValues.put("current_session_count", Long.valueOf(qwaVar.e));
        Boolean bool = qwaVar.k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (M().insertWithOnConflict(str, null, contentValues, 5) == -1) {
                zzicVar.zzaW().zzb().zzb("Failed to insert/update event aggregates (got -1). appId", zzgu.d(str2));
            }
        } catch (SQLiteException e) {
            zzicVar.zzaW().zzb().zzc("Error storing event aggregates. appId", zzgu.d(qwaVar.a), e);
        }
    }

    public final void z(String str, String str2) {
        Preconditions.checkNotEmpty(str2);
        zzg();
        a();
        try {
            M().delete(str, "app_id=?", new String[]{str2});
        } catch (SQLiteException e) {
            this.a.zzaW().zzb().zzc("Error deleting snapshot. appId", zzgu.d(str2), e);
        }
    }

    public final boolean zzD(String str) {
        zzls[] zzlsVarArr = {zzls.GOOGLE_SIGNAL};
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Integer.valueOf(zzlsVarArr[0].zza()));
        String strC = C(arrayList);
        String strB = B();
        return t(dg.c(new StringBuilder((strC.length() + 61) + strB.length()), "SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=?", strC, " AND NOT ", strB), new String[]{str}) != 0;
    }

    public final void zzc() {
        a();
        M().setTransactionSuccessful();
    }

    public final void zzd() {
        a();
        M().endTransaction();
    }
}
