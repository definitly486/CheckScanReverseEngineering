package androidx.window.embedding;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.collection.ArraySet;
import androidx.core.util.Consumer;
import androidx.window.WindowProperties;
import androidx.window.WindowSdkExtensions;
import androidx.window.core.BuildConfig;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.PredicateAdapter;
import androidx.window.core.VerificationMode;
import androidx.window.extensions.embedding.ActivityEmbeddingComponent;
import defpackage.aa4;
import defpackage.cl4;
import defpackage.fg;
import defpackage.fh8;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kb;
import defpackage.kx2;
import defpackage.lz0;
import defpackage.me0;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.v39;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes3.dex */
public final class ExtensionEmbeddingBackend implements EmbeddingBackend {
    private static final String TAG = "EmbeddingBackend";
    private static volatile ExtensionEmbeddingBackend globalInstance;
    private final Context applicationContext;
    private final EmbeddingCallbackImpl embeddingCallback;
    private EmbeddingInterfaceCompat embeddingExtension;
    private final RuleTracker ruleTracker;
    private final CopyOnWriteArrayList<SplitListenerWrapper> splitChangeCallbacks;
    private final cl4 splitSupportStatus$delegate;
    public static final Companion Companion = new Companion(null);
    private static final ReentrantLock globalLock = new ReentrantLock();

    public static final class Api31Impl {
        public static final Api31Impl INSTANCE = new Api31Impl();

        private Api31Impl() {
        }

        public final SplitController.SplitSupportStatus isSplitPropertyEnabled(Context context) {
            context.getClass();
            try {
                PackageManager.Property property = context.getPackageManager().getProperty(WindowProperties.PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED, context.getPackageName());
                property.getClass();
                if (property.isBoolean()) {
                    return property.getBoolean() ? SplitController.SplitSupportStatus.SPLIT_AVAILABLE : SplitController.SplitSupportStatus.SPLIT_UNAVAILABLE;
                }
                if (BuildConfig.INSTANCE.getVerificationMode() == VerificationMode.LOG) {
                    Log.w(ExtensionEmbeddingBackend.TAG, "android.window.PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED must have a boolean value");
                }
                return SplitController.SplitSupportStatus.SPLIT_ERROR_PROPERTY_NOT_DECLARED;
            } catch (PackageManager.NameNotFoundException unused) {
                if (BuildConfig.INSTANCE.getVerificationMode() == VerificationMode.LOG) {
                    Log.w(ExtensionEmbeddingBackend.TAG, "android.window.PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED must be set and enabled in AndroidManifest.xml to use splits APIs.");
                }
                return SplitController.SplitSupportStatus.SPLIT_ERROR_PROPERTY_NOT_DECLARED;
            } catch (Exception e) {
                if (BuildConfig.INSTANCE.getVerificationMode() == VerificationMode.LOG) {
                    Log.e(ExtensionEmbeddingBackend.TAG, "PackageManager.getProperty is not supported", e);
                }
                return SplitController.SplitSupportStatus.SPLIT_ERROR_PROPERTY_NOT_DECLARED;
            }
        }
    }

    public final class EmbeddingCallbackImpl implements EmbeddingInterfaceCompat.EmbeddingCallbackInterface {
        private List<ActivityStack> lastActivityStacks;
        private List<SplitInfo> lastInfo;

        public EmbeddingCallbackImpl() {
            kx2 kx2Var = kx2.b;
            this.lastInfo = kx2Var;
            this.lastActivityStacks = kx2Var;
        }

        public final List<ActivityStack> getLastActivityStacks() {
            return this.lastActivityStacks;
        }

        public final List<SplitInfo> getLastInfo() {
            return this.lastInfo;
        }

        @Override // androidx.window.embedding.EmbeddingInterfaceCompat.EmbeddingCallbackInterface
        public void onActivityStackChanged(List<ActivityStack> list) {
            list.getClass();
            this.lastActivityStacks = list;
        }

        @Override // androidx.window.embedding.EmbeddingInterfaceCompat.EmbeddingCallbackInterface
        public void onSplitInfoChanged(List<SplitInfo> list) {
            list.getClass();
            this.lastInfo = list;
            Iterator<SplitListenerWrapper> it = ExtensionEmbeddingBackend.this.getSplitChangeCallbacks().iterator();
            it.getClass();
            while (it.hasNext()) {
                it.next().accept(list);
            }
        }

