package androidx.camera.camera2.interop;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.Camera2ImplConfigKt;
import androidx.camera.core.ExtendableBuilder;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.ReadableConfig;
import defpackage.jh2;
import defpackage.q31;

/* JADX INFO: loaded from: classes.dex */
public class CaptureRequestOptions implements ReadableConfig {
    private final Config config;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CaptureRequestOptions(Config config) {
        this(config, false);
        config.getClass();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <ValueT> ValueT getCaptureRequestOption(CaptureRequest.Key<ValueT> key) {
        key.getClass();
        Config.Option<Object> optionCreateCaptureRequestOption = Camera2ImplConfigKt.createCaptureRequestOption(key);
        optionCreateCaptureRequestOption.getClass();
        return (ValueT) this.config.retrieveOption(optionCreateCaptureRequestOption, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <ValueT> ValueT getCaptureRequestOption$camera_camera2(CaptureRequest.Key<ValueT> key, ValueT valuet) {
        key.getClass();
        Config.Option<Object> optionCreateCaptureRequestOption = Camera2ImplConfigKt.createCaptureRequestOption(key);
        optionCreateCaptureRequestOption.getClass();
        return (ValueT) this.config.retrieveOption(optionCreateCaptureRequestOption, valuet);
    }

    @Override // androidx.camera.core.impl.ReadableConfig
    public Config getConfig() {
        return this.config;
    }

    public static final class Builder implements ExtendableBuilder<CaptureRequestOptions> {
        public static final Companion Companion = new Companion(null);
        private final MutableOptionsBundle mutableOptionsBundle;

        public Builder() {
            MutableOptionsBundle mutableOptionsBundleCreate = MutableOptionsBundle.create();
            mutableOptionsBundleCreate.getClass();
            this.mutableOptionsBundle = mutableOptionsBundleCreate;
        }

        public static final Builder from(Config config) {
            return Companion.from(config);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.core.ExtendableBuilder
        public CaptureRequestOptions build() {
            OptionsBundle optionsBundleFrom = OptionsBundle.from(this.mutableOptionsBundle);
            optionsBundleFrom.getClass();
            return new CaptureRequestOptions(optionsBundleFrom);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <ValueT> Builder clearCaptureRequestOption(CaptureRequest.Key<ValueT> key) {
            key.getClass();
            this.mutableOptionsBundle.removeOption(Camera2ImplConfigKt.createCaptureRequestOption(key));
            return this;
        }

        @Override // androidx.camera.core.ExtendableBuilder
        public MutableConfig getMutableConfig() {
            return this.mutableOptionsBundle;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <ValueT> Builder setCaptureRequestOption(CaptureRequest.Key<ValueT> key, ValueT valuet) {
            key.getClass();
            this.mutableOptionsBundle.insertOption(Camera2ImplConfigKt.createCaptureRequestOption(key), valuet);
            return this;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final boolean from$lambda$0(Builder builder, Config config, Config.Option option) {
                option.getClass();
                builder.getMutableConfig().insertOption(option, config.getOptionPriority(option), config.retrieveOption(option));
                return true;
            }

            public final Builder from(Config config) {
                config.getClass();
                Builder builder = new Builder();
                config.findOptions(Camera2ImplConfig.CAPTURE_REQUEST_ID_STEM, new q31(builder, config));
                return builder;
            }

            private Companion() {
            }
        }
    }

    private CaptureRequestOptions(Config config, boolean z) {
        this.config = config;
    }
}
