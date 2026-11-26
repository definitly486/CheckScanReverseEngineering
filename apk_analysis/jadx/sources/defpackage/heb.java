package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class heb implements ObjectEncoder {
    public static final heb a = new heb();

    static {
        rz0.e(4, qz0.b(3, qz0.b(2, qz0.b(1, FieldDescriptor.builder("supportedFormats"), "durationMs"), "errorCode"), "allowManualInput"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
