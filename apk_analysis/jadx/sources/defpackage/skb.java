package defpackage;

import com.google.android.gms.internal.mlkit_vision_common.zzla;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.remoteconfig.RemoteConfigConstants;

/* JADX INFO: loaded from: classes4.dex */
public final class skb implements ObjectEncoder {
    public static final skb a = new skb();
    public static final FieldDescriptor b = w7.d(1, FieldDescriptor.builder(RemoteConfigConstants.RequestFieldKey.APP_ID));
    public static final FieldDescriptor c = w7.d(2, FieldDescriptor.builder(RemoteConfigConstants.RequestFieldKey.APP_VERSION));
    public static final FieldDescriptor d = w7.d(3, FieldDescriptor.builder("firebaseProjectId"));
    public static final FieldDescriptor e = w7.d(4, FieldDescriptor.builder("mlSdkVersion"));
    public static final FieldDescriptor f = w7.d(5, FieldDescriptor.builder("tfliteSchemaVersion"));
    public static final FieldDescriptor g = w7.d(6, FieldDescriptor.builder("gcmSenderId"));
    public static final FieldDescriptor h = w7.d(7, FieldDescriptor.builder(DynamicLink.Builder.KEY_API_KEY));
    public static final FieldDescriptor i = w7.d(8, FieldDescriptor.builder("languages"));
    public static final FieldDescriptor j = w7.d(9, FieldDescriptor.builder("mlSdkInstanceId"));
    public static final FieldDescriptor k = w7.d(10, FieldDescriptor.builder("isClearcutClient"));
    public static final FieldDescriptor l = w7.d(11, FieldDescriptor.builder("isStandaloneMlkit"));
    public static final FieldDescriptor m = w7.d(12, FieldDescriptor.builder("isJsonLogging"));
    public static final FieldDescriptor n = w7.d(13, FieldDescriptor.builder("buildLevel"));
    public static final FieldDescriptor o = w7.d(14, FieldDescriptor.builder("optionalModuleVersion"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        zzla zzlaVar = (zzla) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, zzlaVar.zzg());
        objectEncoderContext2.add(c, zzlaVar.zzh());
        objectEncoderContext2.add(d, (Object) null);
        objectEncoderContext2.add(e, zzlaVar.zzj());
        objectEncoderContext2.add(f, zzlaVar.zzk());
        objectEncoderContext2.add(g, (Object) null);
        objectEncoderContext2.add(h, (Object) null);
        objectEncoderContext2.add(i, zzlaVar.zza());
        objectEncoderContext2.add(j, zzlaVar.zzi());
        objectEncoderContext2.add(k, zzlaVar.zzb());
        objectEncoderContext2.add(l, zzlaVar.zzd());
        objectEncoderContext2.add(m, zzlaVar.zzc());
        objectEncoderContext2.add(n, zzlaVar.zze());
        objectEncoderContext2.add(o, zzlaVar.zzf());
    }
}