        public final void setLastActivityStacks(List<ActivityStack> list) {
            list.getClass();
            this.lastActivityStacks = list;
        }

        public final void setLastInfo(List<SplitInfo> list) {
            list.getClass();
            this.lastInfo = list;
        }
    }

    public static final class RuleTracker {
        private final ArraySet<EmbeddingRule> splitRules = new ArraySet<>(0, 1, null);
        private final HashMap<String, EmbeddingRule> tagRuleMap = new HashMap<>();

        public static /* synthetic */ void addOrUpdateRule$default(RuleTracker ruleTracker, EmbeddingRule embeddingRule, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            ruleTracker.addOrUpdateRule(embeddingRule, z);
        }

        public final void addOrUpdateRule(EmbeddingRule embeddingRule, boolean z) {
            embeddingRule.getClass();
            if (this.splitRules.contains(embeddingRule)) {
                return;
            }
            String tag = embeddingRule.getTag();
            if (tag == null) {
                this.splitRules.add(embeddingRule);
                return;
            }
            if (!this.tagRuleMap.containsKey(tag)) {
                this.tagRuleMap.put(tag, embeddingRule);
                this.splitRules.add(embeddingRule);
            } else {
                if (z) {
                    fg.c(me0.c("Duplicated tag: ", tag, ". Tag must be unique among all registered rules"));
                    return;
                }
                v39.a(this.splitRules).remove(this.tagRuleMap.get(tag));
                this.tagRuleMap.put(tag, embeddingRule);
                this.splitRules.add(embeddingRule);
            }
        }

        public final void clearRules() {
            this.splitRules.clear();
            this.tagRuleMap.clear();
        }

        public final boolean contains(EmbeddingRule embeddingRule) {
            embeddingRule.getClass();
            return this.splitRules.contains(embeddingRule);
        }

        public final ArraySet<EmbeddingRule> getSplitRules() {
            return this.splitRules;
        }

        public final void removeRule(EmbeddingRule embeddingRule) {
            embeddingRule.getClass();
            if (this.splitRules.contains(embeddingRule)) {
                this.splitRules.remove(embeddingRule);
                if (embeddingRule.getTag() != null) {
                    this.tagRuleMap.remove(embeddingRule.getTag());
                }
            }
        }

        public final void setRules(Set<? extends EmbeddingRule> set) {
            set.getClass();
            clearRules();
            Iterator<T> it = set.iterator();
            while (it.hasNext()) {
                addOrUpdateRule((EmbeddingRule) it.next(), true);
            }
        }
    }

    public static final class SplitListenerWrapper {
        private final Activity activity;
        private final Consumer<List<SplitInfo>> callback;
        private final Executor executor;
        private List<SplitInfo> lastValue;

        public SplitListenerWrapper(Activity activity, Executor executor, Consumer<List<SplitInfo>> consumer) {
            activity.getClass();
            executor.getClass();
            consumer.getClass();
            this.activity = activity;
            this.executor = executor;
            this.callback = consumer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void accept$lambda$1(SplitListenerWrapper splitListenerWrapper, List list) {
            splitListenerWrapper.callback.accept(list);
        }

        public final void accept(List<SplitInfo> list) {
            list.getClass();
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((SplitInfo) obj).contains(this.activity)) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.equals(this.lastValue)) {
                return;
            }
            this.lastValue = arrayList;
            this.executor.execute(new kb(1, this, arrayList));
        }

