package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class j0c implements ObjectEncoder {
    public static final j0c a = new j0c();

    static {
        rz0.e(3, qz0.b(2, qz0.b(1, FieldDescriptor.builder("numSamples"), "errorCode"), "metricResults"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
