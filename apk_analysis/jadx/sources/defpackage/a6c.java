package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class a6c implements ObjectEncoder {
    public static final a6c a = new a6c();

    static {
        bg.g(4, ag.c(3, ag.c(2, ag.c(1, FieldDescriptor.builder("inferenceCommonLogEvent"), "options"), "imageInfo"), "imageQualityScores"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
