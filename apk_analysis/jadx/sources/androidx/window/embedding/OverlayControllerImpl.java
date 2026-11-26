package androidx.window.embedding;

import android.content.res.Configuration;
import android.os.Bundle;
import android.util.ArrayMap;
import android.view.WindowMetrics;
import androidx.core.util.Consumer;
import androidx.window.WindowSdkExtensions;
import androidx.window.embedding.OverlayControllerImpl;
import androidx.window.extensions.embedding.ActivityEmbeddingComponent;
import androidx.window.extensions.embedding.ActivityStackAttributes;
import androidx.window.extensions.embedding.ActivityStackAttributesCalculatorParams;
import androidx.window.extensions.layout.WindowLayoutInfo;
import androidx.window.layout.WindowMetricsCalculator;
import androidx.window.layout.adapter.extensions.ExtensionsWindowLayoutInfoAdapter;
import androidx.window.layout.util.DensityCompatHelper;
import androidx.window.reflection.Consumer2;
import defpackage.aa4;
import defpackage.ah;
import defpackage.b36;
import defpackage.bj;
import defpackage.fg;
import defpackage.j59;
import defpackage.kn1;
import defpackage.n05;
import defpackage.nl3;
import defpackage.o86;
import defpackage.qn1;
import defpackage.ss0;
import defpackage.xw2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes3.dex */
public class OverlayControllerImpl {
    private final EmbeddingAdapter adapter;
    private final ActivityEmbeddingComponent embeddingExtension;
    private final ReentrantLock globalLock;
    private nl3<? super OverlayAttributesCalculatorParams, OverlayAttributes> overlayAttributesCalculator;
    private final ArrayMap<Consumer<OverlayInfo>, androidx.window.extensions.core.util.function.Consumer<List<androidx.window.extensions.embedding.ActivityStack>>> overlayInfoToActivityStackCallbackMap;
    private final ArrayMap<String, androidx.window.extensions.embedding.ActivityStack> overlayTagToContainerMap;
    private final ArrayMap<String, OverlayAttributes> overlayTagToCurrentAttributesMap;
    private final Map<String, OverlayAttributes> overlayTagToDefaultAttributesMap;

    public OverlayControllerImpl(ActivityEmbeddingComponent activityEmbeddingComponent, EmbeddingAdapter embeddingAdapter) {
        activityEmbeddingComponent.getClass();
        embeddingAdapter.getClass();
        this.embeddingExtension = activityEmbeddingComponent;
        this.adapter = embeddingAdapter;
        this.globalLock = new ReentrantLock();
        this.overlayTagToDefaultAttributesMap = new ArrayMap();
        this.overlayTagToCurrentAttributesMap = new ArrayMap<>();
        this.overlayTagToContainerMap = new ArrayMap<>();
        this.overlayInfoToActivityStackCallbackMap = new ArrayMap<>();
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(8);
        activityEmbeddingComponent.setActivityStackAttributesCalculator(new xw2());
        activityEmbeddingComponent.registerActivityStackCallback(new o86(), new OverlayControllerActivityStackConsumer(new ss0(this, 1)));
    }

