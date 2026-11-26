package defpackage;

import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.proto.ProtobufEncoder;

/* JADX INFO: loaded from: classes4.dex */
@Encodable
public abstract class ls6 {
    public static final ProtobufEncoder a = ProtobufEncoder.builder().configureWith(jy.a).build();

    public abstract zl1 a();
}
