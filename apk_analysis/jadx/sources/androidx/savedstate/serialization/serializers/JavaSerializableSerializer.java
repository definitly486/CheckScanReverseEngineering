package androidx.savedstate.serialization.serializers;

import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import androidx.savedstate.serialization.SavedStateDecoder;
import androidx.savedstate.serialization.SavedStateEncoder;
import defpackage.c9;
import defpackage.df4;
import defpackage.mp7;
import defpackage.rp7;
import defpackage.ud2;
import defpackage.ux2;
import defpackage.x07;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class JavaSerializableSerializer<T extends Serializable> implements df4<T> {
    private final mp7 descriptor = rp7.d("java.io.Serializable", new mp7[0]);

    @Override // defpackage.xl2
    public final T deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        if (!(ud2Var instanceof SavedStateDecoder)) {
            c9.f(BuiltInSerializerKt.decoderErrorMessage(this.descriptor.h(), ud2Var));
            return null;
        }
        SavedStateDecoder savedStateDecoder = (SavedStateDecoder) ud2Var;
        T t = (T) SavedStateReader.m9408getJavaSerializableimpl(SavedStateReader.m9370constructorimpl(savedStateDecoder.getSavedState$savedstate()), savedStateDecoder.getKey$savedstate(), x07.a(Serializable.class));
        t.getClass();
        return t;
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return this.descriptor;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, T t) {
        ux2Var.getClass();
        t.getClass();
        if (!(ux2Var instanceof SavedStateEncoder)) {
            c9.f(BuiltInSerializerKt.encoderErrorMessage(this.descriptor.h(), ux2Var));
        } else {
            SavedStateEncoder savedStateEncoder = (SavedStateEncoder) ux2Var;
            SavedStateWriter.m9476putJavaSerializableimpl(SavedStateWriter.m9456constructorimpl(savedStateEncoder.getSavedState$savedstate()), savedStateEncoder.getKey$savedstate(), t);
        }
    }
}
