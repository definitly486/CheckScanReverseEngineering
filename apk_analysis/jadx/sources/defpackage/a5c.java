package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class a5c implements ObjectEncoder {
    public static final a5c a = new a5c();

    static {
        bg.g(4, ag.c(3, ag.c(2, ag.c(1, FieldDescriptor.builder("inferenceCommonLogEvent"), "detectorOptions"), "imageInfo"), "detectedFaces"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
