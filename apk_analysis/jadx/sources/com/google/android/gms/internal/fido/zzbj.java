package com.google.android.gms.internal.fido;

import defpackage.me0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbj extends zzbk {
    public final String b;

    public zzbj(String str) {
        this.b = str;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzbk zzbkVar = (zzbk) obj;
        zzbkVar.getClass();
        String str = this.b;
        int length = str.length();
        String str2 = ((zzbj) zzbkVar).b;
        return length != str2.length() ? str.length() - str2.length() : str.compareTo(str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzbj.class == obj.getClass()) {
            return this.b.equals(((zzbj) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{3, this.b});
    }

    public final String toString() {
        return me0.c("\"", this.b, "\"");
    }
}
