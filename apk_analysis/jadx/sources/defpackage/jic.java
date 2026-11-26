package defpackage;

import com.google.android.gms.internal.measurement.zzabr;
import com.google.android.gms.internal.measurement.zzyd;

/* JADX INFO: loaded from: classes4.dex */
public final class jic implements zzyd {
    public final zzyd a;
    public final Object b;

    public jic(zzyd zzydVar, Object obj) {
        zzabr.zza(zzydVar, "log site key");
        this.a = zzydVar;
        zzabr.zza(obj, "log site qualifier");
        this.b = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof jic)) {
            return false;
        }
        jic jicVar = (jic) obj;
        return this.a.equals(jicVar.a) && this.b.equals(jicVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() ^ this.a.hashCode();
    }

    public final String toString() {
        String string = this.a.toString();
        int length = string.length();
        String string2 = this.b.toString();
        StringBuilder sb = new StringBuilder(length + 47 + string2.length() + 3);
        kv2.c(sb, "SpecializedLogSiteKey{ delegate='", string, "', qualifier='", string2);
        sb.append("' }");
        return sb.toString();
    }
}
