package com.google.android.gms.internal.mlkit_vision_common;

import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.config.EncoderConfig;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzam implements EncoderConfig {
    public static final zzal d = zzal.zza;
    public static final /* synthetic */ int zza = 0;
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();
    public final zzal c = d;

    @Override // com.google.firebase.encoders.config.EncoderConfig
    public final /* bridge */ /* synthetic */ EncoderConfig registerEncoder(Class cls, ObjectEncoder objectEncoder) {
        this.a.put(cls, objectEncoder);
        this.b.remove(cls);
        return this;
    }

    public final zzan zza() {
        return new zzan(new HashMap(this.a), new HashMap(this.b), this.c);
    }

    @Override // com.google.firebase.encoders.config.EncoderConfig
    public final /* bridge */ /* synthetic */ EncoderConfig registerEncoder(Class cls, ValueEncoder valueEncoder) {
        this.b.put(cls, valueEncoder);
        this.a.remove(cls);
        return this;
    }
}
