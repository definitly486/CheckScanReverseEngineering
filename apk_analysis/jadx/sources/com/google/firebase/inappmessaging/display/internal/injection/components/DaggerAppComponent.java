package com.google.firebase.inappmessaging.display.internal.injection.components;

import android.app.Application;
import com.google.firebase.inappmessaging.FirebaseInAppMessaging;
import com.google.firebase.inappmessaging.display.FirebaseInAppMessagingDisplay;
import com.google.firebase.inappmessaging.display.FirebaseInAppMessagingDisplay_Factory;
import com.google.firebase.inappmessaging.display.dagger.internal.DoubleCheck;
import com.google.firebase.inappmessaging.display.dagger.internal.Preconditions;
import com.google.firebase.inappmessaging.display.dagger.internal.Provider;
import com.google.firebase.inappmessaging.display.internal.BindingWrapperFactory;
import com.google.firebase.inappmessaging.display.internal.FiamAnimator;
import com.google.firebase.inappmessaging.display.internal.FiamAnimator_Factory;
import com.google.firebase.inappmessaging.display.internal.FiamImageLoader;
import com.google.firebase.inappmessaging.display.internal.FiamImageLoader_Factory;
import com.google.firebase.inappmessaging.display.internal.FiamWindowManager;
import com.google.firebase.inappmessaging.display.internal.InAppMessageLayoutConfig;
import com.google.firebase.inappmessaging.display.internal.RenewableTimer_Factory;
import com.google.firebase.inappmessaging.display.internal.injection.modules.GlideModule;
import com.google.firebase.inappmessaging.display.internal.injection.modules.GlideModule_ProvidesGlideRequestManagerFactory;
import com.google.firebase.inappmessaging.display.internal.injection.modules.HeadlessInAppMessagingModule;
import com.google.firebase.inappmessaging.display.internal.injection.modules.HeadlessInAppMessagingModule_ProvidesHeadlesssSingletonFactory;
import defpackage.p37;
import defpackage.ws6;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class DaggerAppComponent {

    public static final class AppComponentImpl implements AppComponent {
        private final AppComponentImpl appComponentImpl = this;
        Provider<FiamAnimator> fiamAnimatorProvider;
        Provider<FiamImageLoader> fiamImageLoaderProvider;
        Provider<FiamWindowManager> fiamWindowManagerProvider;
        Provider<FirebaseInAppMessagingDisplay> firebaseInAppMessagingDisplayProvider;
        Provider<BindingWrapperFactory> inflaterClientProvider;
        Provider myKeyStringMapProvider;
        Provider<Application> providesApplicationProvider;
        Provider<p37> providesGlideRequestManagerProvider;
        Provider<FirebaseInAppMessaging> providesHeadlesssSingletonProvider;

        public static final class FiamWindowManagerProvider implements Provider<FiamWindowManager> {
            private final UniversalComponent universalComponent;

            public FiamWindowManagerProvider(UniversalComponent universalComponent) {
                this.universalComponent = universalComponent;
            }

            @Override // com.google.firebase.inappmessaging.display.dagger.internal.Provider, defpackage.ws6
            public FiamWindowManager get() {
                return (FiamWindowManager) Preconditions.checkNotNullFromComponent(this.universalComponent.fiamWindowManager());
            }
        }

        public static final class InflaterClientProvider implements Provider<BindingWrapperFactory> {
            private final UniversalComponent universalComponent;

            public InflaterClientProvider(UniversalComponent universalComponent) {
                this.universalComponent = universalComponent;
            }

            @Override // com.google.firebase.inappmessaging.display.dagger.internal.Provider, defpackage.ws6
            public BindingWrapperFactory get() {
                return (BindingWrapperFactory) Preconditions.checkNotNullFromComponent(this.universalComponent.inflaterClient());
            }
        }

        public static final class MyKeyStringMapProvider implements Provider<Map<String, ws6<InAppMessageLayoutConfig>>> {
            private final UniversalComponent universalComponent;

            public MyKeyStringMapProvider(UniversalComponent universalComponent) {
                this.universalComponent = universalComponent;
            }

            @Override // com.google.firebase.inappmessaging.display.dagger.internal.Provider, defpackage.ws6
            public Map<String, ws6<InAppMessageLayoutConfig>> get() {
                return (Map) Preconditions.checkNotNullFromComponent(this.universalComponent.myKeyStringMap());
            }
        }

        public static final class ProvidesApplicationProvider implements Provider<Application> {
            private final UniversalComponent universalComponent;

            public ProvidesApplicationProvider(UniversalComponent universalComponent) {
                this.universalComponent = universalComponent;
            }

            @Override // com.google.firebase.inappmessaging.display.dagger.internal.Provider, defpackage.ws6
            public Application get() {
                return (Application) Preconditions.checkNotNullFromComponent(this.universalComponent.providesApplication());
            }
        }

        public AppComponentImpl(HeadlessInAppMessagingModule headlessInAppMessagingModule, GlideModule glideModule, UniversalComponent universalComponent) {
            initialize(headlessInAppMessagingModule, glideModule, universalComponent);
        }

        private void initialize(HeadlessInAppMessagingModule headlessInAppMessagingModule, GlideModule glideModule, UniversalComponent universalComponent) {
            this.providesHeadlesssSingletonProvider = DoubleCheck.provider((Provider) HeadlessInAppMessagingModule_ProvidesHeadlesssSingletonFactory.create(headlessInAppMessagingModule));
            this.myKeyStringMapProvider = new MyKeyStringMapProvider(universalComponent);
            ProvidesApplicationProvider providesApplicationProvider = new ProvidesApplicationProvider(universalComponent);
            this.providesApplicationProvider = providesApplicationProvider;
            Provider<p37> provider = DoubleCheck.provider((Provider) GlideModule_ProvidesGlideRequestManagerFactory.create(glideModule, providesApplicationProvider));
            this.providesGlideRequestManagerProvider = provider;
            this.fiamImageLoaderProvider = DoubleCheck.provider((Provider) FiamImageLoader_Factory.create(provider));
            this.fiamWindowManagerProvider = new FiamWindowManagerProvider(universalComponent);
            this.inflaterClientProvider = new InflaterClientProvider(universalComponent);
            this.fiamAnimatorProvider = DoubleCheck.provider((Provider) FiamAnimator_Factory.create());
            this.firebaseInAppMessagingDisplayProvider = DoubleCheck.provider((Provider) FirebaseInAppMessagingDisplay_Factory.create(this.providesHeadlesssSingletonProvider, this.myKeyStringMapProvider, this.fiamImageLoaderProvider, RenewableTimer_Factory.create(), RenewableTimer_Factory.create(), this.fiamWindowManagerProvider, this.providesApplicationProvider, this.inflaterClientProvider, this.fiamAnimatorProvider));
        }

        @Override // com.google.firebase.inappmessaging.display.internal.injection.components.AppComponent
        public FiamImageLoader fiamImageLoader() {
            return (FiamImageLoader) this.fiamImageLoaderProvider.get();
        }

        @Override // com.google.firebase.inappmessaging.display.internal.injection.components.AppComponent
        public FirebaseInAppMessagingDisplay providesFirebaseInAppMessagingUI() {
            return (FirebaseInAppMessagingDisplay) this.firebaseInAppMessagingDisplayProvider.get();
        }
    }

    private DaggerAppComponent() {
    }

    public static Builder builder() {
        return new Builder();
    }

    public static final class Builder {
        private GlideModule glideModule;
        private HeadlessInAppMessagingModule headlessInAppMessagingModule;
        private UniversalComponent universalComponent;

        public AppComponent build() {
            Preconditions.checkBuilderRequirement(this.headlessInAppMessagingModule, HeadlessInAppMessagingModule.class);
            if (this.glideModule == null) {
                this.glideModule = new GlideModule();
            }
            Preconditions.checkBuilderRequirement(this.universalComponent, UniversalComponent.class);
            return new AppComponentImpl(this.headlessInAppMessagingModule, this.glideModule, this.universalComponent);
        }

        public Builder glideModule(GlideModule glideModule) {
            this.glideModule = (GlideModule) Preconditions.checkNotNull(glideModule);
            return this;
        }

        public Builder headlessInAppMessagingModule(HeadlessInAppMessagingModule headlessInAppMessagingModule) {
            this.headlessInAppMessagingModule = (HeadlessInAppMessagingModule) Preconditions.checkNotNull(headlessInAppMessagingModule);
            return this;
        }

        public Builder universalComponent(UniversalComponent universalComponent) {
            this.universalComponent = (UniversalComponent) Preconditions.checkNotNull(universalComponent);
            return this;
        }

        private Builder() {
        }
    }
}
