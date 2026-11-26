package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes4.dex */
public final class qwb implements ObjectEncoder {
    public static final qwb a = new qwb();

    static {
        bg.g(11, ag.c(10, ag.c(9, ag.c(8, ag.c(7, ag.c(6, ag.c(5, ag.c(4, ag.c(3, ag.c(2, ag.c(1, FieldDescriptor.builder(RemoteConfigConstants.RequestFieldKey.SDK_VERSION), "osBuild"), "brand"), "device"), "hardware"), CommonUrlParts.MANUFACTURER), CommonUrlParts.MODEL), "product"), "soc"), "socMetaBuildId"), "fingerprint"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
