package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class nzb implements ObjectEncoder {
    public static final nzb a = new nzb();

    static {
        bg.g(2, ag.c(1, FieldDescriptor.builder("scoreType"), FirebaseAnalytics.Param.SCORE));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
