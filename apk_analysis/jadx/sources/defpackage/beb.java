package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class beb implements ObjectEncoder {
    public static final beb a = new beb();

    static {
        y83.e(6, g7.b(5, g7.b(4, g7.b(3, g7.b(2, g7.b(1, FieldDescriptor.builder("inferenceCommonLogEvent"), "options"), "imageInfo"), "detectorOptions"), "contourDetectedFaces"), "nonContourDetectedFaces"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
