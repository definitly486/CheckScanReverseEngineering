package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
public enum zzhc {
    VOID(Void.class),
    INT(Integer.class),
    LONG(Long.class),
    FLOAT(Float.class),
    DOUBLE(Double.class),
    BOOLEAN(Boolean.class),
    STRING(String.class),
    BYTE_STRING(zzfp.class),
    ENUM(Integer.class),
    MESSAGE(Object.class);

    private final Class zzl;

    static {
        zzfp zzfpVar = zzfp.zza;
    }

    zzhc(Class cls) {
        this.zzl = cls;
    }

    public final Class zza() {
        return this.zzl;
    }
}
