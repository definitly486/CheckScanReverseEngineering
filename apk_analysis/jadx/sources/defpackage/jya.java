package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzdg;
import com.google.android.gms.internal.mlkit_vision_barcode.zzdq;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class jya implements zzdg {
    public transient cya b;
    public transient kxa c;
    public transient fxa d;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzdg) {
            return zzv().equals(((zzdg) obj).zzv());
        }
        return false;
    }

    public final int hashCode() {
        return zzv().hashCode();
    }

    public final String toString() {
        return zzv().toString();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzdg
    public boolean zzt(Object obj, Object obj2) {
        throw null;
    }

    public final Collection zzu() {
        cya cyaVar = this.b;
        if (cyaVar != null) {
            return cyaVar;
        }
        yxa yxaVar = (yxa) this;
        cya gyaVar = yxaVar instanceof zzdq ? new gya(yxaVar) : new cya(yxaVar);
        this.b = gyaVar;
        return gyaVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzdg
    public final Map zzv() {
        fxa fxaVar = this.d;
        if (fxaVar != null) {
            return fxaVar;
        }
        yxa yxaVar = (yxa) this;
        fxa fxaVar2 = new fxa(yxaVar, yxaVar.e);
        this.d = fxaVar2;
        return fxaVar2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzdg
    public final Set zzw() {
        kxa kxaVar = this.c;
        if (kxaVar != null) {
            return kxaVar;
        }
        yxa yxaVar = (yxa) this;
        kxa kxaVar2 = new kxa(yxaVar, yxaVar.e);
        this.c = kxaVar2;
        return kxaVar2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzdg
    public final boolean zzx(Object obj, Object obj2) {
        wxa wxaVarA = ((fxa) zzv()).get(obj);
        return wxaVarA != null && wxaVarA.contains(obj2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzdg
    public final boolean zzy(Object obj, Object obj2) {
        wxa wxaVarA = ((fxa) zzv()).get(obj);
        return wxaVarA != null && wxaVarA.remove(obj2);
    }
}
