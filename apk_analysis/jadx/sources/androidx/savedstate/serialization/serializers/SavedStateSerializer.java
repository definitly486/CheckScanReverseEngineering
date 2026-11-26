package androidx.savedstate.serialization.serializers;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import androidx.savedstate.serialization.SavedStateDecoder;
import androidx.savedstate.serialization.SavedStateEncoder;
import defpackage.aa4;
import defpackage.c9;
import defpackage.df4;
import defpackage.mp7;
import defpackage.rp7;
import defpackage.ud2;
import defpackage.ux2;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateSerializer implements df4<Bundle> {
    public static final SavedStateSerializer INSTANCE = new SavedStateSerializer();
    private static final mp7 descriptor = rp7.d("androidx.savedstate.SavedState", new mp7[0]);

    private SavedStateSerializer() {
    }

    @Override // defpackage.xl2
    public Bundle deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        if (ud2Var instanceof SavedStateDecoder) {
            SavedStateDecoder savedStateDecoder = (SavedStateDecoder) ud2Var;
            return aa4.e(savedStateDecoder.getKey$savedstate(), "") ? savedStateDecoder.getSavedState$savedstate() : SavedStateReader.m9427getSavedStateimpl(SavedStateReader.m9370constructorimpl(savedStateDecoder.getSavedState$savedstate()), savedStateDecoder.getKey$savedstate());
        }
        c9.f(BuiltInSerializerKt.decoderErrorMessage(INSTANCE.getDescriptor().h(), ud2Var));
        return null;
    }

    @Override // defpackage.xp7, defpackage.xl2
    public mp7 getDescriptor() {
        return descriptor;
    }

    @Override // defpackage.xp7
    public void serialize(ux2 ux2Var, Bundle bundle) {
        ux2Var.getClass();
        bundle.getClass();
        if (!(ux2Var instanceof SavedStateEncoder)) {
            c9.f(BuiltInSerializerKt.encoderErrorMessage(INSTANCE.getDescriptor().h(), ux2Var));
            return;
        }
        SavedStateEncoder savedStateEncoder = (SavedStateEncoder) ux2Var;
        if (aa4.e(savedStateEncoder.getKey$savedstate(), "")) {
            SavedStateWriter.m9460putAllimpl(SavedStateWriter.m9456constructorimpl(savedStateEncoder.getSavedState$savedstate()), bundle);
        } else {
            SavedStateWriter.m9483putSavedStateimpl(SavedStateWriter.m9456constructorimpl(savedStateEncoder.getSavedState$savedstate()), savedStateEncoder.getKey$savedstate(), bundle);
        }
    }
}
