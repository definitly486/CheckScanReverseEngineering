package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class yob implements ObjectEncoder {
    public static final yob a = new yob();

    static {
        rz0.e(3, qz0.b(2, qz0.b(1, FieldDescriptor.builder("textEnhancementParam"), "autoWhiteBalanceEnabled"), "lightnessEnhancementParam"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
