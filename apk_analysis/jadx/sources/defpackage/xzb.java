package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class xzb implements ObjectEncoder {
    public static final xzb a = new xzb();

    static {
        bg.g(7, ag.c(6, ag.c(5, ag.c(4, ag.c(3, ag.c(2, ag.c(1, FieldDescriptor.builder("durationMs"), "imageSource"), "imageFormat"), "imageByteSize"), "imageWidth"), "imageHeight"), "rotationDegrees"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
