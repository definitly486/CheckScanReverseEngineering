package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class dbb implements ObjectEncoder {
    public static final dbb a = new dbb();

    static {
        rz0.e(4, qz0.b(3, qz0.b(2, qz0.b(1, FieldDescriptor.builder("remoteModelOptions"), "localModelOptions"), "errorCodes"), "modelInitializationMs"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
