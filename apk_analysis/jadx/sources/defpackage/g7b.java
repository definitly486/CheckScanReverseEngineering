package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes4.dex */
public final class g7b implements ObjectEncoder {
    public static final g7b a = new g7b();

    static {
        y83.e(10, g7.b(9, g7.b(8, g7.b(7, g7.b(6, g7.b(5, g7.b(4, g7.b(3, g7.b(2, g7.b(1, FieldDescriptor.builder(RemoteConfigConstants.RequestFieldKey.SDK_VERSION), "osBuild"), "brand"), "device"), "hardware"), CommonUrlParts.MANUFACTURER), CommonUrlParts.MODEL), "product"), "soc"), "socMetaBuildId"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
