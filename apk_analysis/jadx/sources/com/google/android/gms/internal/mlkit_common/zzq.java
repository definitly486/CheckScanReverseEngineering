package com.google.android.gms.internal.mlkit_common;

import defpackage.s6c;
import defpackage.y8c;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzq {
    public final String a;
    public final y8c b;
    public y8c c;

    public zzq(String str) {
        y8c y8cVar = new y8c();
        this.b = y8cVar;
        this.c = y8cVar;
        str.getClass();
        this.a = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.a);
        sb.append('{');
        y8c y8cVar = this.b.c;
        String str = "";
        while (y8cVar != null) {
            Object obj = y8cVar.b;
            sb.append(str);
            String str2 = y8cVar.a;
            if (str2 != null) {
                sb.append(str2);
                sb.append('=');
            }
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String strDeepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
            }
            y8cVar = y8cVar.c;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzq zza(String str, Object obj) {
        y8c y8cVar = new y8c();
        this.c.c = y8cVar;
        this.c = y8cVar;
        y8cVar.b = obj;
        y8cVar.a = str;
        return this;
    }

    public final zzq zzb(String str, boolean z) {
        String strValueOf = String.valueOf(z);
        s6c s6cVar = new s6c();
        this.c.c = s6cVar;
        this.c = s6cVar;
        s6cVar.b = strValueOf;
        s6cVar.a = "isManifestFile";
        return this;
    }
}
