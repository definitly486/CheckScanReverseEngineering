package com.google.android.gms.internal.fido;

import defpackage.csa;
import defpackage.jta;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaj {
    public final String a;
    public final jta b;
    public jta c;

    public /* synthetic */ zzaj(String str) {
        jta jtaVar = new jta();
        this.b = jtaVar;
        this.c = jtaVar;
        this.a = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.a);
        sb.append('{');
        jta jtaVar = this.b.c;
        String str = "";
        while (jtaVar != null) {
            Object obj = jtaVar.b;
            sb.append(str);
            String str2 = jtaVar.a;
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
            jtaVar = jtaVar.c;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzaj zza(String str, int i) {
        String strValueOf = String.valueOf(i);
        csa csaVar = new csa();
        this.c.c = csaVar;
        this.c = csaVar;
        csaVar.b = strValueOf;
        csaVar.a = "errorCode";
        return this;
    }

    public final zzaj zzb(String str, Object obj) {
        jta jtaVar = new jta();
        this.c.c = jtaVar;
        this.c = jtaVar;
        jtaVar.b = obj;
        jtaVar.a = str;
        return this;
    }
}
