package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzqq;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class qzb implements ObjectEncoder {
    public static final qzb a = new qzb();
    public static final FieldDescriptor b = eh.b(1, FieldDescriptor.builder("durationMs"));
    public static final FieldDescriptor c = eh.b(2, FieldDescriptor.builder("errorCode"));
    public static final FieldDescriptor d = eh.b(3, FieldDescriptor.builder("isColdCall"));
    public static final FieldDescriptor e = eh.b(4, FieldDescriptor.builder("autoManageModelOnBackground"));
    public static final FieldDescriptor f = eh.b(5, FieldDescriptor.builder("autoManageModelOnLowMemory"));
    public static final FieldDescriptor g = eh.b(6, FieldDescriptor.builder("isNnApiEnabled"));
    public static final FieldDescriptor h = eh.b(7, FieldDescriptor.builder("eventsCount"));
    public static final FieldDescriptor i = eh.b(8, FieldDescriptor.builder("otherErrors"));
    public static final FieldDescriptor j = eh.b(9, FieldDescriptor.builder("remoteConfigValueForAcceleration"));
    public static final FieldDescriptor k = eh.b(10, FieldDescriptor.builder("isAccelerated"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        zzqq zzqqVar = (zzqq) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, zzqqVar.zze());
        objectEncoderContext2.add(c, zzqqVar.zza());
        objectEncoderContext2.add(d, zzqqVar.zzd());
        objectEncoderContext2.add(e, zzqqVar.zzb());
        objectEncoderContext2.add(f, zzqqVar.zzc());
        objectEncoderContext2.add(g, (Object) null);
        objectEncoderContext2.add(h, (Object) null);
        objectEncoderContext2.add(i, (Object) null);
        objectEncoderContext2.add(j, (Object) null);
        objectEncoderContext2.add(k, (Object) null);
    }
}
