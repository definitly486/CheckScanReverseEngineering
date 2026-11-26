package androidx.savedstate.serialization.serializers;

import android.os.IBinder;
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

/* JADX INFO: loaded from: classes3.dex */
public final class IBinderSerializer implements df4<IBinder> {
    public static final IBinderSerializer INSTANCE = new IBinderSerializer();
    private static final mp7 descriptor = rp7.d("android.os.IBinder", new mp7[0]);

    private IBinderSerializer() {
    }

    @Override // defpackage.xl2
    public IBinder deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        if (ud2Var instanceof SavedStateDecoder) {
            SavedStateDecoder savedStateDecoder = (SavedStateDecoder) ud2Var;
            return SavedStateReader.m9377getBinderimpl(SavedStateReader.m9370constructorimpl(savedStateDecoder.getSavedState$savedstate()), savedStateDecoder.getKey$savedstate());
        }
        c9.f(BuiltInSerializerKt.decoderErrorMessage(INSTANCE.getDescriptor().h(), ud2Var));
        return null;
    }

    @Override // defpackage.xp7, defpackage.xl2
    public mp7 getDescriptor() {
        return descriptor;
    }

    @Override // defpackage.xp7
    public void serialize(ux2 ux2Var, IBinder iBinder) {
        ux2Var.getClass();
        iBinder.getClass();
        if (!(ux2Var instanceof SavedStateEncoder)) {
            c9.f(BuiltInSerializerKt.encoderErrorMessage(INSTANCE.getDescriptor().h(), ux2Var));
        } else {
            SavedStateEncoder savedStateEncoder = (SavedStateEncoder) ux2Var;
            SavedStateWriter.m9461putBinderimpl(SavedStateWriter.m9456constructorimpl(savedStateEncoder.getSavedState$savedstate()), savedStateEncoder.getKey$savedstate(), iBinder);
        }
    }
}
