package com.google.firebase.inappmessaging.display.internal.injection.components;

import android.view.LayoutInflater;
import com.google.firebase.inappmessaging.display.dagger.internal.DoubleCheck;
import com.google.firebase.inappmessaging.display.dagger.internal.Preconditions;
import com.google.firebase.inappmessaging.display.dagger.internal.Provider;
import com.google.firebase.inappmessaging.display.internal.InAppMessageLayoutConfig;
import com.google.firebase.inappmessaging.display.internal.bindingwrappers.BannerBindingWrapper;
import com.google.firebase.inappmessaging.display.internal.bindingwrappers.BannerBindingWrapper_Factory;
import com.google.firebase.inappmessaging.display.internal.bindingwrappers.CardBindingWrapper;
import com.google.firebase.inappmessaging.display.internal.bindingwrappers.CardBindingWrapper_Factory;
import com.google.firebase.inappmessaging.display.internal.bindingwrappers.ImageBindingWrapper;
import com.google.firebase.inappmessaging.display.internal.bindingwrappers.ImageBindingWrapper_Factory;
import com.google.firebase.inappmessaging.display.internal.bindingwrappers.ModalBindingWrapper;
import com.google.firebase.inappmessaging.display.internal.bindingwrappers.ModalBindingWrapper_Factory;
import com.google.firebase.inappmessaging.display.internal.injection.modules.InflaterModule;
import com.google.firebase.inappmessaging.display.internal.injection.modules.InflaterModule_InAppMessageLayoutConfigFactory;
import com.google.firebase.inappmessaging.display.internal.injection.modules.InflaterModule_ProvidesBannerMessageFactory;
import com.google.firebase.inappmessaging.display.internal.injection.modules.InflaterModule_ProvidesInflaterserviceFactory;
import com.google.firebase.inappmessaging.model.InAppMessage;

/* JADX INFO: loaded from: classes4.dex */
public final class DaggerInAppMessageComponent {

    public static final class InAppMessageComponentImpl implements InAppMessageComponent {
        Provider<BannerBindingWrapper> bannerBindingWrapperProvider;
        Provider<CardBindingWrapper> cardBindingWrapperProvider;
        Provider<ImageBindingWrapper> imageBindingWrapperProvider;
        private final InAppMessageComponentImpl inAppMessageComponentImpl = this;
        Provider<InAppMessageLayoutConfig> inAppMessageLayoutConfigProvider;
        Provider<ModalBindingWrapper> modalBindingWrapperProvider;
        Provider<InAppMessage> providesBannerMessageProvider;
        Provider<LayoutInflater> providesInflaterserviceProvider;

        public InAppMessageComponentImpl(InflaterModule inflaterModule) {
            initialize(inflaterModule);
        }

        private void initialize(InflaterModule inflaterModule) {
            this.inAppMessageLayoutConfigProvider = DoubleCheck.provider((Provider) InflaterModule_InAppMessageLayoutConfigFactory.create(inflaterModule));
            this.providesInflaterserviceProvider = DoubleCheck.provider((Provider) InflaterModule_ProvidesInflaterserviceFactory.create(inflaterModule));
            InflaterModule_ProvidesBannerMessageFactory inflaterModule_ProvidesBannerMessageFactoryCreate = InflaterModule_ProvidesBannerMessageFactory.create(inflaterModule);
            this.providesBannerMessageProvider = inflaterModule_ProvidesBannerMessageFactoryCreate;
            this.imageBindingWrapperProvider = DoubleCheck.provider((Provider) ImageBindingWrapper_Factory.create(this.inAppMessageLayoutConfigProvider, this.providesInflaterserviceProvider, inflaterModule_ProvidesBannerMessageFactoryCreate));
            this.modalBindingWrapperProvider = DoubleCheck.provider((Provider) ModalBindingWrapper_Factory.create(this.inAppMessageLayoutConfigProvider, this.providesInflaterserviceProvider, this.providesBannerMessageProvider));
            this.bannerBindingWrapperProvider = DoubleCheck.provider((Provider) BannerBindingWrapper_Factory.create(this.inAppMessageLayoutConfigProvider, this.providesInflaterserviceProvider, this.providesBannerMessageProvider));
            this.cardBindingWrapperProvider = DoubleCheck.provider((Provider) CardBindingWrapper_Factory.create(this.inAppMessageLayoutConfigProvider, this.providesInflaterserviceProvider, this.providesBannerMessageProvider));
        }

        @Override // com.google.firebase.inappmessaging.display.internal.injection.components.InAppMessageComponent
        public BannerBindingWrapper bannerBindingWrapper() {
            return (BannerBindingWrapper) this.bannerBindingWrapperProvider.get();
        }

        @Override // com.google.firebase.inappmessaging.display.internal.injection.components.InAppMessageComponent
        public CardBindingWrapper cardBindingWrapper() {
            return (CardBindingWrapper) this.cardBindingWrapperProvider.get();
        }

        @Override // com.google.firebase.inappmessaging.display.internal.injection.components.InAppMessageComponent
        public ImageBindingWrapper imageBindingWrapper() {
            return (ImageBindingWrapper) this.imageBindingWrapperProvider.get();
        }

        @Override // com.google.firebase.inappmessaging.display.internal.injection.components.InAppMessageComponent
        public ModalBindingWrapper modalBindingWrapper() {
            return (ModalBindingWrapper) this.modalBindingWrapperProvider.get();
        }
    }

    private DaggerInAppMessageComponent() {
    }

    public static Builder builder() {
        return new Builder();
    }

    public static final class Builder {
        private InflaterModule inflaterModule;

        public InAppMessageComponent build() {
            Preconditions.checkBuilderRequirement(this.inflaterModule, InflaterModule.class);
            return new InAppMessageComponentImpl(this.inflaterModule);
        }

        public Builder inflaterModule(InflaterModule inflaterModule) {
            this.inflaterModule = (InflaterModule) Preconditions.checkNotNull(inflaterModule);
            return this;
        }

        private Builder() {
        }
    }
}
