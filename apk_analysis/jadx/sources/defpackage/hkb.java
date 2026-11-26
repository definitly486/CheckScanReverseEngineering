package defpackage;

import com.google.android.gms.internal.mlkit_common.zznc;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class hkb implements ObjectEncoder {
    public static final hkb a = new hkb();
    public static final FieldDescriptor b = zg.e(1, FieldDescriptor.builder("options"));
    public static final FieldDescriptor c = zg.e(2, FieldDescriptor.builder("roughDownloadDurationMs"));
    public static final FieldDescriptor d = zg.e(3, FieldDescriptor.builder("errorCode"));
    public static final FieldDescriptor e = zg.e(4, FieldDescriptor.builder("exactDownloadDurationMs"));
    public static final FieldDescriptor f = zg.e(5, FieldDescriptor.builder("downloadStatus"));
    public static final FieldDescriptor g = zg.e(6, FieldDescriptor.builder("downloadFailureStatus"));
    public static final FieldDescriptor h = zg.e(7, FieldDescriptor.builder("mddDownloadErrorCodes"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        zznc zzncVar = (zznc) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, zzncVar.zzc());
        objectEncoderContext2.add(c, zzncVar.zzf());
        objectEncoderContext2.add(d, zzncVar.zza());
        objectEncoderContext2.add(e, zzncVar.zze());
        objectEncoderContext2.add(f, zzncVar.zzb());
        objectEncoderContext2.add(g, zzncVar.zzd());
        objectEncoderContext2.add(h, (Object) null);
    }
}
