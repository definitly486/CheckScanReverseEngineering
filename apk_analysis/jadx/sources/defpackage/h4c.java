package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class h4c implements ObjectEncoder {
    public static final h4c a = new h4c();

    static {
        bg.g(3, ag.c(2, ag.c(1, FieldDescriptor.builder("textEnhancementParam"), "autoWhiteBalanceEnabled"), "lightnessEnhancementParam"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
