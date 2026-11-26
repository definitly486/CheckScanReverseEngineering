package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzut;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class l9c implements ObjectEncoder {
    public static final l9c a = new l9c();
    public static final FieldDescriptor b = eh.b(1, FieldDescriptor.builder("appName"));
    public static final FieldDescriptor c = eh.b(2, FieldDescriptor.builder("sessionId"));
    public static final FieldDescriptor d = eh.b(3, FieldDescriptor.builder("startZoomLevel"));
    public static final FieldDescriptor e = eh.b(4, FieldDescriptor.builder("endZoomLevel"));
    public static final FieldDescriptor f = eh.b(5, FieldDescriptor.builder("durationMs"));
    public static final FieldDescriptor g = eh.b(6, FieldDescriptor.builder("predictedArea"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        zzut zzutVar = (zzut) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, zzutVar.zze());
        objectEncoderContext2.add(c, zzutVar.zzf());
        objectEncoderContext2.add(d, zzutVar.zzc());
        objectEncoderContext2.add(e, zzutVar.zzb());
        objectEncoderContext2.add(f, zzutVar.zzd());
        objectEncoderContext2.add(g, zzutVar.zza());
    }
}
