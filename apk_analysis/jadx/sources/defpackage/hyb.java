package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzqd;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class hyb implements ObjectEncoder {
    public static final hyb a = new hyb();
    public static final FieldDescriptor b = eh.b(1, FieldDescriptor.builder("maxMs"));
    public static final FieldDescriptor c = eh.b(2, FieldDescriptor.builder("minMs"));
    public static final FieldDescriptor d = eh.b(3, FieldDescriptor.builder("avgMs"));
    public static final FieldDescriptor e = eh.b(4, FieldDescriptor.builder("firstQuartileMs"));
    public static final FieldDescriptor f = eh.b(5, FieldDescriptor.builder("medianMs"));
    public static final FieldDescriptor g = eh.b(6, FieldDescriptor.builder("thirdQuartileMs"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        zzqd zzqdVar = (zzqd) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, zzqdVar.zzc());
        objectEncoderContext2.add(c, zzqdVar.zze());
        objectEncoderContext2.add(d, zzqdVar.zza());
        objectEncoderContext2.add(e, zzqdVar.zzb());
        objectEncoderContext2.add(f, zzqdVar.zzd());
        objectEncoderContext2.add(g, zzqdVar.zzf());
    }
}
