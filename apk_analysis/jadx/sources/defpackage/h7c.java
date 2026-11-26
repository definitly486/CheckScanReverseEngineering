package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class h7c implements ObjectEncoder {
    public static final h7c a = new h7c();

    static {
        bg.g(5, ag.c(4, ag.c(3, ag.c(2, ag.c(1, FieldDescriptor.builder("detectorMode"), "personDetectionMode"), "landmarkDetectionMode"), "preferredHardwareConfigs"), "runConfig"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
