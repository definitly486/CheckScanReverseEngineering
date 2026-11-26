package defpackage;

import com.google.android.gms.internal.mlkit_common.zznh;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes4.dex */
public final class ikb implements ObjectEncoder {
    public static final ikb a = new ikb();
    public static final FieldDescriptor b = zg.e(1, FieldDescriptor.builder("name"));
    public static final FieldDescriptor c = zg.e(2, FieldDescriptor.builder("version"));
    public static final FieldDescriptor d = zg.e(3, FieldDescriptor.builder("source"));
    public static final FieldDescriptor e = zg.e(4, FieldDescriptor.builder("uri"));
    public static final FieldDescriptor f = zg.e(5, FieldDescriptor.builder("hash"));
    public static final FieldDescriptor g = zg.e(6, FieldDescriptor.builder("modelType"));
    public static final FieldDescriptor h = zg.e(7, FieldDescriptor.builder(TJAdUnitConstants.String.SIZE));
    public static final FieldDescriptor i = zg.e(8, FieldDescriptor.builder("hasLabelMap"));
    public static final FieldDescriptor j = zg.e(9, FieldDescriptor.builder("isManifestModel"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        zznh zznhVar = (zznh) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, zznhVar.zzd());
        objectEncoderContext2.add(c, (Object) null);
        objectEncoderContext2.add(d, zznhVar.zzb());
        objectEncoderContext2.add(e, (Object) null);
        objectEncoderContext2.add(f, zznhVar.zzc());
        objectEncoderContext2.add(g, zznhVar.zza());
        objectEncoderContext2.add(h, (Object) null);
        objectEncoderContext2.add(i, (Object) null);
        objectEncoderContext2.add(j, (Object) null);
    }
}
