package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class a8c implements ObjectEncoder {
    public static final a8c a = new a8c();

    static {
        bg.g(3, ag.c(2, ag.c(1, FieldDescriptor.builder("errorCode"), "durationMs"), "subjectSegmenterOptions"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
