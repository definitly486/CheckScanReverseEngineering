package defpackage;

import androidx.core.app.NotificationCompat;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes4.dex */
public final class g2c implements ObjectEncoder {
    public static final g2c a = new g2c();

    static {
        bg.g(11, ag.c(10, ag.c(9, ag.c(8, ag.c(7, ag.c(6, ag.c(5, ag.c(4, ag.c(3, ag.c(2, ag.c(1, FieldDescriptor.builder(NotificationCompat.CATEGORY_STATUS), "options"), CommonUrlParts.MODEL), "language"), "segmentationRequest"), "segmentationResult"), "aggregatedSegmentations"), "durationMs"), "nativeSegmentationException"), "downloadErrorCodes"), DynamicLink.Builder.KEY_DOMAIN));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