        public final Consumer<List<SplitInfo>> getCallback() {
            return this.callback;
        }
    }

    public ExtensionEmbeddingBackend(Context context, EmbeddingInterfaceCompat embeddingInterfaceCompat) {
        context.getClass();
        this.applicationContext = context;
        this.embeddingExtension = embeddingInterfaceCompat;
        EmbeddingCallbackImpl embeddingCallbackImpl = new EmbeddingCallbackImpl();
        this.embeddingCallback = embeddingCallbackImpl;
        this.splitChangeCallbacks = new CopyOnWriteArrayList<>();
        EmbeddingInterfaceCompat embeddingInterfaceCompat2 = this.embeddingExtension;
        if (embeddingInterfaceCompat2 != null) {
            embeddingInterfaceCompat2.setEmbeddingCallback(embeddingCallbackImpl);
        }
        this.ruleTracker = new RuleTracker();
        this.splitSupportStatus$delegate = new fh8(new lz0(this, 1));
    }

    private final boolean areExtensionsAvailable() {
        return this.embeddingExtension != null;
    }

    private final ActivityStack getActivityStackFromSplitInfoList(Activity activity) {
        for (SplitInfo splitInfo : this.embeddingCallback.getLastInfo()) {
            if (splitInfo.contains(activity)) {
                if (splitInfo.getPrimaryActivityStack().contains(activity)) {
                    return splitInfo.getPrimaryActivityStack();
                }
                if (splitInfo.getSecondaryActivityStack().contains(activity)) {
                    return splitInfo.getSecondaryActivityStack();
                }
            }
        }
        return null;
    }

    public static /* synthetic */ void getSplitChangeCallbacks$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SplitController.SplitSupportStatus splitSupportStatus_delegate$lambda$6(ExtensionEmbeddingBackend extensionEmbeddingBackend) {
        if (extensionEmbeddingBackend.areExtensionsAvailable()) {
            return Build.VERSION.SDK_INT >= 31 ? Api31Impl.INSTANCE.isSplitPropertyEnabled(extensionEmbeddingBackend.applicationContext) : SplitController.SplitSupportStatus.SPLIT_AVAILABLE;
        }
        return SplitController.SplitSupportStatus.SPLIT_UNAVAILABLE;
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void addEmbeddedActivityWindowInfoCallbackForActivity(Activity activity, Consumer<EmbeddedActivityWindowInfo> consumer) {
        activity.getClass();
        consumer.getClass();
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            embeddingInterfaceCompat.addEmbeddedActivityWindowInfoCallbackForActivity(activity, consumer);
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void addOverlayInfoCallback(String str, Executor executor, Consumer<OverlayInfo> consumer) {
        str.getClass();
        executor.getClass();
        consumer.getClass();
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            embeddingInterfaceCompat.addOverlayInfoCallback(str, executor, consumer);
        } else {
            consumer.accept(new OverlayInfo(str, null, null));
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void addRule(EmbeddingRule embeddingRule) {
        embeddingRule.getClass();
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            if (!this.ruleTracker.contains(embeddingRule)) {
                RuleTracker.addOrUpdateRule$default(this.ruleTracker, embeddingRule, false, 2, null);
                EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
                if (embeddingInterfaceCompat != null) {
                    embeddingInterfaceCompat.setRules(getRules());
                }
            }
            j59 j59Var = j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void addSplitListenerForActivity(Activity activity, Executor executor, Consumer<List<SplitInfo>> consumer) {
        activity.getClass();
        executor.getClass();
        consumer.getClass();
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            if (this.embeddingExtension == null) {
                Log.v(TAG, "Extension not loaded, skipping callback registration.");
                consumer.accept(kx2.b);
            } else {
                SplitListenerWrapper splitListenerWrapper = new SplitListenerWrapper(activity, executor, consumer);
                this.splitChangeCallbacks.add(splitListenerWrapper);
                splitListenerWrapper.accept(this.embeddingCallback.getLastInfo());
                j59 j59Var = j59.a;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void clearOverlayAttributesCalculator() {
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            embeddingInterfaceCompat.clearOverlayAttributesCalculator();
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void clearSplitAttributesCalculator() {
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
            if (embeddingInterfaceCompat != null) {
                embeddingInterfaceCompat.clearSplitAttributesCalculator();
                j59 j59Var = j59.a;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void finishActivityStacks(Set<ActivityStack> set) {
        set.getClass();
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            embeddingInterfaceCompat.finishActivityStacks(set);
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public ActivityStack getActivityStack(Activity activity) {
        Object next;
        activity.getClass();
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            Iterator<T> it = this.embeddingCallback.getLastActivityStacks().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!((ActivityStack) next).contains(activity));
            ActivityStack activityStackFromSplitInfoList = (ActivityStack) next;
            if (activityStackFromSplitInfoList == null) {
                activityStackFromSplitInfoList = getActivityStackFromSplitInfoList(activity);
            }
            return activityStackFromSplitInfoList;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final EmbeddingInterfaceCompat getEmbeddingExtension() {
        return this.embeddingExtension;
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public Set<EmbeddingRule> getRules() {
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            return qn1.y0(this.ruleTracker.getSplitRules());
        } finally {
            reentrantLock.unlock();
        }
    }

    public final CopyOnWriteArrayList<SplitListenerWrapper> getSplitChangeCallbacks() {
        return this.splitChangeCallbacks;
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public SplitController.SplitSupportStatus getSplitSupportStatus() {
        return (SplitController.SplitSupportStatus) this.splitSupportStatus$delegate.getValue();
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void invalidateVisibleActivityStacks() {
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            embeddingInterfaceCompat.invalidateVisibleActivityStacks();
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public boolean isActivityEmbedded(Activity activity) {
        activity.getClass();
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            return embeddingInterfaceCompat.isActivityEmbedded(activity);
        }
        return false;
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public boolean pinTopActivityStack(int i, SplitPinRule splitPinRule) {
        splitPinRule.getClass();
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            return embeddingInterfaceCompat.pinTopActivityStack(i, splitPinRule);
        }
        return false;
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void removeEmbeddedActivityWindowInfoCallbackForActivity(Consumer<EmbeddedActivityWindowInfo> consumer) {
        consumer.getClass();
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            embeddingInterfaceCompat.removeEmbeddedActivityWindowInfoCallbackForActivity(consumer);
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void removeOverlayInfoCallback(Consumer<OverlayInfo> consumer) {
        consumer.getClass();
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            embeddingInterfaceCompat.removeOverlayInfoCallback(consumer);
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void removeRule(EmbeddingRule embeddingRule) {
        embeddingRule.getClass();
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            if (this.ruleTracker.contains(embeddingRule)) {
                this.ruleTracker.removeRule(embeddingRule);
                EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
                if (embeddingInterfaceCompat != null) {
                    embeddingInterfaceCompat.setRules(getRules());
                }
            }
            j59 j59Var = j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void removeSplitListenerForActivity(Consumer<List<SplitInfo>> consumer) {
        consumer.getClass();
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            Iterator<SplitListenerWrapper> it = this.splitChangeCallbacks.iterator();
            it.getClass();
            while (it.hasNext()) {
                SplitListenerWrapper next = it.next();
                if (aa4.e(next.getCallback(), consumer)) {
                    this.splitChangeCallbacks.remove(next);
                    break;
                }
            }
            j59 j59Var = j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void setEmbeddingConfiguration(EmbeddingConfiguration embeddingConfiguration) {
        embeddingConfiguration.getClass();
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            embeddingInterfaceCompat.setEmbeddingConfiguration(embeddingConfiguration);
        }
    }

    public final void setEmbeddingExtension(EmbeddingInterfaceCompat embeddingInterfaceCompat) {
        this.embeddingExtension = embeddingInterfaceCompat;
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public Bundle setLaunchingActivityStack(Bundle bundle, ActivityStack activityStack) {
        Bundle launchingActivityStack;
        bundle.getClass();
        activityStack.getClass();
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        return (embeddingInterfaceCompat == null || (launchingActivityStack = embeddingInterfaceCompat.setLaunchingActivityStack(bundle, activityStack)) == null) ? bundle : launchingActivityStack;
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void setOverlayAttributesCalculator(nl3<? super OverlayAttributesCalculatorParams, OverlayAttributes> nl3Var) {
        nl3Var.getClass();
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            embeddingInterfaceCompat.setOverlayAttributesCalculator(nl3Var);
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public Bundle setOverlayCreateParams(Bundle bundle, OverlayCreateParams overlayCreateParams) {
        Bundle overlayCreateParams2;
        bundle.getClass();
        overlayCreateParams.getClass();
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        return (embeddingInterfaceCompat == null || (overlayCreateParams2 = embeddingInterfaceCompat.setOverlayCreateParams(bundle, overlayCreateParams)) == null) ? bundle : overlayCreateParams2;
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void setRules(Set<? extends EmbeddingRule> set) {
        set.getClass();
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            this.ruleTracker.setRules(set);
            EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
            if (embeddingInterfaceCompat != null) {
                embeddingInterfaceCompat.setRules(getRules());
                j59 j59Var = j59.a;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void setSplitAttributesCalculator(nl3<? super SplitAttributesCalculatorParams, SplitAttributes> nl3Var) {
        nl3Var.getClass();
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
            if (embeddingInterfaceCompat != null) {
                embeddingInterfaceCompat.setSplitAttributesCalculator(nl3Var);
                j59 j59Var = j59.a;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void unpinTopActivityStack(int i) {
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            embeddingInterfaceCompat.unpinTopActivityStack(i);
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void updateOverlayAttributes(String str, OverlayAttributes overlayAttributes) {
        str.getClass();
        overlayAttributes.getClass();
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            embeddingInterfaceCompat.updateOverlayAttributes(str, overlayAttributes);
        }
    }

    @Override // androidx.window.embedding.EmbeddingBackend
    public void updateSplitAttributes(SplitInfo splitInfo, SplitAttributes splitAttributes) {
        splitInfo.getClass();
        splitAttributes.getClass();
        EmbeddingInterfaceCompat embeddingInterfaceCompat = this.embeddingExtension;
        if (embeddingInterfaceCompat != null) {
            embeddingInterfaceCompat.updateSplitAttributes(splitInfo, splitAttributes);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final EmbeddingInterfaceCompat initAndVerifyEmbeddingExtension(Context context) {
            ClassLoader classLoader;
            int extensionVersion = WindowSdkExtensions.Companion.getInstance().getExtensionVersion();
            EmbeddingCompat embeddingCompat = null;
            try {
                if (isExtensionVersionSupported(Integer.valueOf(extensionVersion))) {
                    EmbeddingCompat.Companion companion = EmbeddingCompat.Companion;
                    if (companion.isEmbeddingAvailable() && (classLoader = EmbeddingBackend.class.getClassLoader()) != null) {
                        ActivityEmbeddingComponent activityEmbeddingComponentEmbeddingComponent = companion.embeddingComponent();
                        EmbeddingAdapter embeddingAdapter = new EmbeddingAdapter(new PredicateAdapter(classLoader));
                        embeddingCompat = new EmbeddingCompat(activityEmbeddingComponentEmbeddingComponent, embeddingAdapter, new ConsumerAdapter(classLoader), context, extensionVersion >= 8 ? new OverlayControllerImpl(activityEmbeddingComponentEmbeddingComponent, embeddingAdapter) : null, extensionVersion >= 6 ? new ActivityWindowInfoCallbackController(activityEmbeddingComponentEmbeddingComponent) : null);
                    }
                }
            } catch (Throwable th) {
                Log.d(ExtensionEmbeddingBackend.TAG, "Failed to load embedding extension: " + th);
            }
            if (embeddingCompat == null) {
                Log.d(ExtensionEmbeddingBackend.TAG, "No supported embedding extension found");
            }
            return embeddingCompat;
        }

        public final EmbeddingBackend getInstance(Context context) {
            context.getClass();
            if (ExtensionEmbeddingBackend.globalInstance == null) {
                ReentrantLock reentrantLock = ExtensionEmbeddingBackend.globalLock;
                reentrantLock.lock();
                try {
                    if (ExtensionEmbeddingBackend.globalInstance == null) {
                        Context applicationContext = context.getApplicationContext();
                        Companion companion = ExtensionEmbeddingBackend.Companion;
                        applicationContext.getClass();
                        ExtensionEmbeddingBackend.globalInstance = new ExtensionEmbeddingBackend(applicationContext, companion.initAndVerifyEmbeddingExtension(applicationContext));
                    }
                    j59 j59Var = j59.a;
                    reentrantLock.unlock();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            }
            ExtensionEmbeddingBackend extensionEmbeddingBackend = ExtensionEmbeddingBackend.globalInstance;
            extensionEmbeddingBackend.getClass();
            return extensionEmbeddingBackend;
        }

        public final boolean isExtensionVersionSupported(Integer num) {
            return num != null && num.intValue() >= 1;
        }

        private Companion() {
        }
    }
}
