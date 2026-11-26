package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class tfb implements ObjectEncoder {
    public static final tfb a = new tfb();

    static {
        y83.e(5, g7.b(4, g7.b(3, g7.b(2, g7.b(1, FieldDescriptor.builder("detectorOptions"), "errorCodes"), "totalInitializationMs"), "loggingInitializationMs"), "otherErrors"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
