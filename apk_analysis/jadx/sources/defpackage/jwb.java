package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class jwb implements ObjectEncoder {
    public static final jwb a = new jwb();

    static {
        bg.g(5, ag.c(4, ag.c(3, ag.c(2, ag.c(1, FieldDescriptor.builder("inferenceCommonLogEvent"), "options"), "inputsFormats"), "outputFormats"), "modelInitializationMs"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
