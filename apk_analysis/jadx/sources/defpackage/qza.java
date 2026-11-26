package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class qza implements ObjectEncoder {
    public static final qza a = new qza();

    static {
        y83.e(3, g7.b(2, g7.b(1, FieldDescriptor.builder("errorCode"), "imageInfo"), "isColdCall"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
