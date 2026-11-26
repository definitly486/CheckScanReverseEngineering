package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzfv;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class rnb implements ObjectEncoder {
    public static final rnb a = new rnb();
    public static final FieldDescriptor b = eh.b(1, FieldDescriptor.builder("logEventKey"));
    public static final FieldDescriptor c = eh.b(2, FieldDescriptor.builder("eventCount"));
    public static final FieldDescriptor d = eh.b(3, FieldDescriptor.builder("inferenceDurationStats"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        zzfv zzfvVar = (zzfv) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, zzfvVar.zza());
        objectEncoderContext2.add(c, zzfvVar.zzc());
        objectEncoderContext2.add(d, zzfvVar.zzb());
    }
}
