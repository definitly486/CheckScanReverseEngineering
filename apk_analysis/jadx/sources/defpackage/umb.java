package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class umb implements ObjectEncoder {
    public static final umb a = new umb();

    static {
        y83.e(3, g7.b(2, g7.b(1, FieldDescriptor.builder("numSamples"), "errorCode"), "metricResults"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
