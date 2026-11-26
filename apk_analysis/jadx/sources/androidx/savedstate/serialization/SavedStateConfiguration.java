package androidx.savedstate.serialization;

import defpackage.jh2;
import defpackage.jq7;
import defpackage.kq7;
import defpackage.mq7;
import defpackage.nq7;
import defpackage.tp7;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateConfiguration {
    public static final Companion Companion = new Companion(null);
    public static final SavedStateConfiguration DEFAULT = new SavedStateConfiguration(null, 0, false, 7, null);
    private final int classDiscriminatorMode;
    private final boolean encodeDefaults;
    private final jq7 serializersModule;

    public static final class Builder {
        private int classDiscriminatorMode;
        private boolean encodeDefaults;
        private jq7 serializersModule;

        public Builder(SavedStateConfiguration savedStateConfiguration) {
            savedStateConfiguration.getClass();
            this.serializersModule = savedStateConfiguration.getSerializersModule();
            this.encodeDefaults = savedStateConfiguration.getEncodeDefaults();
            this.classDiscriminatorMode = savedStateConfiguration.getClassDiscriminatorMode();
        }

        public static /* synthetic */ void getClassDiscriminatorMode$annotations() {
        }

        public static /* synthetic */ void getEncodeDefaults$annotations() {
        }

        public final SavedStateConfiguration build$savedstate() {
            jq7 jq7Var = SavedStateConfigurationKt.DEFAULT_SERIALIZERS_MODULE;
            jq7 jq7Var2 = this.serializersModule;
            tp7 tp7Var = nq7.a;
            jq7Var.getClass();
            jq7Var2.getClass();
            kq7 kq7Var = new kq7();
            jq7Var.a(kq7Var);
            jq7Var2.a(new mq7(kq7Var));
            return new SavedStateConfiguration(kq7Var.f(), this.classDiscriminatorMode, this.encodeDefaults, null);
        }

        public final int getClassDiscriminatorMode() {
            return this.classDiscriminatorMode;
        }

        public final boolean getEncodeDefaults() {
            return this.encodeDefaults;
        }

        public final jq7 getSerializersModule() {
            return this.serializersModule;
        }

        public final void setClassDiscriminatorMode(int i) {
            this.classDiscriminatorMode = i;
        }

        public final void setEncodeDefaults(boolean z) {
            this.encodeDefaults = z;
        }

        public final void setSerializersModule(jq7 jq7Var) {
            jq7Var.getClass();
            this.serializersModule = jq7Var;
        }
    }

    public /* synthetic */ SavedStateConfiguration(jq7 jq7Var, int i, boolean z, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? SavedStateConfigurationKt.DEFAULT_SERIALIZERS_MODULE : jq7Var, (i2 & 2) != 0 ? 2 : i, (i2 & 4) != 0 ? false : z);
    }

    public final int getClassDiscriminatorMode() {
        return this.classDiscriminatorMode;
    }

    public final boolean getEncodeDefaults() {
        return this.encodeDefaults;
    }

    public final jq7 getSerializersModule() {
        return this.serializersModule;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    private SavedStateConfiguration(jq7 jq7Var, int i, boolean z) {
        this.serializersModule = jq7Var;
        this.classDiscriminatorMode = i;
        this.encodeDefaults = z;
    }

    public /* synthetic */ SavedStateConfiguration(jq7 jq7Var, int i, boolean z, jh2 jh2Var) {
        this(jq7Var, i, z);
    }
}
