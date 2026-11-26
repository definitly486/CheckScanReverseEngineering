package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

/* JADX INFO: loaded from: classes4.dex */
public enum zzes {
    VOID(Void.class),
    INT(Integer.class),
    LONG(Long.class),
    FLOAT(Float.class),
    DOUBLE(Double.class),
    BOOLEAN(Boolean.class),
    STRING(String.class),
    BYTE_STRING(zzdf.class),
    ENUM(Integer.class),
    MESSAGE(Object.class);

    private final Class zzl;

    static {
        zzdf zzdfVar = zzdf.zzb;
    }

    zzes(Class cls) {
        this.zzl = cls;
    }

    public final Class zza() {
        return this.zzl;
    }
}
