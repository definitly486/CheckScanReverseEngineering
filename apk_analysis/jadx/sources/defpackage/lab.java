package defpackage;

import com.google.android.gms.internal.mlkit_vision_common.zziq;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class lab implements ObjectEncoder {
    public static final lab a = new lab();
    public static final FieldDescriptor b = w7.d(1, FieldDescriptor.builder("durationMs"));
    public static final FieldDescriptor c = w7.d(2, FieldDescriptor.builder("imageSource"));
    public static final FieldDescriptor d = w7.d(3, FieldDescriptor.builder("imageFormat"));
    public static final FieldDescriptor e = w7.d(4, FieldDescriptor.builder("imageByteSize"));
    public static final FieldDescriptor f = w7.d(5, FieldDescriptor.builder("imageWidth"));
    public static final FieldDescriptor g = w7.d(6, FieldDescriptor.builder("imageHeight"));
    public static final FieldDescriptor h = w7.d(7, FieldDescriptor.builder("rotationDegrees"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        zziq zziqVar = (zziq) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, zziqVar.zzg());
        objectEncoderContext2.add(c, zziqVar.zzb());
        objectEncoderContext2.add(d, zziqVar.zza());
        objectEncoderContext2.add(e, zziqVar.zzc());
        objectEncoderContext2.add(f, zziqVar.zze());
        objectEncoderContext2.add(g, zziqVar.zzd());
        objectEncoderContext2.add(h, zziqVar.zzf());
    }
}
