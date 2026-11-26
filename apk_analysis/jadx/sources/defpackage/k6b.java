package defpackage;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class k6b implements ObjectEncoder {
    public static final k6b a = new k6b();

    static {
        y83.e(2, g7.b(1, FieldDescriptor.builder(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY), "dims"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
