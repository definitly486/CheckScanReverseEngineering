package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class qnb implements ObjectEncoder {
    public static final qnb a = new qnb();

    static {
        rz0.e(2, qz0.b(1, FieldDescriptor.builder("handwritingRecognitionStrategy"), "recognitionSchedulingStrategy"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
