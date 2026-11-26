package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes4.dex */
public final class u3c implements ObjectEncoder {
    public static final u3c a = new u3c();

    static {
        bg.g(3, ag.c(2, ag.c(1, FieldDescriptor.builder("inferenceCommonLogEvent"), TJAdUnitConstants.String.BEACON_PARAMS), "imageInfo"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
