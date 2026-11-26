package com.google.android.gms.internal.mlkit_vision_barcode;

import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.config.EncoderConfig;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfi implements EncoderConfig {
    public static final zzfh d = new ObjectEncoder() { // from class: com.google.android.gms.internal.mlkit_vision_barcode.zzfh
        @Override // com.google.firebase.encoders.Encoder
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            zzfh zzfhVar = zzfi.d;
            throw new EncodingException("Couldn't find encoder for type ".concat(String.valueOf(obj.getClass().getCanonicalName())));
        }
    };
    public static final /* synthetic */ int zza = 0;
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();
    public final zzfh c = d;

    @Override // com.google.firebase.encoders.config.EncoderConfig
    public final /* bridge */ /* synthetic */ EncoderConfig registerEncoder(Class cls, ObjectEncoder objectEncoder) {
        this.a.put(cls, objectEncoder);
        this.b.remove(cls);
        return this;
    }

    public final zzfj zza() {
        return new zzfj(new HashMap(this.a), new HashMap(this.b), this.c);
    }

    @Override // com.google.firebase.encoders.config.EncoderConfig
    public final /* bridge */ /* synthetic */ EncoderConfig registerEncoder(Class cls, ValueEncoder valueEncoder) {
        this.b.put(cls, valueEncoder);
        this.a.remove(cls);
        return this;
    }
}
