package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzvd;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.remoteconfig.RemoteConfigConstants;

/* JADX INFO: loaded from: classes4.dex */
public final class bac implements ObjectEncoder {
    public static final bac a = new bac();
    public static final FieldDescriptor b = eh.b(1, FieldDescriptor.builder(RemoteConfigConstants.RequestFieldKey.APP_ID));
    public static final FieldDescriptor c = eh.b(2, FieldDescriptor.builder(RemoteConfigConstants.RequestFieldKey.APP_VERSION));
    public static final FieldDescriptor d = eh.b(3, FieldDescriptor.builder("firebaseProjectId"));
    public static final FieldDescriptor e = eh.b(4, FieldDescriptor.builder("mlSdkVersion"));
    public static final FieldDescriptor f = eh.b(5, FieldDescriptor.builder("tfliteSchemaVersion"));
    public static final FieldDescriptor g = eh.b(6, FieldDescriptor.builder("gcmSenderId"));
    public static final FieldDescriptor h = eh.b(7, FieldDescriptor.builder(DynamicLink.Builder.KEY_API_KEY));
    public static final FieldDescriptor i = eh.b(8, FieldDescriptor.builder("languages"));
    public static final FieldDescriptor j = eh.b(9, FieldDescriptor.builder("mlSdkInstanceId"));
    public static final FieldDescriptor k = eh.b(10, FieldDescriptor.builder("isClearcutClient"));
    public static final FieldDescriptor l = eh.b(11, FieldDescriptor.builder("isStandaloneMlkit"));
    public static final FieldDescriptor m = eh.b(12, FieldDescriptor.builder("isJsonLogging"));
    public static final FieldDescriptor n = eh.b(13, FieldDescriptor.builder("buildLevel"));
    public static final FieldDescriptor o = eh.b(14, FieldDescriptor.builder("optionalModuleVersion"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        zzvd zzvdVar = (zzvd) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, zzvdVar.zzg());
        objectEncoderContext2.add(c, zzvdVar.zzh());
        objectEncoderContext2.add(d, (Object) null);
        objectEncoderContext2.add(e, zzvdVar.zzj());
        objectEncoderContext2.add(f, zzvdVar.zzk());
        objectEncoderContext2.add(g, (Object) null);
        objectEncoderContext2.add(h, (Object) null);
        objectEncoderContext2.add(i, zzvdVar.zza());
        objectEncoderContext2.add(j, zzvdVar.zzi());
        objectEncoderContext2.add(k, zzvdVar.zzb());
        objectEncoderContext2.add(l, zzvdVar.zzd());
        objectEncoderContext2.add(m, zzvdVar.zzc());
        objectEncoderContext2.add(n, zzvdVar.zze());
        objectEncoderContext2.add(o, zzvdVar.zzf());
    }
}
