package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class ovb implements ObjectEncoder {
    public static final ovb a = new ovb();

    static {
        bg.g(3, ag.c(2, ag.c(1, FieldDescriptor.builder("inferenceCommonLogEvent"), "options"), "imageInfo"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
