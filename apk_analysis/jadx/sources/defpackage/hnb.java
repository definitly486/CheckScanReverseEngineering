package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzhc;
import com.google.android.gms.measurement.internal.zzhd;
import com.google.android.gms.measurement.internal.zzhe;
import com.google.android.gms.measurement.internal.zzhf;
import com.google.android.gms.measurement.internal.zzhg;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzjl;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: classes4.dex */
public final class hnb extends mvb {
    public static final Pair z = new Pair("", 0L);
    public SharedPreferences c;
    public SharedPreferences d;
    public zzhf e;
    public final zzhe f;
    public final zzhg g;
    public String h;
    public boolean i;
    public long j;
    public final zzhe k;
    public final zzhc l;
    public final zzhg m;
    public final zzhd n;
    public final zzhc o;
    public final zzhe p;
    public final zzhe q;
    public boolean r;
    public final zzhc s;
    public final zzhc t;
    public final zzhe u;
    public final zzhg v;
    public final zzhg w;
    public final zzhe x;
    public final zzhd y;

    public hnb(zzic zzicVar) {
        super(zzicVar);
        this.k = new zzhe(this, "session_timeout", 1800000L);
        this.l = new zzhc(this, "start_new_session", true);
        this.p = new zzhe(this, "last_pause_time", 0L);
        this.q = new zzhe(this, "session_id", 0L);
        this.m = new zzhg(this, "non_personalized_ads", null);
        this.n = new zzhd(this, "last_received_uri_timestamps_by_source", null);
        this.o = new zzhc(this, "allow_remote_dynamite", false);
        this.f = new zzhe(this, "first_open_time", 0L);
        new zzhe(this, "app_install_time", 0L);
        this.g = new zzhg(this, "app_instance_id", null);
        this.s = new zzhc(this, "app_backgrounded", false);
        this.t = new zzhc(this, "deep_link_retrieval_complete", false);
        this.u = new zzhe(this, "deep_link_retrieval_attempts", 0L);
        this.v = new zzhg(this, "firebase_feature_rollouts", null);
        this.w = new zzhg(this, "deferred_attribution_cache", null);
        this.x = new zzhe(this, "deferred_attribution_cache_timestamp", 0L);
        this.y = new zzhd(this, "default_event_parameters", null);
    }

    @Override // defpackage.mvb
    public final boolean a() {
        return true;
    }

    @Override // defpackage.mvb
    @EnsuresNonNull.List({@EnsuresNonNull({"this.preferences"}), @EnsuresNonNull({"this.monitoringSample"})})
    public final void b() {
        zzic zzicVar = this.a;
        SharedPreferences sharedPreferences = zzicVar.zzaZ().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.c = sharedPreferences;
        boolean z2 = sharedPreferences.getBoolean("has_been_opened", false);
        this.r = z2;
        if (!z2) {
            SharedPreferences.Editor editorEdit = this.c.edit();
            editorEdit.putBoolean("has_been_opened", true);
            editorEdit.apply();
        }
        zzicVar.zzc();
        this.e = new zzhf(this, Math.max(0L, ((Long) zzfy.zzc.zzb(null)).longValue()));
    }

    public final SharedPreferences d() {
        zzg();
        c();
        Preconditions.checkNotNull(this.c);
        return this.c;
    }

    public final SharedPreferences e() {
        zzg();
        c();
        SharedPreferences sharedPreferences = this.d;
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        zzic zzicVar = this.a;
        String strValueOf = String.valueOf(zzicVar.zzaZ().getPackageName());
        zzgs zzgsVarZzk = zzicVar.zzaW().zzk();
        String strConcat = strValueOf.concat("_preferences");
        zzgsVarZzk.zzb("Default prefs file", strConcat);
        SharedPreferences sharedPreferences2 = zzicVar.zzaZ().getSharedPreferences(strConcat, 0);
        this.d = sharedPreferences2;
        return sharedPreferences2;
    }

    public final SparseArray f() {
        Bundle bundleZza = this.n.zza();
        int[] intArray = bundleZza.getIntArray("uriSources");
        long[] longArray = bundleZza.getLongArray("uriTimestamps");
        if (intArray == null || longArray == null) {
            return new SparseArray();
        }
        if (intArray.length != longArray.length) {
            this.a.zzaW().zzb().zza("Trigger URI source and timestamp array lengths do not match");
            return new SparseArray();
        }
        SparseArray sparseArray = new SparseArray();
        for (int i = 0; i < intArray.length; i++) {
            sparseArray.put(intArray[i], Long.valueOf(longArray[i]));
        }
        return sparseArray;
    }

    public final zzjl g() {
        zzg();
        return zzjl.zzf(d().getString("consent_settings", "G1"), d().getInt("consent_source", 100));
    }

    public final void h(boolean z2) {
        zzg();
        this.a.zzaW().zzk().zzb("App measurement setting deferred collection", Boolean.valueOf(z2));
        SharedPreferences.Editor editorEdit = d().edit();
        editorEdit.putBoolean("deferred_analytics_collection", z2);
        editorEdit.apply();
    }

    public final boolean i(long j) {
        return j - this.k.zza() > this.p.zza();
    }
}
