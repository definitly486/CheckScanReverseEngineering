package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class lxb implements ObjectEncoder {
    public static final lxb a = new lxb();

    static {
        rz0.e(6, qz0.b(5, qz0.b(4, qz0.b(3, qz0.b(2, qz0.b(1, FieldDescriptor.builder("appName"), "sessionId"), "startZoomLevel"), "endZoomLevel"), "durationMs"), "predictedArea"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
