package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class c1c implements ObjectEncoder {
    public static final c1c a = new c1c();

    static {
        bg.g(4, ag.c(3, ag.c(2, ag.c(1, FieldDescriptor.builder("isChargingRequired"), "isWifiRequired"), "isDeviceIdleRequired"), "canDownloadInBackground"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
