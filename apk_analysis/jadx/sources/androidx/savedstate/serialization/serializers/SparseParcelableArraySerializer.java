package androidx.savedstate.serialization.serializers;

import android.os.Parcelable;
import android.util.SparseArray;
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
public final class SparseParcelableArraySerializer implements df4<SparseArray<Parcelable>> {
    public static final SparseParcelableArraySerializer INSTANCE = new SparseParcelableArraySerializer();
    private static final mp7 descriptor = rp7.d("android.util.SparseArray<android.os.Parcelable>", new mp7[0]);

    private SparseParcelableArraySerializer() {
    }

    @Override // defpackage.xl2
    public SparseArray<Parcelable> deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        if (ud2Var instanceof SavedStateDecoder) {
            SavedStateDecoder savedStateDecoder = (SavedStateDecoder) ud2Var;
            return SavedStateReader.m9438getSparseParcelableArrayimpl(SavedStateReader.m9370constructorimpl(savedStateDecoder.getSavedState$savedstate()), savedStateDecoder.getKey$savedstate(), x07.a(Parcelable.class));
        }
        c9.f(BuiltInSerializerKt.decoderErrorMessage(INSTANCE.getDescriptor().h(), ud2Var));
        return null;
    }

    @Override // defpackage.xp7, defpackage.xl2
    public mp7 getDescriptor() {
        return descriptor;
    }

    @Override // defpackage.xp7
    public void serialize(ux2 ux2Var, SparseArray<Parcelable> sparseArray) {
        ux2Var.getClass();
        sparseArray.getClass();
        if (!(ux2Var instanceof SavedStateEncoder)) {
            c9.f(BuiltInSerializerKt.encoderErrorMessage(INSTANCE.getDescriptor().h(), ux2Var));
        } else {
            SavedStateEncoder savedStateEncoder = (SavedStateEncoder) ux2Var;
            SavedStateWriter.m9488putSparseParcelableArrayimpl(SavedStateWriter.m9456constructorimpl(savedStateEncoder.getSavedState$savedstate()), savedStateEncoder.getKey$savedstate(), sparseArray);
        }
    }
}
