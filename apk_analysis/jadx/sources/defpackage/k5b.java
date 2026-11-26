package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class k5b implements ObjectEncoder {
    public static final k5b a = new k5b();

    static {
        y83.e(4, g7.b(3, g7.b(2, g7.b(1, FieldDescriptor.builder("callingSource"), "supportedFormats"), "durationMs"), "errorCode"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
