package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class jkb implements ObjectEncoder {
    public static final jkb a = new jkb();

    static {
        y83.e(5, g7.b(4, g7.b(3, g7.b(2, g7.b(1, FieldDescriptor.builder("durationMs"), "handledErrors"), "partiallyHandledErrors"), "unhandledErrors"), "httpResponseCode"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
