package defpackage;

import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes5.dex */
public final class so5 implements df4 {
    public static final so5 a = new so5();
    public static final ro5 b = ro5.a;

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        throw new SerializationException("'kotlin.Nothing' does not have instances");
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        ((Void) obj).getClass();
        throw new SerializationException("'kotlin.Nothing' cannot be serialized");
    }
}
