package defpackage;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.remoteconfig.RemoteConfigConstants;

/* JADX INFO: loaded from: classes4.dex */
public final class g8c implements ObjectEncoder {
    public static final g8c a = new g8c();

    static {
        bg.g(5, ag.c(4, ag.c(3, FieldDescriptor.builder("languageOption"), "isUsingLegacyApi"), RemoteConfigConstants.RequestFieldKey.SDK_VERSION));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
