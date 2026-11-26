package defpackage;

import com.google.android.gms.internal.mlkit_common.zzmj;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class uib implements ObjectEncoder {
    public static final uib a = new uib();
    public static final FieldDescriptor b = zg.e(1, FieldDescriptor.builder("modelType"));
    public static final FieldDescriptor c = zg.e(2, FieldDescriptor.builder("isDownloaded"));
    public static final FieldDescriptor d = zg.e(3, FieldDescriptor.builder("modelName"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        zzmj zzmjVar = (zzmj) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, zzmjVar.zza());
        objectEncoderContext2.add(c, zzmjVar.zzb());
        objectEncoderContext2.add(d, (Object) null);
    }
}
