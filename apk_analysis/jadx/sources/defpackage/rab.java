package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class rab implements ObjectEncoder {
    public static final rab a = new rab();

    static {
        rz0.e(5, qz0.b(4, qz0.b(3, qz0.b(2, qz0.b(1, FieldDescriptor.builder("errorCode"), "hasResult"), "isColdCall"), "imageInfo"), "recognizerOptions"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
