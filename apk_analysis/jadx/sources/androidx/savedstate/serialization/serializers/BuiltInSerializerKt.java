package androidx.savedstate.serialization.serializers;

import defpackage.ud2;
import defpackage.ux2;
import defpackage.x07;

/* JADX INFO: loaded from: classes3.dex */
public final class BuiltInSerializerKt {
    public static final String decoderErrorMessage(String str, ud2 ud2Var) {
        str.getClass();
        ud2Var.getClass();
        return "Cannot deserialize " + str + " with '" + x07.a(ud2Var.getClass()).f() + "'. This serializer can only be used with SavedStateDecoder. Use 'decodeFromSavedState' instead.";
    }

    public static final String encoderErrorMessage(String str, ux2 ux2Var) {
        str.getClass();
        ux2Var.getClass();
        return "Cannot serialize " + str + " with '" + x07.a(ux2Var.getClass()).f() + "'. This serializer can only be used with SavedStateEncoder. Use 'encodeToSavedState' instead.";
    }
}
