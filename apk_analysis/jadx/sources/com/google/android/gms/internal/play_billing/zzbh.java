package com.google.android.gms.internal.play_billing;

import defpackage.fma;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbh {
    public final String a;
    public final fma b;
    public fma c;

    public zzbh(String str) {
        fma fmaVar = new fma();
        this.b = fmaVar;
        this.c = fmaVar;
        this.a = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.a);
        sb.append('{');
        fma fmaVar = (fma) this.b.c;
        String str = "";
        while (fmaVar != null) {
            Object obj = fmaVar.b;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String strDeepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
            }
            fmaVar = (fma) fmaVar.c;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzbh zza(Object obj) {
        fma fmaVar = new fma();
        this.c.c = fmaVar;
        this.c = fmaVar;
        fmaVar.b = obj;
        return this;
    }
}
