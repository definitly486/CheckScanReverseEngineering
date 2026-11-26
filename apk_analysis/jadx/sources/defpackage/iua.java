package defpackage;

import com.google.android.gms.measurement.internal.zzjk;
import java.util.EnumMap;

/* JADX INFO: loaded from: classes4.dex */
public final class iua {
    public final EnumMap a;

    public iua(EnumMap enumMap) {
        EnumMap enumMap2 = new EnumMap(zzjk.class);
        this.a = enumMap2;
        enumMap2.putAll(enumMap);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001b  */
    public final void a(zzjk zzjkVar, int i) {
        eua euaVar = eua.UNSET;
        if (i == -30) {
            euaVar = eua.TCF;
        } else if (i == -20) {
            euaVar = eua.API;
        } else if (i == -10) {
            euaVar = eua.MANIFEST;
        } else if (i == 0) {
            euaVar = eua.API;
        } else if (i == 30) {
            euaVar = eua.INITIALIZATION;
        }
        this.a.put(zzjkVar, euaVar);
    }

    public final void b(zzjk zzjkVar, eua euaVar) {
        this.a.put(zzjkVar, euaVar);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("1");
        for (zzjk zzjkVar : zzjk.values()) {
            eua euaVar = (eua) this.a.get(zzjkVar);
            if (euaVar == null) {
                euaVar = eua.UNSET;
            }
            sb.append(euaVar.d());
        }
        return sb.toString();
    }

    public iua() {
        this.a = new EnumMap(zzjk.class);
    }
}
