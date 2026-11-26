package defpackage;

import androidx.core.app.NotificationCompat;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class d9c implements ObjectEncoder {
    public static final d9c a = new d9c();

    static {
        bg.g(12, ag.c(11, ag.c(10, ag.c(9, ag.c(8, ag.c(7, ag.c(6, ag.c(5, ag.c(4, ag.c(3, ag.c(2, ag.c(1, FieldDescriptor.builder("deviceInfo"), "nnapiInfo"), "gpuInfo"), "pipelineIdentifier"), "acceptedConfigurations"), "action"), NotificationCompat.CATEGORY_STATUS), "customErrors"), "benchmarkStatus"), "validationTestResult"), "timestampUs"), "elapsedUs"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
