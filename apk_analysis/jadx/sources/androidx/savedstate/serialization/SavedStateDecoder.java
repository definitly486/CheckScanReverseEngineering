package androidx.savedstate.serialization;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import defpackage.aa4;
import defpackage.du1;
import defpackage.eb8;
import defpackage.f0;
import defpackage.jq7;
import defpackage.mp7;
import defpackage.xl2;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateDecoder extends f0 {
    private final SavedStateConfiguration configuration;
    private int index;
    private String key;
    private final Bundle savedState;

    public SavedStateDecoder(Bundle bundle, SavedStateConfiguration savedStateConfiguration) {
        bundle.getClass();
        savedStateConfiguration.getClass();
        this.savedState = bundle;
        this.configuration = savedStateConfiguration;
        this.key = "";
    }

    @Override // defpackage.f0, defpackage.ud2
    public du1 beginStructure(mp7 mp7Var) {
        mp7Var.getClass();
        return aa4.e(this.key, "") ? this : new SavedStateDecoder(SavedStateReader.m9427getSavedStateimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key), this.configuration);
    }

    @Override // defpackage.f0, defpackage.ud2
    public boolean decodeBoolean() {
        return SavedStateReader.m9379getBooleanimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
    }

    @Override // defpackage.f0, defpackage.ud2
    public byte decodeByte() {
        return (byte) SavedStateReader.m9401getIntimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
    }

    @Override // defpackage.f0, defpackage.ud2
    public char decodeChar() {
        return SavedStateReader.m9383getCharimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
    }

    @Override // defpackage.f0, defpackage.ud2
    public double decodeDouble() {
        return SavedStateReader.m9393getDoubleimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
    }

    @Override // defpackage.du1
    public int decodeElementIndex(mp7 mp7Var) {
        mp7Var.getClass();
        int iM9450sizeimpl = (aa4.e(mp7Var.getKind(), eb8.b.a) || aa4.e(mp7Var.getKind(), eb8.c.a)) ? SavedStateReader.m9450sizeimpl(SavedStateReader.m9370constructorimpl(this.savedState)) : mp7Var.e();
        while (true) {
            int i = this.index;
            if (i >= iM9450sizeimpl) {
                return -1;
            }
            String strF = mp7Var.f(i);
            if (!mp7Var.i(this.index) || SavedStateReader.m9371containsimpl(SavedStateReader.m9370constructorimpl(this.savedState), strF)) {
                this.key = strF;
                int i2 = this.index;
                this.index = i2 + 1;
                return i2;
            }
            this.index++;
        }
    }

    @Override // defpackage.f0, defpackage.ud2
    public int decodeEnum(mp7 mp7Var) {
        mp7Var.getClass();
        return SavedStateReader.m9401getIntimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
    }

    @Override // defpackage.f0, defpackage.ud2
    public float decodeFloat() {
        return SavedStateReader.m9397getFloatimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
    }

    @Override // defpackage.f0, defpackage.ud2
    public int decodeInt() {
        return SavedStateReader.m9401getIntimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
    }

    @Override // defpackage.f0, defpackage.ud2
    public long decodeLong() {
        return SavedStateReader.m9411getLongimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
    }

    @Override // defpackage.f0, defpackage.ud2
    public boolean decodeNotNullMark() {
        return !SavedStateReader.m9449isNullimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.f0, defpackage.ud2
    public <T> T decodeSerializableValue(xl2<? extends T> xl2Var) {
        xl2Var.getClass();
        T t = (T) SavedStateDecoder_androidKt.decodeFormatSpecificTypesOnPlatform(this, xl2Var);
        if (t != null) {
            return t;
        }
        mp7 descriptor = xl2Var.getDescriptor();
        if (aa4.e(descriptor, SavedStateCodecUtilsKt.getIntListDescriptor())) {
            return (T) SavedStateReader.m9404getIntListimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
        }
        if (aa4.e(descriptor, SavedStateCodecUtilsKt.getStringListDescriptor())) {
            return (T) SavedStateReader.m9444getStringListimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
        }
        if (aa4.e(descriptor, SavedStateCodecUtilsKt.getBooleanArrayDescriptor())) {
            return (T) SavedStateReader.m9380getBooleanArrayimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
        }
        if (aa4.e(descriptor, SavedStateCodecUtilsKt.getCharArrayDescriptor())) {
            return (T) SavedStateReader.m9384getCharArrayimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
        }
        if (aa4.e(descriptor, SavedStateCodecUtilsKt.getDoubleArrayDescriptor())) {
            return (T) SavedStateReader.m9394getDoubleArrayimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
        }
        if (aa4.e(descriptor, SavedStateCodecUtilsKt.getFloatArrayDescriptor())) {
            return (T) SavedStateReader.m9398getFloatArrayimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
        }
        if (aa4.e(descriptor, SavedStateCodecUtilsKt.getIntArrayDescriptor())) {
            return (T) SavedStateReader.m9402getIntArrayimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
        }
        if (aa4.e(descriptor, SavedStateCodecUtilsKt.getLongArrayDescriptor())) {
            return (T) SavedStateReader.m9412getLongArrayimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
        }
        return aa4.e(descriptor, SavedStateCodecUtilsKt.getStringArrayDescriptor()) ? (T) SavedStateReader.m9442getStringArrayimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key) : (T) super.decodeSerializableValue(xl2Var);
    }

    @Override // defpackage.f0, defpackage.ud2
    public short decodeShort() {
        return (short) SavedStateReader.m9401getIntimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
    }

    @Override // defpackage.f0, defpackage.ud2
    public String decodeString() {
        return SavedStateReader.m9441getStringimpl(SavedStateReader.m9370constructorimpl(this.savedState), this.key);
    }

    public final String getKey$savedstate() {
        return this.key;
    }

    public final Bundle getSavedState$savedstate() {
        return this.savedState;
    }

    @Override // defpackage.du1
    public jq7 getSerializersModule() {
        return this.configuration.getSerializersModule();
    }
}
