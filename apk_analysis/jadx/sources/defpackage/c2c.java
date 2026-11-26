package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzru;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class c2c implements ObjectEncoder {
    public static final c2c a = new c2c();
    public static final FieldDescriptor b = eh.b(1, FieldDescriptor.builder("errorCode"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        objectEncoderContext.add(b, ((zzru) obj).zza());
    }
}
