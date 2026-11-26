package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class agb implements ObjectEncoder {
    public static final agb a = new agb();

    static {
        rz0.e(11, qz0.b(10, qz0.b(9, qz0.b(8, qz0.b(7, qz0.b(6, qz0.b(5, qz0.b(4, qz0.b(3, qz0.b(2, qz0.b(1, FieldDescriptor.builder("screenName"), "sessionId"), "timestampMs"), "options"), "elementName"), "isAutoCaptureMode"), "pageIndex"), "appliedToAllPages"), "errorCode"), "callerAppId"), "cleanUpStrokeSize"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
