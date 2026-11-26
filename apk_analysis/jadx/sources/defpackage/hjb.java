package defpackage;

import com.google.android.gms.internal.mlkit_common.zzmp;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class hjb implements ObjectEncoder {
    public static final hjb a = new hjb();
    public static final FieldDescriptor b = zg.e(1, FieldDescriptor.builder("api"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        objectEncoderContext.add(b, ((zzmp) obj).zza());
    }
}
