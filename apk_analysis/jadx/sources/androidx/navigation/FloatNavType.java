package androidx.navigation;

import android.os.Bundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;

/* JADX INFO: loaded from: classes3.dex */
public final class FloatNavType extends NavType<Float> {
    public FloatNavType() {
        super(false);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.navigation.NavType
    public Float get(Bundle bundle, String str) {
        bundle.getClass();
        str.getClass();
        return Float.valueOf(SavedStateReader.m9397getFloatimpl(SavedStateReader.m9370constructorimpl(bundle), str));
    }

    @Override // androidx.navigation.NavType
    public String getName() {
        return TypedValues.Custom.S_FLOAT;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.navigation.NavType
    public Float parseValue(String str) {
        str.getClass();
        return Float.valueOf(Float.parseFloat(str));
    }

    public void put(Bundle bundle, String str, float f) {
        bundle.getClass();
        str.getClass();
        SavedStateWriter.m9471putFloatimpl(SavedStateWriter.m9456constructorimpl(bundle), str, f);
    }

    @Override // androidx.navigation.NavType
    public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Float f) {
        put(bundle, str, f.floatValue());
    }
}
