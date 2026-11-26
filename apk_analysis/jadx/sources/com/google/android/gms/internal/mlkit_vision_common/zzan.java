package com.google.android.gms.internal.mlkit_vision_common;

import com.google.firebase.encoders.ObjectEncoder;
import defpackage.xta;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzan {
    public final HashMap a;
    public final HashMap b;
    public final ObjectEncoder c;

    public zzan(HashMap map, HashMap map2, ObjectEncoder objectEncoder) {
        this.a = map;
        this.b = map2;
        this.c = objectEncoder;
    }

    public final byte[] zza(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new xta(byteArrayOutputStream, this.a, this.b, this.c).f(obj);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }
}
