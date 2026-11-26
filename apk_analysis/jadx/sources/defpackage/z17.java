package defpackage;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.mlkit_common.zzq;
import com.google.android.gms.internal.mlkit_common.zzr;
import java.util.EnumMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class z17 {
    public static final EnumMap a;

    static {
        new EnumMap(pd0.class);
        a = new EnumMap(pd0.class);
    }

    public static String a() {
        return "COM.GOOGLE.BASE_".concat(String.valueOf((String) a.get(null)));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof z17) && Objects.equal(null, null) && Objects.equal(null, null) && Objects.equal(null, null);
    }

    public final int hashCode() {
        return Objects.hashCode(null, null, null);
    }

    public final String toString() {
        zzq zzqVarZzb = zzr.zzb("RemoteModel");
        zzqVarZzb.zza("modelName", null);
        zzqVarZzb.zza("baseModel", null);
        zzqVarZzb.zza("modelType", null);
        return zzqVarZzb.toString();
    }
}
