package defpackage;

import com.google.android.gms.internal.mlkit_common.zzqv;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.remoteconfig.RemoteConfigConstants;

/* JADX INFO: loaded from: classes4.dex */
public final class fzb implements ObjectEncoder {
    public static final fzb a = new fzb();
    public static final FieldDescriptor b = zg.e(1, FieldDescriptor.builder(RemoteConfigConstants.RequestFieldKey.APP_ID));
    public static final FieldDescriptor c = zg.e(2, FieldDescriptor.builder(RemoteConfigConstants.RequestFieldKey.APP_VERSION));
    public static final FieldDescriptor d = zg.e(3, FieldDescriptor.builder("firebaseProjectId"));
    public static final FieldDescriptor e = zg.e(4, FieldDescriptor.builder("mlSdkVersion"));
    public static final FieldDescriptor f = zg.e(5, FieldDescriptor.builder("tfliteSchemaVersion"));
    public static final FieldDescriptor g = zg.e(6, FieldDescriptor.builder("gcmSenderId"));
    public static final FieldDescriptor h = zg.e(7, FieldDescriptor.builder(DynamicLink.Builder.KEY_API_KEY));
    public static final FieldDescriptor i = zg.e(8, FieldDescriptor.builder("languages"));
    public static final FieldDescriptor j = zg.e(9, FieldDescriptor.builder("mlSdkInstanceId"));
    public static final FieldDescriptor k = zg.e(10, FieldDescriptor.builder("isClearcutClient"));
    public static final FieldDescriptor l = zg.e(11, FieldDescriptor.builder("isStandaloneMlkit"));
    public static final FieldDescriptor m = zg.e(12, FieldDescriptor.builder("isJsonLogging"));
    public static final FieldDescriptor n = zg.e(13, FieldDescriptor.builder("buildLevel"));
    public static final FieldDescriptor o = zg.e(14, FieldDescriptor.builder("optionalModuleVersion"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        zzqv zzqvVar = (zzqv) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, zzqvVar.zzg());
        objectEncoderContext2.add(c, zzqvVar.zzh());
        objectEncoderContext2.add(d, (Object) null);
        objectEncoderContext2.add(e, zzqvVar.zzj());
        objectEncoderContext2.add(f, zzqvVar.zzk());
        objectEncoderContext2.add(g, (Object) null);
        objectEncoderContext2.add(h, (Object) null);
        objectEncoderContext2.add(i, zzqvVar.zza());
        objectEncoderContext2.add(j, zzqvVar.zzi());
        objectEncoderContext2.add(k, zzqvVar.zzb());
        objectEncoderContext2.add(l, zzqvVar.zzd());
        objectEncoderContext2.add(m, zzqvVar.zzc());
        objectEncoderContext2.add(n, zzqvVar.zze());
        objectEncoderContext2.add(o, zzqvVar.zzf());
    }
}
