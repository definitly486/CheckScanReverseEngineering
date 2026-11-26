package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class iib implements ObjectEncoder {
    public static final iib a = new iib();

    static {
        rz0.e(10, qz0.b(9, qz0.b(8, qz0.b(7, qz0.b(6, qz0.b(5, qz0.b(4, qz0.b(3, qz0.b(2, qz0.b(1, FieldDescriptor.builder("durationMs"), "errorCode"), "isColdCall"), "autoManageModelOnBackground"), "autoManageModelOnLowMemory"), "isNnApiEnabled"), "eventsCount"), "otherErrors"), "remoteConfigValueForAcceleration"), "isAccelerated"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
