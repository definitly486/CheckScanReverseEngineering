package defpackage;

import com.google.android.gms.internal.mlkit_common.zznl;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class nkb implements ObjectEncoder {
    public static final nkb a = new nkb();
    public static final FieldDescriptor b = zg.e(1, FieldDescriptor.builder("modelInfo"));
    public static final FieldDescriptor c = zg.e(2, FieldDescriptor.builder("initialDownloadConditions"));
    public static final FieldDescriptor d = zg.e(3, FieldDescriptor.builder("updateDownloadConditions"));
    public static final FieldDescriptor e = zg.e(4, FieldDescriptor.builder("isModelUpdateEnabled"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, ((zznl) obj).zza());
        objectEncoderContext2.add(c, (Object) null);
        objectEncoderContext2.add(d, (Object) null);
        objectEncoderContext2.add(e, (Object) null);
    }
}
