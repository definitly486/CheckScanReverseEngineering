package androidx.window.embedding;

import android.app.Activity;
import android.os.Bundle;
import androidx.core.util.Consumer;
import defpackage.nl3;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public interface EmbeddingInterfaceCompat {

    public interface EmbeddingCallbackInterface {
        void onActivityStackChanged(List<ActivityStack> list);

        void onSplitInfoChanged(List<SplitInfo> list);
    }

    void addEmbeddedActivityWindowInfoCallbackForActivity(Activity activity, Consumer<EmbeddedActivityWindowInfo> consumer);

    void addOverlayInfoCallback(String str, Executor executor, Consumer<OverlayInfo> consumer);

    void clearOverlayAttributesCalculator();

    void clearSplitAttributesCalculator();

    void finishActivityStacks(Set<ActivityStack> set);

    void invalidateVisibleActivityStacks();

    boolean isActivityEmbedded(Activity activity);

    boolean pinTopActivityStack(int i, SplitPinRule splitPinRule);

    void removeEmbeddedActivityWindowInfoCallbackForActivity(Consumer<EmbeddedActivityWindowInfo> consumer);

    void removeOverlayInfoCallback(Consumer<OverlayInfo> consumer);

    void setEmbeddingCallback(EmbeddingCallbackInterface embeddingCallbackInterface);

    void setEmbeddingConfiguration(EmbeddingConfiguration embeddingConfiguration);

    Bundle setLaunchingActivityStack(Bundle bundle, ActivityStack activityStack);

    void setOverlayAttributesCalculator(nl3<? super OverlayAttributesCalculatorParams, OverlayAttributes> nl3Var);

    Bundle setOverlayCreateParams(Bundle bundle, OverlayCreateParams overlayCreateParams);

    void setRules(Set<? extends EmbeddingRule> set);

    void setSplitAttributesCalculator(nl3<? super SplitAttributesCalculatorParams, SplitAttributes> nl3Var);

    void unpinTopActivityStack(int i);

    void updateOverlayAttributes(String str, OverlayAttributes overlayAttributes);

    void updateSplitAttributes(SplitInfo splitInfo, SplitAttributes splitAttributes);
}
