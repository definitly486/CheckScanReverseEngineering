package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class p8c implements ObjectEncoder {
    public static final p8c a = new p8c();

    static {
        bg.g(7, ag.c(6, ag.c(5, ag.c(4, ag.c(3, ag.c(2, ag.c(1, FieldDescriptor.builder("pipelineNamespace"), "name"), "clientLibraryName"), "clientLibraryVersion"), "minClientLibraryVersion"), "maxClientLibraryVersion"), "sourceProduct"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
