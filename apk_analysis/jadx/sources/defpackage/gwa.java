package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzjp;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zzlk;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class gwa extends iza {
    public final zzlk a;

    public gwa(zzlk zzlkVar) {
        Preconditions.checkNotNull(zzlkVar);
        this.a = zzlkVar;
    }

    @Override // defpackage.iza
    public final Map a(boolean z) {
        return this.a.zzd(null, null, z);
    }

    @Override // defpackage.iza
    public final Boolean b() {
        return (Boolean) this.a.zzx(4);
    }

    @Override // defpackage.iza
    public final Integer c() {
        return (Integer) this.a.zzx(3);
    }

    @Override // defpackage.iza
    public final String d() {
        return (String) this.a.zzx(0);
    }

    @Override // defpackage.iza
    public final Long e() {
        return (Long) this.a.zzx(1);
    }

    @Override // defpackage.iza
    public final Double f() {
        return (Double) this.a.zzx(2);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zza(String str, String str2, Bundle bundle) {
        this.a.zza(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zzb(String str, String str2, Bundle bundle, long j, long j2) {
        this.a.zzb(str, str2, bundle, j, 0L);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final Map zzd(String str, String str2, boolean z) {
        return this.a.zzd(str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zze(zzjp zzjpVar) {
        this.a.zze(zzjpVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zzf(zzjq zzjqVar) {
        this.a.zzf(zzjqVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zzg(zzjq zzjqVar) {
        this.a.zzg(zzjqVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String zzh() {
        return this.a.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String zzi() {
        return this.a.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String zzj() {
        return this.a.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String zzk() {
        return this.a.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final long zzl() {
        return this.a.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zzm(String str) {
        this.a.zzm(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zzn(String str) {
        this.a.zzn(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zzo(Bundle bundle) {
        this.a.zzo(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void zzp(String str, String str2, Bundle bundle) {
        this.a.zzp(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final List zzq(String str, String str2) {
        return this.a.zzq(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final int zzr(String str) {
        return this.a.zzr(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final Object zzx(int i) {
        return this.a.zzx(i);
    }
}
