package androidx.savedstate.serialization.serializers;

import android.os.Parcelable;
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

/* JADX INFO: loaded from: classes3.dex */
public abstract class ParcelableSerializer<T extends Parcelable> implements df4<T> {
    private final mp7 descriptor = rp7.d("android.os.Parcelable", new mp7[0]);

    @Override // defpackage.xl2
    public final T deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        if (!(ud2Var instanceof SavedStateDecoder)) {
            c9.f(BuiltInSerializerKt.decoderErrorMessage(this.descriptor.h(), ud2Var));
            return null;
        }
        SavedStateDecoder savedStateDecoder = (SavedStateDecoder) ud2Var;
        T t = (T) SavedStateReader.m9416getParcelableimpl(SavedStateReader.m9370constructorimpl(savedStateDecoder.getSavedState$savedstate()), savedStateDecoder.getKey$savedstate(), x07.a(Parcelable.class));
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
            SavedStateWriter.m9480putParcelableimpl(SavedStateWriter.m9456constructorimpl(savedStateEncoder.getSavedState$savedstate()), savedStateEncoder.getKey$savedstate(), t);
        }
    }
}
