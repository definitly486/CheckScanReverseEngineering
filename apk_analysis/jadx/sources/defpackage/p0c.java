package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class p0c implements ObjectEncoder {
    public static final p0c a = new p0c();

    static {
        bg.g(4, ag.c(3, ag.c(2, ag.c(1, FieldDescriptor.builder("cameraId"), "physicalCameraIds"), "deviceModel"), "enableMlDenoiser"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
