package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class qeb implements ObjectEncoder {
    public static final qeb a = new qeb();

    static {
        y83.e(4, g7.b(3, g7.b(2, g7.b(1, FieldDescriptor.builder("inferenceCommonLogEvent"), "detectorOptions"), "imageInfo"), "detectedFaces"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
