package defpackage;

import androidx.core.app.NotificationCompat;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
public final class smb implements ObjectEncoder {
    public static final smb a = new smb();

    static {
        rz0.e(3, qz0.b(2, qz0.b(1, FieldDescriptor.builder(NotificationCompat.CATEGORY_STATUS), "filename"), "lineNumber"));
    }

    @Override // com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
        throw null;
    }
}
