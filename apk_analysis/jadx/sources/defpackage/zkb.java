package defpackage;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class zkb implements ObjectEncoder {
    public static final zkb a = new zkb();

    static {
        rz0.e(4, qz0.b(3, qz0.b(2, qz0.b(1, FieldDescriptor.builder("name"), ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY), "version"), "featureLevel"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
