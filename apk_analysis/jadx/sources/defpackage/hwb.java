package defpackage;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class hwb implements ObjectEncoder {
    public static final hwb a = new hwb();

    static {
        bg.g(2, ag.c(1, FieldDescriptor.builder(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY), "dims"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
