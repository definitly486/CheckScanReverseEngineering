package com.google.android.gms.internal.measurement;

import defpackage.fg;
import defpackage.ni0;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzg {
    public final zzaw a;
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public final zzg zza;

    public zzg(zzg zzgVar, zzaw zzawVar) {
        this.zza = zzgVar;
        this.a = zzawVar;
    }

    public final zzao zza(zzao zzaoVar) {
        return this.a.zzb(this, zzaoVar);
    }

    public final zzao zzb(zzae zzaeVar) {
        zzao zzaoVarZzb = zzao.zzf;
        Iterator itZzg = zzaeVar.zzg();
        while (itZzg.hasNext()) {
            zzaoVarZzb = this.a.zzb(this, zzaeVar.zzl(((Integer) itZzg.next()).intValue()));
            if (zzaoVarZzb instanceof zzag) {
                break;
            }
        }
        return zzaoVarZzb;
    }

    public final zzg zzc() {
        return new zzg(this, this.a);
    }

    public final boolean zzd(String str) {
        if (this.b.containsKey(str)) {
            return true;
        }
        zzg zzgVar = this.zza;
        if (zzgVar != null) {
            return zzgVar.zzd(str);
        }
        return false;
    }

    public final void zze(String str, zzao zzaoVar) {
        zzg zzgVar;
        HashMap map = this.b;
        if (!map.containsKey(str) && (zzgVar = this.zza) != null && zzgVar.zzd(str)) {
            zzgVar.zze(str, zzaoVar);
        } else {
            if (this.c.containsKey(str)) {
                return;
            }
            if (zzaoVar == null) {
                map.remove(str);
            } else {
                map.put(str, zzaoVar);
            }
        }
    }

    public final void zzf(String str, zzao zzaoVar) {
        if (this.c.containsKey(str)) {
            return;
        }
        HashMap map = this.b;
        if (zzaoVar == null) {
            map.remove(str);
        } else {
            map.put(str, zzaoVar);
        }
    }

    public final void zzg(String str, zzao zzaoVar) {
        zzf(str, zzaoVar);
        this.c.put(str, Boolean.TRUE);
    }

    public final zzao zzh(String str) {
        HashMap map = this.b;
        if (map.containsKey(str)) {
            return (zzao) map.get(str);
        }
        zzg zzgVar = this.zza;
        if (zzgVar != null) {
            return zzgVar.zzh(str);
        }
        fg.c(ni0.c(str, " is not defined"));
        return null;
    }
}
