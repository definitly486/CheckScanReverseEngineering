package com.google.android.gms.internal.mlkit_vision_common;

import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import defpackage.xta;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zzaj implements ObjectEncoder {
    public static final /* synthetic */ zzaj zza = new zzaj();

    @Override // com.google.firebase.encoders.Encoder
    public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        Map.Entry entry = (Map.Entry) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(xta.g, entry.getKey());
        objectEncoderContext2.add(xta.h, entry.getValue());
    }
}