    private static final ActivityStackAttributes _init_$lambda$3(OverlayControllerImpl overlayControllerImpl, ActivityStackAttributesCalculatorParams activityStackAttributesCalculatorParams) {
        ReentrantLock reentrantLock = overlayControllerImpl.globalLock;
        reentrantLock.lock();
        try {
            androidx.window.extensions.embedding.ParentContainerInfo parentContainerInfo = activityStackAttributesCalculatorParams.getParentContainerInfo();
            parentContainerInfo.getClass();
            DensityCompatHelper companion = DensityCompatHelper.Companion.getInstance();
            Configuration configuration = parentContainerInfo.getConfiguration();
            configuration.getClass();
            WindowMetrics windowMetrics = parentContainerInfo.getWindowMetrics();
            windowMetrics.getClass();
            float fDensity = companion.density(configuration, windowMetrics);
            WindowMetricsCalculator.Companion companion2 = WindowMetricsCalculator.Companion;
            WindowMetrics windowMetrics2 = parentContainerInfo.getWindowMetrics();
            windowMetrics2.getClass();
            androidx.window.layout.WindowMetrics windowMetricsTranslateWindowMetrics$window_release = companion2.translateWindowMetrics$window_release(windowMetrics2, fDensity);
            String activityStackTag = activityStackAttributesCalculatorParams.getActivityStackTag();
            activityStackTag.getClass();
            ActivityEmbeddingOptionsImpl activityEmbeddingOptionsImpl = ActivityEmbeddingOptionsImpl.INSTANCE;
            Bundle launchOptions = activityStackAttributesCalculatorParams.getLaunchOptions();
            launchOptions.getClass();
            OverlayAttributes overlayAttributes$window_release = activityEmbeddingOptionsImpl.getOverlayAttributes$window_release(launchOptions);
            WindowMetrics windowMetrics3 = activityStackAttributesCalculatorParams.getParentContainerInfo().getWindowMetrics();
            windowMetrics3.getClass();
            androidx.window.layout.WindowMetrics windowMetricsTranslateWindowMetrics$window_release2 = companion2.translateWindowMetrics$window_release(windowMetrics3, fDensity);
            Configuration configuration2 = activityStackAttributesCalculatorParams.getParentContainerInfo().getConfiguration();
            configuration2.getClass();
            ExtensionsWindowLayoutInfoAdapter extensionsWindowLayoutInfoAdapter = ExtensionsWindowLayoutInfoAdapter.INSTANCE;
            WindowLayoutInfo windowLayoutInfo = parentContainerInfo.getWindowLayoutInfo();
            windowLayoutInfo.getClass();
            OverlayAttributes overlayAttributesCalculateOverlayAttributes$window_release = overlayControllerImpl.calculateOverlayAttributes$window_release(activityStackTag, overlayAttributes$window_release, windowMetricsTranslateWindowMetrics$window_release2, configuration2, extensionsWindowLayoutInfoAdapter.translate$window_release(windowMetricsTranslateWindowMetrics$window_release, windowLayoutInfo));
            Bundle launchOptions2 = activityStackAttributesCalculatorParams.getLaunchOptions();
            launchOptions2.getClass();
            activityEmbeddingOptionsImpl.putActivityStackAlignment$window_release(launchOptions2, overlayAttributesCalculateOverlayAttributes$window_release.getBounds());
            return overlayControllerImpl.toActivityStackAttributes(overlayAttributesCalculateOverlayAttributes$window_release, parentContainerInfo);
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$6(OverlayControllerImpl overlayControllerImpl, List list) {
        list.getClass();
        ReentrantLock reentrantLock = overlayControllerImpl.globalLock;
        reentrantLock.lock();
        try {
            Set<String> setKeySet = overlayControllerImpl.overlayTagToContainerMap.keySet();
            setKeySet.getClass();
            overlayControllerImpl.overlayTagToContainerMap.clear();
            ArrayMap<String, androidx.window.extensions.embedding.ActivityStack> arrayMap = overlayControllerImpl.overlayTagToContainerMap;
            List<androidx.window.extensions.embedding.ActivityStack> overlayContainers = overlayControllerImpl.getOverlayContainers(list);
            ArrayList arrayList = new ArrayList(kn1.q(overlayContainers, 10));
            for (androidx.window.extensions.embedding.ActivityStack activityStack : overlayContainers) {
                String tag = activityStack.getTag();
                tag.getClass();
                arrayList.add(new b36(tag, activityStack));
            }
            n05.i(arrayMap, arrayList);
            overlayControllerImpl.cleanUpDismissedOverlayContainerRecords(setKeySet);
            j59 j59Var = j59.a;
            return j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addOverlayInfoCallback$lambda$11$lambda$10(String str, OverlayControllerImpl overlayControllerImpl, Consumer consumer, List list) {
        list.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (aa4.e(((androidx.window.extensions.embedding.ActivityStack) obj).getTag(), str)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.size() <= 1) {
            consumer.accept(arrayList.isEmpty() ? new OverlayInfo(str, null, null) : overlayControllerImpl.toOverlayInfo((androidx.window.extensions.embedding.ActivityStack) qn1.T(arrayList)));
        } else {
            ah.f(bj.c("There must be at most one overlay ActivityStack with ", str));
        }
    }

    private final void cleanUpDismissedOverlayContainerRecords(Set<String> set) {
        if (set.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Set<String> setKeySet = this.overlayTagToContainerMap.keySet();
        setKeySet.getClass();
        for (String str : set) {
            if (!setKeySet.contains(str) && this.embeddingExtension.getActivityStackToken(str) == null) {
                arrayList.add(str);
            }
        }
        Iterator it = arrayList.iterator();
        it.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            next.getClass();
            String str2 = (String) next;
            this.overlayTagToDefaultAttributesMap.remove(str2);
            this.overlayTagToCurrentAttributesMap.remove(str2);
        }
    }

    private final List<androidx.window.extensions.embedding.ActivityStack> getOverlayContainers(List<? extends androidx.window.extensions.embedding.ActivityStack> list) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((androidx.window.extensions.embedding.ActivityStack) obj).getTag() != null) {
                arrayList.add(obj);
            }
        }
        return qn1.t0(arrayList);
    }

    private final ActivityStackAttributes toActivityStackAttributes(OverlayAttributes overlayAttributes, androidx.window.extensions.embedding.ParentContainerInfo parentContainerInfo) {
        ActivityStackAttributes activityStackAttributesBuild = new ActivityStackAttributes.Builder().setRelativeBounds(EmbeddingBounds.Companion.translateEmbeddingBounds$window_release(overlayAttributes.getBounds(), this.adapter.translate$window_release(parentContainerInfo)).toRect()).setWindowAttributes(this.adapter.translateWindowAttributes$window_release()).build();
        activityStackAttributesBuild.getClass();
        return activityStackAttributesBuild;
    }

    private final OverlayInfo toOverlayInfo(androidx.window.extensions.embedding.ActivityStack activityStack) {
        String tag = activityStack.getTag();
        tag.getClass();
        ArrayMap<String, OverlayAttributes> arrayMap = this.overlayTagToCurrentAttributesMap;
        String tag2 = activityStack.getTag();
        tag2.getClass();
        return new OverlayInfo(tag, arrayMap.get(tag2), this.adapter.translate$window_release(activityStack));
    }

    public void addOverlayInfoCallback(final String str, Executor executor, final Consumer<OverlayInfo> consumer) {
        str.getClass();
        executor.getClass();
        consumer.getClass();
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            Consumer2 consumer2 = new Consumer2() { // from class: w06
                @Override // androidx.window.reflection.Consumer2
                public final void accept(Object obj) {
                    OverlayControllerImpl.addOverlayInfoCallback$lambda$11$lambda$10(str, this, consumer, (List) obj);
                }
            };
            this.overlayInfoToActivityStackCallbackMap.put(consumer, consumer2);
            this.embeddingExtension.registerActivityStackCallback(executor, consumer2);
            j59 j59Var = j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final OverlayAttributes calculateOverlayAttributes$window_release(String str, OverlayAttributes overlayAttributes, androidx.window.layout.WindowMetrics windowMetrics, Configuration configuration, androidx.window.layout.WindowLayoutInfo windowLayoutInfo) {
        OverlayAttributes overlayAttributes2;
        String str2;
        str.getClass();
        windowMetrics.getClass();
        configuration.getClass();
        windowLayoutInfo.getClass();
        OverlayAttributes updatedOverlayAttributes$window_release = getUpdatedOverlayAttributes$window_release(str);
        if (updatedOverlayAttributes$window_release != null) {
            overlayAttributes2 = updatedOverlayAttributes$window_release;
        } else {
            if (overlayAttributes == null) {
                fg.c("Can't retrieve overlay attributes from launch options");
                return null;
            }
            overlayAttributes2 = overlayAttributes;
        }
        nl3<OverlayAttributesCalculatorParams, OverlayAttributes> overlayAttributesCalculator$window_release = getOverlayAttributesCalculator$window_release();
        if (overlayAttributesCalculator$window_release != null) {
            str2 = str;
            OverlayAttributes overlayAttributesInvoke = overlayAttributesCalculator$window_release.invoke(new OverlayAttributesCalculatorParams(windowMetrics, configuration, windowLayoutInfo, str2, overlayAttributes2));
            if (overlayAttributesInvoke != null) {
                overlayAttributes2 = overlayAttributesInvoke;
            }
        } else {
            str2 = str;
        }
        this.overlayTagToCurrentAttributesMap.put(str2, overlayAttributes2);
        return overlayAttributes2;
    }

    public final nl3<OverlayAttributesCalculatorParams, OverlayAttributes> getOverlayAttributesCalculator$window_release() {
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            return this.overlayAttributesCalculator;
        } finally {
            reentrantLock.unlock();
        }
    }

    public OverlayAttributes getUpdatedOverlayAttributes$window_release(String str) {
        str.getClass();
        return this.overlayTagToDefaultAttributesMap.get(str);
    }

    public void removeOverlayInfoCallback(Consumer<OverlayInfo> consumer) {
        consumer.getClass();
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            androidx.window.extensions.core.util.function.Consumer<List<androidx.window.extensions.embedding.ActivityStack>> consumerRemove = this.overlayInfoToActivityStackCallbackMap.remove(consumer);
            if (consumerRemove != null) {
                this.embeddingExtension.unregisterActivityStackCallback(consumerRemove);
            }
            j59 j59Var = j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void setOverlayAttributesCalculator$window_release(nl3<? super OverlayAttributesCalculatorParams, OverlayAttributes> nl3Var) {
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            this.overlayAttributesCalculator = nl3Var;
            j59 j59Var = j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void updateOverlayAttributes$window_release(String str, OverlayAttributes overlayAttributes) {
        androidx.window.extensions.embedding.ActivityStack.Token activityStackToken;
        str.getClass();
        overlayAttributes.getClass();
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            androidx.window.extensions.embedding.ActivityStack activityStack = this.overlayTagToContainerMap.get(str);
            if (activityStack == null || (activityStackToken = activityStack.getActivityStackToken()) == null) {
                activityStackToken = this.embeddingExtension.getActivityStackToken(str);
                if (activityStackToken == null) {
                    return;
                }
            }
            ActivityEmbeddingComponent activityEmbeddingComponent = this.embeddingExtension;
            androidx.window.extensions.embedding.ParentContainerInfo parentContainerInfo = activityEmbeddingComponent.getParentContainerInfo(activityStackToken);
            parentContainerInfo.getClass();
            activityEmbeddingComponent.updateActivityStackAttributes(activityStackToken, toActivityStackAttributes(overlayAttributes, parentContainerInfo));
            this.overlayTagToDefaultAttributesMap.put(str, overlayAttributes);
            this.overlayTagToCurrentAttributesMap.put(str, overlayAttributes);
            j59 j59Var = j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
