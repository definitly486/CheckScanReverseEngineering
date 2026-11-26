package androidx.window.embedding;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.core.util.Consumer;
import androidx.window.WindowSdkExtensions;
import androidx.window.core.BuildConfig;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.VerificationMode;
import androidx.window.embedding.EmbeddingCompat;
import androidx.window.extensions.WindowExtensions;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.extensions.embedding.ActivityEmbeddingComponent;
import androidx.window.reflection.Consumer2;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.o86;
import defpackage.vw2;
import defpackage.x07;
import defpackage.xw2;
import defpackage.yw2;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class EmbeddingCompat implements EmbeddingInterfaceCompat {
    public static final Companion Companion = new Companion(null);
    public static final boolean DEBUG = true;
    private static final String TAG = "EmbeddingCompat";
    private final ActivityWindowInfoCallbackController activityWindowInfoCallbackController;
    private final EmbeddingAdapter adapter;
    private final Context applicationContext;
    private final ConsumerAdapter consumerAdapter;
    private final ActivityEmbeddingComponent embeddingExtension;
    private boolean isCustomSplitAttributeCalculatorSet;
    private final OverlayControllerImpl overlayController;
    private final WindowSdkExtensions windowSdkExtensions;

    public EmbeddingCompat(ActivityEmbeddingComponent activityEmbeddingComponent, EmbeddingAdapter embeddingAdapter, ConsumerAdapter consumerAdapter, Context context, OverlayControllerImpl overlayControllerImpl, ActivityWindowInfoCallbackController activityWindowInfoCallbackController) {
        activityEmbeddingComponent.getClass();
        embeddingAdapter.getClass();
        consumerAdapter.getClass();
        context.getClass();
        this.embeddingExtension = activityEmbeddingComponent;
        this.adapter = embeddingAdapter;
        this.consumerAdapter = consumerAdapter;
        this.applicationContext = context;
        this.overlayController = overlayControllerImpl;
        this.activityWindowInfoCallbackController = activityWindowInfoCallbackController;
        this.windowSdkExtensions = WindowSdkExtensions.Companion.getInstance();
    }

    private final void registerSplitInfoCallback(final EmbeddingInterfaceCompat.EmbeddingCallbackInterface embeddingCallbackInterface) {
        this.embeddingExtension.setSplitInfoCallback(new Consumer2() { // from class: ww2
            @Override // androidx.window.reflection.Consumer2
            public final void accept(Object obj) {
                EmbeddingCompat.registerSplitInfoCallback$lambda$1(embeddingCallbackInterface, this, (List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerSplitInfoCallback$lambda$1(EmbeddingInterfaceCompat.EmbeddingCallbackInterface embeddingCallbackInterface, EmbeddingCompat embeddingCompat, List list) {
        list.getClass();
        embeddingCallbackInterface.onSplitInfoChanged(embeddingCompat.adapter.translate((List<? extends androidx.window.extensions.embedding.SplitInfo>) list));
    }

    private final void setDefaultSplitAttributeCalculatorIfNeeded() {
        if (this.windowSdkExtensions.getExtensionVersion() < 5 || this.isCustomSplitAttributeCalculatorSet || this.adapter.getEmbeddingConfiguration() == null) {
            return;
        }
        this.embeddingExtension.setSplitAttributesCalculator(new xw2());
    }

    private static final androidx.window.extensions.embedding.SplitAttributes setDefaultSplitAttributeCalculatorIfNeeded$lambda$3(EmbeddingCompat embeddingCompat, androidx.window.extensions.embedding.SplitAttributesCalculatorParams splitAttributesCalculatorParams) {
        if (!splitAttributesCalculatorParams.areDefaultConstraintsSatisfied()) {
            return embeddingCompat.adapter.translateSplitAttributes(new SplitAttributes.Builder().setSplitType(SplitAttributes.SplitType.SPLIT_TYPE_EXPAND).build());
        }
        EmbeddingAdapter embeddingAdapter = embeddingCompat.adapter;
        androidx.window.extensions.embedding.SplitAttributes defaultSplitAttributes = splitAttributesCalculatorParams.getDefaultSplitAttributes();
        defaultSplitAttributes.getClass();
        return embeddingAdapter.translateSplitAttributes(embeddingAdapter.translate$window_release(defaultSplitAttributes));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 setEmbeddingCallback$lambda$0(EmbeddingInterfaceCompat.EmbeddingCallbackInterface embeddingCallbackInterface, EmbeddingCompat embeddingCompat, List list) {
        list.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof androidx.window.extensions.embedding.SplitInfo) {
                arrayList.add(obj);
            }
        }
        embeddingCallbackInterface.onSplitInfoChanged(embeddingCompat.adapter.translate(arrayList));
        return j59.a;
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void addEmbeddedActivityWindowInfoCallbackForActivity(Activity activity, Consumer<EmbeddedActivityWindowInfo> consumer) {
        activity.getClass();
        consumer.getClass();
        ActivityWindowInfoCallbackController activityWindowInfoCallbackController = this.activityWindowInfoCallbackController;
        if (activityWindowInfoCallbackController != null) {
            activityWindowInfoCallbackController.addCallback(activity, consumer);
        } else {
            Log.w(TAG, "EmbeddedActivityWindowInfo is not supported on device less than version 6");
        }
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void addOverlayInfoCallback(String str, Executor executor, Consumer<OverlayInfo> consumer) {
        str.getClass();
        executor.getClass();
        consumer.getClass();
        OverlayControllerImpl overlayControllerImpl = this.overlayController;
        if (overlayControllerImpl != null) {
            overlayControllerImpl.addOverlayInfoCallback(str, executor, consumer);
        } else {
            Log.w(TAG, "overlayInfo is not supported on device less than version 5");
            consumer.accept(new OverlayInfo(str, null, null));
        }
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void clearOverlayAttributesCalculator() {
        this.windowSdkExtensions.requireExtensionVersion$window_release(8);
        OverlayControllerImpl overlayControllerImpl = this.overlayController;
        overlayControllerImpl.getClass();
        overlayControllerImpl.setOverlayAttributesCalculator$window_release(null);
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void clearSplitAttributesCalculator() {
        this.windowSdkExtensions.requireExtensionVersion$window_release(2);
        this.embeddingExtension.clearSplitAttributesCalculator();
        this.isCustomSplitAttributeCalculatorSet = false;
        setDefaultSplitAttributeCalculatorIfNeeded();
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void finishActivityStacks(Set<ActivityStack> set) {
        set.getClass();
        this.windowSdkExtensions.requireExtensionVersion$window_release(5);
        ActivityEmbeddingComponent activityEmbeddingComponent = this.embeddingExtension;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(((ActivityStack) it.next()).getToken$window_release());
        }
        activityEmbeddingComponent.finishActivityStacksWithTokens(linkedHashSet);
    }

    public final OverlayControllerImpl getOverlayController$window_release() {
        return this.overlayController;
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void invalidateVisibleActivityStacks() {
        this.windowSdkExtensions.requireExtensionVersion$window_release(3);
        invalidateVisibleActivityStacks(this.embeddingExtension);
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public boolean isActivityEmbedded(Activity activity) {
        activity.getClass();
        return this.embeddingExtension.isActivityEmbedded(activity);
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public boolean pinTopActivityStack(int i, SplitPinRule splitPinRule) {
        splitPinRule.getClass();
        this.windowSdkExtensions.requireExtensionVersion$window_release(5);
        return this.embeddingExtension.pinTopActivityStack(i, this.adapter.translateSplitPinRule(this.applicationContext, splitPinRule));
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void removeEmbeddedActivityWindowInfoCallbackForActivity(Consumer<EmbeddedActivityWindowInfo> consumer) {
        consumer.getClass();
        ActivityWindowInfoCallbackController activityWindowInfoCallbackController = this.activityWindowInfoCallbackController;
        if (activityWindowInfoCallbackController != null) {
            activityWindowInfoCallbackController.removeCallback(consumer);
        }
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void removeOverlayInfoCallback(Consumer<OverlayInfo> consumer) {
        consumer.getClass();
        OverlayControllerImpl overlayControllerImpl = this.overlayController;
        if (overlayControllerImpl != null) {
            overlayControllerImpl.removeOverlayInfoCallback(consumer);
        }
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void setEmbeddingCallback(EmbeddingInterfaceCompat.EmbeddingCallbackInterface embeddingCallbackInterface) {
        embeddingCallbackInterface.getClass();
        int extensionVersion = this.windowSdkExtensions.getExtensionVersion();
        if (extensionVersion == 1) {
            this.consumerAdapter.addConsumer(this.embeddingExtension, x07.a(List.class), "setSplitInfoCallback", new vw2(0, embeddingCallbackInterface, this));
            return;
        }
        if (2 <= extensionVersion && extensionVersion < 5) {
            registerSplitInfoCallback(embeddingCallbackInterface);
        } else {
            if (5 > extensionVersion || extensionVersion > Integer.MAX_VALUE) {
                return;
            }
            registerSplitInfoCallback(embeddingCallbackInterface);
            this.embeddingExtension.registerActivityStackCallback(new o86(), new ActivityStackConsumer(embeddingCallbackInterface, this.adapter));
        }
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void setEmbeddingConfiguration(EmbeddingConfiguration embeddingConfiguration) {
        embeddingConfiguration.getClass();
        this.windowSdkExtensions.requireExtensionVersion$window_release(5);
        this.adapter.setEmbeddingConfiguration(embeddingConfiguration);
        setDefaultSplitAttributeCalculatorIfNeeded();
        if (this.windowSdkExtensions.getExtensionVersion() >= 8) {
            try {
                this.embeddingExtension.setAutoSaveEmbeddingState(embeddingConfiguration.isAutoSaveEmbeddingState());
            } catch (Throwable th) {
                Log.w(TAG, "#setAutoSaveEmbeddingState failed", th);
            }
        }
        this.embeddingExtension.invalidateTopVisibleSplitAttributes();
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public Bundle setLaunchingActivityStack(Bundle bundle, ActivityStack activityStack) {
        bundle.getClass();
        activityStack.getClass();
        this.windowSdkExtensions.requireExtensionVersion$window_release(5);
        ActivityEmbeddingOptionsImpl.INSTANCE.setActivityStackToken$window_release(bundle, activityStack.getToken$window_release());
        return bundle;
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void setOverlayAttributesCalculator(nl3<? super OverlayAttributesCalculatorParams, OverlayAttributes> nl3Var) {
        nl3Var.getClass();
        this.windowSdkExtensions.requireExtensionVersion$window_release(8);
        OverlayControllerImpl overlayControllerImpl = this.overlayController;
        overlayControllerImpl.getClass();
        overlayControllerImpl.setOverlayAttributesCalculator$window_release(nl3Var);
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public Bundle setOverlayCreateParams(Bundle bundle, OverlayCreateParams overlayCreateParams) {
        bundle.getClass();
        overlayCreateParams.getClass();
        ActivityEmbeddingOptionsImpl.INSTANCE.setOverlayCreateParams$window_release(bundle, overlayCreateParams);
        return bundle;
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void setRules(Set<? extends EmbeddingRule> set) {
        set.getClass();
        Iterator<? extends EmbeddingRule> it = set.iterator();
        while (it.hasNext()) {
            if (it.next() instanceof SplitRule) {
                if (aa4.e(SplitController.Companion.getInstance(this.applicationContext).getSplitSupportStatus(), SplitController.SplitSupportStatus.SPLIT_AVAILABLE)) {
                    break;
                }
                if (BuildConfig.INSTANCE.getVerificationMode() == VerificationMode.LOG) {
                    Log.w(TAG, "Cannot set SplitRule because ActivityEmbedding Split is not supported or PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED is not set.");
                    return;
                }
                return;
            }
        }
        this.embeddingExtension.setEmbeddingRules(this.adapter.translate(this.applicationContext, set));
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void setSplitAttributesCalculator(nl3<? super SplitAttributesCalculatorParams, SplitAttributes> nl3Var) {
        nl3Var.getClass();
        this.windowSdkExtensions.requireExtensionVersion$window_release(2);
        this.embeddingExtension.setSplitAttributesCalculator(this.adapter.translateSplitAttributesCalculator(nl3Var));
        this.isCustomSplitAttributeCalculatorSet = true;
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void unpinTopActivityStack(int i) {
        this.windowSdkExtensions.requireExtensionVersion$window_release(5);
        this.embeddingExtension.unpinTopActivityStack(i);
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void updateOverlayAttributes(String str, OverlayAttributes overlayAttributes) {
        str.getClass();
        overlayAttributes.getClass();
        this.windowSdkExtensions.requireExtensionVersion$window_release(8);
        OverlayControllerImpl overlayControllerImpl = this.overlayController;
        overlayControllerImpl.getClass();
        overlayControllerImpl.updateOverlayAttributes$window_release(str, overlayAttributes);
    }

    @Override // androidx.window.embedding.EmbeddingInterfaceCompat
    public void updateSplitAttributes(SplitInfo splitInfo, SplitAttributes splitAttributes) {
        splitInfo.getClass();
        splitAttributes.getClass();
        this.windowSdkExtensions.requireExtensionVersion$window_release(3);
        int extensionVersion = this.windowSdkExtensions.getExtensionVersion();
        ActivityEmbeddingComponent activityEmbeddingComponent = this.embeddingExtension;
        if (extensionVersion >= 5) {
            activityEmbeddingComponent.updateSplitAttributes(splitInfo.getToken$window_release(), this.adapter.translateSplitAttributes(splitAttributes));
        } else {
            activityEmbeddingComponent.updateSplitAttributes(splitInfo.getBinder$window_release(), this.adapter.translateSplitAttributes(splitAttributes));
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final ActivityEmbeddingComponent emptyActivityEmbeddingProxy() {
            Object objNewProxyInstance = Proxy.newProxyInstance(EmbeddingCompat.class.getClassLoader(), new Class[]{ActivityEmbeddingComponent.class}, new yw2());
            objNewProxyInstance.getClass();
            return (ActivityEmbeddingComponent) objNewProxyInstance;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 emptyActivityEmbeddingProxy$lambda$2(Object obj, Method method, Object[] objArr) {
            return j59.a;
        }

        public final ActivityEmbeddingComponent embeddingComponent() {
            if (!isEmbeddingAvailable()) {
                return emptyActivityEmbeddingProxy();
            }
            ClassLoader classLoader = EmbeddingCompat.class.getClassLoader();
            if (classLoader != null) {
                ConsumerAdapter consumerAdapter = new ConsumerAdapter(classLoader);
                WindowExtensions windowExtensions = WindowExtensionsProvider.getWindowExtensions();
                windowExtensions.getClass();
                ActivityEmbeddingComponent activityEmbeddingComponent = new SafeActivityEmbeddingComponentProvider(classLoader, consumerAdapter, windowExtensions).getActivityEmbeddingComponent();
                if (activityEmbeddingComponent != null) {
                    return activityEmbeddingComponent;
                }
            }
            return emptyActivityEmbeddingProxy();
        }

        public final boolean isEmbeddingAvailable() {
            try {
                ClassLoader classLoader = EmbeddingCompat.class.getClassLoader();
                if (classLoader != null) {
                    ConsumerAdapter consumerAdapter = new ConsumerAdapter(classLoader);
                    WindowExtensions windowExtensions = WindowExtensionsProvider.getWindowExtensions();
                    windowExtensions.getClass();
                    if (new SafeActivityEmbeddingComponentProvider(classLoader, consumerAdapter, windowExtensions).getActivityEmbeddingComponent() != null) {
                        return true;
                    }
                }
                return false;
            } catch (NoClassDefFoundError unused) {
                Log.d(EmbeddingCompat.TAG, "Embedding extension version not found");
                return false;
            } catch (UnsupportedOperationException unused2) {
                Log.d(EmbeddingCompat.TAG, "Stub Extension");
                return false;
            }
        }

        private Companion() {
        }
    }

    private final void invalidateVisibleActivityStacks(ActivityEmbeddingComponent activityEmbeddingComponent) {
        activityEmbeddingComponent.invalidateTopVisibleSplitAttributes();
    }
}
