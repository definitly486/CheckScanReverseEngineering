package defpackage;

import com.google.android.gms.internal.mlkit_common.zzlo;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class gfb implements ObjectEncoder {
    public static final gfb a = new gfb();
    public static final FieldDescriptor b = zg.e(1, FieldDescriptor.builder("modelType"));
    public static final FieldDescriptor c = zg.e(2, FieldDescriptor.builder("isSuccessful"));
    public static final FieldDescriptor d = zg.e(3, FieldDescriptor.builder("modelName"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        zzlo zzloVar = (zzlo) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, zzloVar.zza());
        objectEncoderContext2.add(c, zzloVar.zzb());
        objectEncoderContext2.add(d, (Object) null);
    }
}
