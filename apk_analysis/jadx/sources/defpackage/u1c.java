package defpackage;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class u1c implements ObjectEncoder {
    public static final u1c a = new u1c();

    static {
        bg.g(4, ag.c(3, ag.c(2, ag.c(1, FieldDescriptor.builder("name"), ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY), "version"), "featureLevel"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
