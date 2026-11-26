package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzur;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class m9c implements ObjectEncoder {
    public static final m9c a = new m9c();
    public static final FieldDescriptor b = eh.b(1, FieldDescriptor.builder("xMin"));
    public static final FieldDescriptor c = eh.b(2, FieldDescriptor.builder("yMin"));
    public static final FieldDescriptor d = eh.b(3, FieldDescriptor.builder("xMax"));
    public static final FieldDescriptor e = eh.b(4, FieldDescriptor.builder("yMax"));
    public static final FieldDescriptor f = eh.b(5, FieldDescriptor.builder("confidenceScore"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        zzur zzurVar = (zzur) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, zzurVar.zzc());
        objectEncoderContext2.add(c, zzurVar.zze());
        objectEncoderContext2.add(d, zzurVar.zzb());
        objectEncoderContext2.add(e, zzurVar.zzd());
        objectEncoderContext2.add(f, zzurVar.zza());
    }
}
