package defpackage;

import androidx.core.app.NotificationCompat;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class j2c implements ObjectEncoder {
    public static final j2c a = new j2c();

    static {
        bg.g(3, ag.c(2, ag.c(1, FieldDescriptor.builder(NotificationCompat.CATEGORY_STATUS), "filename"), "lineNumber"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
