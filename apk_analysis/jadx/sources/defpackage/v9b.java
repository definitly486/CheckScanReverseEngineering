package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes4.dex */
public final class v9b implements ObjectEncoder {
    public static final v9b a = new v9b();

    static {
        rz0.e(4, qz0.b(3, qz0.b(2, qz0.b(1, FieldDescriptor.builder("errorCode"), "imageInfo"), "isColdCall"), TJAdUnitConstants.String.BEACON_PARAMS));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
