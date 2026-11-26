package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.remoteconfig.RemoteConfigConstants;

/* JADX INFO: loaded from: classes4.dex */
public final class mwb implements ObjectEncoder {
    public static final mwb a = new mwb();

    static {
        rz0.e(5, qz0.b(4, qz0.b(3, FieldDescriptor.builder("languageOption"), "isUsingLegacyApi"), RemoteConfigConstants.RequestFieldKey.SDK_VERSION));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
