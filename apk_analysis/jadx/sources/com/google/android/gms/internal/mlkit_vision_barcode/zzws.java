package com.google.android.gms.internal.mlkit_vision_barcode;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public final class zzws implements zzwe {
    public final zzrd a;
    public zzvb b = new zzvb();
    public final int c;

    public zzws(zzrd zzrdVar, int i) {
        this.a = zzrdVar;
        zzxb.zza();
        this.c = i;
    }

    public static zzwe zzf(zzrd zzrdVar) {
        return new zzws(zzrdVar, 0);
    }

    public static zzwe zzg(zzrd zzrdVar, int i) {
        return new zzws(zzrdVar, 1);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzwe
    public final int zza() {
        return this.c;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzwe
    public final zzwe zzb(zzrc zzrcVar) {
        this.a.zzf(zzrcVar);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzwe
    public final zzwe zzc(zzvb zzvbVar) {
        this.b = zzvbVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzwe
    public final String zzd() {
        zzvd zzvdVarZzg = this.a.zzk().zzg();
        return (zzvdVarZzg == null || zzba.zzc(zzvdVarZzg.zzk())) ? "NA" : (String) Preconditions.checkNotNull(zzvdVarZzg.zzk());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzwe
    public final byte[] zze(int i, boolean z) {
        this.b.zzf(Boolean.valueOf(1 == (i ^ 1)));
        this.b.zze(Boolean.FALSE);
        zzvd zzvdVarZzm = this.b.zzm();
        zzrd zzrdVar = this.a;
        zzrdVar.zzj(zzvdVarZzm);
        try {
            zzxb.zza();
            if (i == 0) {
                return new JsonDataEncoderBuilder().configureWith(zzox.zza).ignoreNullValues(true).build().encode(zzrdVar.zzk()).getBytes("utf-8");
            }
            zzrf zzrfVarZzk = zzrdVar.zzk();
            zzfi zzfiVar = new zzfi();
            zzox.zza.configure(zzfiVar);
            return zzfiVar.zza().zza(zzrfVarZzk);
        } catch (UnsupportedEncodingException e) {
            throw new UnsupportedOperationException("Failed to covert logging to UTF-8 byte array", e);
        }
    }
}
