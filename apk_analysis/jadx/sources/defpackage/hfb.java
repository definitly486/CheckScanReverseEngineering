package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes4.dex */
public final class hfb implements ObjectEncoder {
    public static final hfb a = new hfb();

    static {
        rz0.e(11, qz0.b(10, qz0.b(9, qz0.b(8, qz0.b(7, qz0.b(6, qz0.b(5, qz0.b(4, qz0.b(3, qz0.b(2, qz0.b(1, FieldDescriptor.builder(RemoteConfigConstants.RequestFieldKey.SDK_VERSION), "osBuild"), "brand"), "device"), "hardware"), CommonUrlParts.MANUFACTURER), CommonUrlParts.MODEL), "product"), "soc"), "socMetaBuildId"), "fingerprint"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
