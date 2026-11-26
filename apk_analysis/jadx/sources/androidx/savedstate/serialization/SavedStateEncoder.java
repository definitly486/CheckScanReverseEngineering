package androidx.savedstate.serialization;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.aa4;
import defpackage.b36;
import defpackage.eb8;
import defpackage.fg;
import defpackage.gu1;
import defpackage.h0;
import defpackage.jq7;
import defpackage.me0;
import defpackage.mp7;
import defpackage.n7;
import defpackage.xp7;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateEncoder extends h0 {
    private final SavedStateConfiguration configuration;
    private String key;
    private final Bundle savedState;

    public SavedStateEncoder(Bundle bundle, SavedStateConfiguration savedStateConfiguration) {
        bundle.getClass();
        savedStateConfiguration.getClass();
        this.savedState = bundle;
        this.configuration = savedStateConfiguration;
        this.key = "";
    }

    private final void putClassDiscriminatorIfRequired(SavedStateConfiguration savedStateConfiguration, mp7 mp7Var, Bundle bundle) {
        if (savedStateConfiguration.getClassDiscriminatorMode() == 1 && !SavedStateReader.m9371containsimpl(SavedStateReader.m9370constructorimpl(bundle), ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)) {
            if (aa4.e(mp7Var.getKind(), eb8.a.a) || aa4.e(mp7Var.getKind(), eb8.d.a)) {
                SavedStateWriter.m9489putStringimpl(SavedStateWriter.m9456constructorimpl(bundle), ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, mp7Var.h());
            }
        }
    }

    @Override // defpackage.h0, defpackage.ux2
    public gu1 beginStructure(mp7 mp7Var) {
        mp7Var.getClass();
        if (aa4.e(this.key, "")) {
            putClassDiscriminatorIfRequired(this.configuration, mp7Var, this.savedState);
            return this;
        }
        b36[] b36VarArr = new b36[0];
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        SavedStateWriter.m9483putSavedStateimpl(SavedStateWriter.m9456constructorimpl(this.savedState), this.key, bundleBundleOf);
        putClassDiscriminatorIfRequired(this.configuration, mp7Var, bundleBundleOf);
        return new SavedStateEncoder(bundleBundleOf, this.configuration);
    }

    @Override // defpackage.h0, defpackage.ux2
    public void encodeBoolean(boolean z) {
        SavedStateWriter.m9462putBooleanimpl(SavedStateWriter.m9456constructorimpl(this.savedState), this.key, z);
    }

    @Override // defpackage.h0, defpackage.ux2
    public void encodeByte(byte b) {
        SavedStateWriter.m9473putIntimpl(SavedStateWriter.m9456constructorimpl(this.savedState), this.key, b);
    }

    @Override // defpackage.h0, defpackage.ux2
    public void encodeChar(char c) {
        SavedStateWriter.m9464putCharimpl(SavedStateWriter.m9456constructorimpl(this.savedState), this.key, c);
    }

    @Override // defpackage.h0, defpackage.ux2
    public void encodeDouble(double d) {
        SavedStateWriter.m9469putDoubleimpl(SavedStateWriter.m9456constructorimpl(this.savedState), this.key, d);
    }

    @Override // defpackage.h0
    public boolean encodeElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        this.key = mp7Var.f(i);
        if (this.configuration.getClassDiscriminatorMode() == 1) {
            boolean zM9371containsimpl = SavedStateReader.m9371containsimpl(SavedStateReader.m9370constructorimpl(this.savedState), ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
            boolean zE = aa4.e(this.key, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
            if (zM9371containsimpl && zE) {
                fg.c(me0.d(n7.d("SavedStateEncoder for ", SavedStateReader.m9441getStringimpl(SavedStateReader.m9370constructorimpl(this.savedState), ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY), " has property '"), this.key, "' that conflicts with the class discriminator. You can rename a property with @SerialName annotation."));
                return false;
            }
        }
        return true;
    }

    @Override // defpackage.h0, defpackage.ux2
    public void encodeEnum(mp7 mp7Var, int i) {
        mp7Var.getClass();
        SavedStateWriter.m9473putIntimpl(SavedStateWriter.m9456constructorimpl(this.savedState), this.key, i);
    }

    @Override // defpackage.h0, defpackage.ux2
    public void encodeFloat(float f) {
        SavedStateWriter.m9471putFloatimpl(SavedStateWriter.m9456constructorimpl(this.savedState), this.key, f);
    }

    @Override // defpackage.h0, defpackage.ux2
    public void encodeInt(int i) {
        SavedStateWriter.m9473putIntimpl(SavedStateWriter.m9456constructorimpl(this.savedState), this.key, i);
    }

    @Override // defpackage.h0, defpackage.ux2
    public void encodeLong(long j) {
        SavedStateWriter.m9477putLongimpl(SavedStateWriter.m9456constructorimpl(this.savedState), this.key, j);
    }

    @Override // defpackage.h0, defpackage.ux2
    public void encodeNull() {
        SavedStateWriter.m9479putNullimpl(SavedStateWriter.m9456constructorimpl(this.savedState), this.key);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.h0, defpackage.ux2
    public <T> void encodeSerializableValue(xp7<? super T> xp7Var, T t) {
        xp7Var.getClass();
        if (SavedStateEncoder_androidKt.encodeFormatSpecificTypesOnPlatform(this, xp7Var, t)) {
            return;
        }
        mp7 descriptor = xp7Var.getDescriptor();
        if (aa4.e(descriptor, SavedStateCodecUtilsKt.getIntListDescriptor())) {
            Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(this.savedState);
            String str = this.key;
            t.getClass();
            SavedStateWriter.m9475putIntListimpl(bundleM9456constructorimpl, str, (List) t);
            return;
        }
        if (aa4.e(descriptor, SavedStateCodecUtilsKt.getStringListDescriptor())) {
            Bundle bundleM9456constructorimpl2 = SavedStateWriter.m9456constructorimpl(this.savedState);
            String str2 = this.key;
            t.getClass();
            SavedStateWriter.m9491putStringListimpl(bundleM9456constructorimpl2, str2, (List) t);
            return;
        }
        if (aa4.e(descriptor, SavedStateCodecUtilsKt.getBooleanArrayDescriptor())) {
            Bundle bundleM9456constructorimpl3 = SavedStateWriter.m9456constructorimpl(this.savedState);
            String str3 = this.key;
            t.getClass();
            SavedStateWriter.m9463putBooleanArrayimpl(bundleM9456constructorimpl3, str3, (boolean[]) t);
            return;
        }
        if (aa4.e(descriptor, SavedStateCodecUtilsKt.getCharArrayDescriptor())) {
            Bundle bundleM9456constructorimpl4 = SavedStateWriter.m9456constructorimpl(this.savedState);
            String str4 = this.key;
            t.getClass();
            SavedStateWriter.m9465putCharArrayimpl(bundleM9456constructorimpl4, str4, (char[]) t);
            return;
        }
        if (aa4.e(descriptor, SavedStateCodecUtilsKt.getDoubleArrayDescriptor())) {
            Bundle bundleM9456constructorimpl5 = SavedStateWriter.m9456constructorimpl(this.savedState);
            String str5 = this.key;
            t.getClass();
            SavedStateWriter.m9470putDoubleArrayimpl(bundleM9456constructorimpl5, str5, (double[]) t);
            return;
        }
        if (aa4.e(descriptor, SavedStateCodecUtilsKt.getFloatArrayDescriptor())) {
            Bundle bundleM9456constructorimpl6 = SavedStateWriter.m9456constructorimpl(this.savedState);
            String str6 = this.key;
            t.getClass();
            SavedStateWriter.m9472putFloatArrayimpl(bundleM9456constructorimpl6, str6, (float[]) t);
            return;
        }
        if (aa4.e(descriptor, SavedStateCodecUtilsKt.getIntArrayDescriptor())) {
            Bundle bundleM9456constructorimpl7 = SavedStateWriter.m9456constructorimpl(this.savedState);
            String str7 = this.key;
            t.getClass();
            SavedStateWriter.m9474putIntArrayimpl(bundleM9456constructorimpl7, str7, (int[]) t);
            return;
        }
        if (aa4.e(descriptor, SavedStateCodecUtilsKt.getLongArrayDescriptor())) {
            Bundle bundleM9456constructorimpl8 = SavedStateWriter.m9456constructorimpl(this.savedState);
            String str8 = this.key;
            t.getClass();
            SavedStateWriter.m9478putLongArrayimpl(bundleM9456constructorimpl8, str8, (long[]) t);
            return;
        }
        if (!aa4.e(descriptor, SavedStateCodecUtilsKt.getStringArrayDescriptor())) {
            super.encodeSerializableValue(xp7Var, t);
            return;
        }
        Bundle bundleM9456constructorimpl9 = SavedStateWriter.m9456constructorimpl(this.savedState);
        String str9 = this.key;
        t.getClass();
        SavedStateWriter.m9490putStringArrayimpl(bundleM9456constructorimpl9, str9, (String[]) t);
    }

    @Override // defpackage.h0, defpackage.ux2
    public void encodeShort(short s) {
        SavedStateWriter.m9473putIntimpl(SavedStateWriter.m9456constructorimpl(this.savedState), this.key, s);
    }

    @Override // defpackage.h0, defpackage.ux2
    public void encodeString(String str) {
        str.getClass();
        SavedStateWriter.m9489putStringimpl(SavedStateWriter.m9456constructorimpl(this.savedState), this.key, str);
    }

    public final String getKey$savedstate() {
        return this.key;
    }

    public final Bundle getSavedState$savedstate() {
        return this.savedState;
    }

    @Override // defpackage.ux2
    public jq7 getSerializersModule() {
        return this.configuration.getSerializersModule();
    }

    @Override // defpackage.h0, defpackage.gu1
    public boolean shouldEncodeElementDefault(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return this.configuration.getEncodeDefaults();
    }
}
