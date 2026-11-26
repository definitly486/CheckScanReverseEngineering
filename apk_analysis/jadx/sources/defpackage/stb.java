package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzvz;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class stb implements ObjectEncoder {
    public static final stb a = new stb();
    public static final FieldDescriptor b = eh.b(1, FieldDescriptor.builder("format"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        objectEncoderContext.add(b, ((zzvz) obj).zza());
    }
}
