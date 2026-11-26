package com.google.android.gms.internal.mlkit_vision_barcode;

import defpackage.bva;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzav {
    public final String a;
    public final bva b;
    public bva c;

    public zzav(String str) {
        bva bvaVar = new bva();
        this.b = bvaVar;
        this.c = bvaVar;
        this.a = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.a);
        sb.append('{');
        bva bvaVar = this.b.b;
        String str = "";
        while (bvaVar != null) {
            Object obj = bvaVar.a;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String strDeepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
            }
            bvaVar = bvaVar.b;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzav zza(Object obj) {
        bva bvaVar = new bva();
        this.c.b = bvaVar;
        this.c = bvaVar;
        bvaVar.a = obj;
        return this;
    }
}
