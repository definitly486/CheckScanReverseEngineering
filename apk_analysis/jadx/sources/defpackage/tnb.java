package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzft;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class tnb implements ObjectEncoder {
    public static final tnb a = new tnb();
    public static final FieldDescriptor b = eh.b(1, FieldDescriptor.builder("errorCode"));
    public static final FieldDescriptor c = eh.b(2, FieldDescriptor.builder("hasResult"));
    public static final FieldDescriptor d = eh.b(3, FieldDescriptor.builder("isColdCall"));
    public static final FieldDescriptor e = eh.b(4, FieldDescriptor.builder("imageInfo"));
    public static final FieldDescriptor f = eh.b(5, FieldDescriptor.builder("options"));
    public static final FieldDescriptor g = eh.b(6, FieldDescriptor.builder("detectedBarcodeFormats"));
    public static final FieldDescriptor h = eh.b(7, FieldDescriptor.builder("detectedBarcodeValueTypes"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        zzft zzftVar = (zzft) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, zzftVar.zzc());
        objectEncoderContext2.add(c, (Object) null);
        objectEncoderContext2.add(d, zzftVar.zze());
        objectEncoderContext2.add(e, (Object) null);
        objectEncoderContext2.add(f, zzftVar.zzd());
        objectEncoderContext2.add(g, zzftVar.zza());
        objectEncoderContext2.add(h, zzftVar.zzb());
    }
}
