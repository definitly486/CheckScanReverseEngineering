package defpackage;

import com.google.protobuf.o;

/* JADX INFO: loaded from: classes4.dex */
public final class cp3 implements ga5 {
    public static final cp3 a = new cp3();

    @Override // defpackage.ga5
    public final boolean isSupported(Class<?> cls) {
        return o.class.isAssignableFrom(cls);
    }

    @Override // defpackage.ga5
    public final fa5 messageInfoFor(Class<?> cls) {
        if (!o.class.isAssignableFrom(cls)) {
            fg.c("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            return (fa5) o.getDefaultInstance(cls.asSubclass(o.class)).buildMessageInfo();
        } catch (Exception e) {
            mg.e("Unable to get message info for ".concat(cls.getName()), e);
            return null;
        }
    }
}
