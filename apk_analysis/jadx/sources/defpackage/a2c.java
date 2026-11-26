package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzrr;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class a2c implements ObjectEncoder {
    public static final a2c a = new a2c();
    public static final FieldDescriptor b = eh.b(1, FieldDescriptor.builder("inferenceCommonLogEvent"));
    public static final FieldDescriptor c = eh.b(2, FieldDescriptor.builder("options"));
    public static final FieldDescriptor d = eh.b(3, FieldDescriptor.builder("detectedBarcodeFormats"));
    public static final FieldDescriptor e = eh.b(4, FieldDescriptor.builder("detectedBarcodeValueTypes"));
    public static final FieldDescriptor f = eh.b(5, FieldDescriptor.builder("imageInfo"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        zzrr zzrrVar = (zzrr) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, zzrrVar.zzd());
        objectEncoderContext2.add(c, zzrrVar.zze());
        objectEncoderContext2.add(d, zzrrVar.zza());
        objectEncoderContext2.add(e, zzrrVar.zzb());
        objectEncoderContext2.add(f, zzrrVar.zzc());
    }
}
