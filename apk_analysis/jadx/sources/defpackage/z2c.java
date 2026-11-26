package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class z2c implements ObjectEncoder {
    public static final z2c a = new z2c();

    static {
        bg.g(2, ag.c(1, FieldDescriptor.builder("handwritingRecognitionStrategy"), "recognitionSchedulingStrategy"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
