package defpackage;

import com.google.android.gms.internal.measurement.zzahn;
import com.google.android.gms.internal.measurement.zzfh;
import com.google.android.gms.internal.measurement.zzfl;
import com.google.android.gms.internal.measurement.zzfn;
import com.google.android.gms.internal.measurement.zziu;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzpk;
import java.math.BigDecimal;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class bqa extends kpa {
    public final zzfn g;
    public final /* synthetic */ zqa h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bqa(zqa zqaVar, String str, int i, zzfn zzfnVar) {
        super(str, i);
        Objects.requireNonNull(zqaVar);
        this.h = zqaVar;
        this.g = zzfnVar;
    }

    @Override // defpackage.kpa
    public final int a() {
        return this.g.zzb();
    }

    @Override // defpackage.kpa
    public final boolean b() {
        return true;
    }

    @Override // defpackage.kpa
    public final boolean c() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean g(Long l, Long l2, zziu zziuVar, boolean z) {
        zzahn.zza();
        zzic zzicVar = this.h.a;
        boolean zZzp = zzicVar.zzc().zzp(this.a, zzfy.zzaD);
        zzfn zzfnVar = this.g;
        boolean zZze = zzfnVar.zze();
        boolean zZzf = zzfnVar.zzf();
        boolean zZzi = zzfnVar.zzi();
        Object[] objArr = zZze || zZzf || zZzi;
        Boolean boolD = null;
        boolF = null;
        Boolean boolF = null;
        Boolean boolF2 = null;
        boolD = null;
        boolD = null;
        boolD = null;
        Boolean boolF3 = null;
        boolD = null;
        if (z && objArr != true) {
            zzicVar.zzaW().zzk().zzc("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.b), zzfnVar.zza() ? Integer.valueOf(zzfnVar.zzb()) : null);
            return true;
        }
        zzfh zzfhVarZzd = zzfnVar.zzd();
        boolean zZzf2 = zzfhVarZzd.zzf();
        if (zziuVar.zzf()) {
            if (zzfhVarZzd.zzc()) {
                try {
                    boolF2 = kpa.f(new BigDecimal(zziuVar.zzh()), zzfhVarZzd.zzd(), 0.0d);
                } catch (NumberFormatException unused) {
                }
                boolD = kpa.d(boolF2, zZzf2);
            } else {
                zzicVar.zzaW().zze().zzb("No number filter for long property. property", zzicVar.zzl().c(zziuVar.zzc()));
            }
        } else if (zziuVar.zzk()) {
            if (zzfhVarZzd.zzc()) {
                double dZzl = zziuVar.zzl();
                try {
                    boolF = kpa.f(new BigDecimal(dZzl), zzfhVarZzd.zzd(), Math.ulp(dZzl));
                } catch (NumberFormatException unused2) {
                }
                boolD = kpa.d(boolF, zZzf2);
            } else {
                zzicVar.zzaW().zze().zzb("No number filter for double property. property", zzicVar.zzl().c(zziuVar.zzc()));
            }
        } else if (!zziuVar.zzd()) {
            zzicVar.zzaW().zze().zzb("User property has no value, property", zzicVar.zzl().c(zziuVar.zzc()));
        } else if (zzfhVarZzd.zza()) {
            boolD = kpa.d(kpa.e(zziuVar.zze(), zzfhVarZzd.zzb(), zzicVar.zzaW()), zZzf2);
        } else if (!zzfhVarZzd.zzc()) {
            zzicVar.zzaW().zze().zzb("No string or number filter defined. property", zzicVar.zzl().c(zziuVar.zzc()));
        } else if (zzpk.A(zziuVar.zze())) {
            String strZze = zziuVar.zze();
            zzfl zzflVarZzd = zzfhVarZzd.zzd();
            if (zzpk.A(strZze)) {
                try {
                    boolF3 = kpa.f(new BigDecimal(strZze), zzflVarZzd, 0.0d);
                } catch (NumberFormatException unused3) {
                }
            }
            boolD = kpa.d(boolF3, zZzf2);
        } else {
            zzicVar.zzaW().zze().zzc("Invalid user property value for Numeric number filter. property, value", zzicVar.zzl().c(zziuVar.zzc()), zziuVar.zze());
        }
        zzicVar.zzaW().zzk().zzb("Property filter result", boolD == null ? "null" : boolD);
        if (boolD == null) {
            return false;
        }
        this.c = Boolean.TRUE;
        if (!zZzi || boolD.booleanValue()) {
            if (!z || zzfnVar.zze()) {
                this.d = boolD;
            }
            if (boolD.booleanValue() && objArr != false && zziuVar.zza()) {
                long jZzb = zziuVar.zzb();
                if (l != null) {
                    jZzb = l.longValue();
                }
                if (zZzp && zzfnVar.zze() && !zzfnVar.zzf() && l2 != null) {
                    jZzb = l2.longValue();
                }
                if (zzfnVar.zzf()) {
                    this.f = Long.valueOf(jZzb);
                } else {
                    this.e = Long.valueOf(jZzb);
                }
            }
        }
        return true;
    }
}
