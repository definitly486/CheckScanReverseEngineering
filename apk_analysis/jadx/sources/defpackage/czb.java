package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzqk;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class czb implements ObjectEncoder {
    public static final czb a = new czb();
    public static final FieldDescriptor b = eh.b(1, FieldDescriptor.builder("imageFormat"));
    public static final FieldDescriptor c = eh.b(2, FieldDescriptor.builder("originalImageSize"));
    public static final FieldDescriptor d = eh.b(3, FieldDescriptor.builder("compressedImageSize"));
    public static final FieldDescriptor e = eh.b(4, FieldDescriptor.builder("isOdmlImage"));

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        zzqk zzqkVar = (zzqk) obj;
        ObjectEncoderContext objectEncoderContext2 = objectEncoderContext;
        objectEncoderContext2.add(b, zzqkVar.zza());
        objectEncoderContext2.add(c, zzqkVar.zzb());
        objectEncoderContext2.add(d, (Object) null);
        objectEncoderContext2.add(e, (Object) null);
    }
}
