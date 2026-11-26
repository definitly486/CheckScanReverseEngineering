package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class m0b implements ObjectEncoder {
    public static final m0b a = new m0b();

    static {
        y83.e(3, g7.b(2, g7.b(1, FieldDescriptor.builder("errorCode"), "isColdCall"), "imageInfo"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
