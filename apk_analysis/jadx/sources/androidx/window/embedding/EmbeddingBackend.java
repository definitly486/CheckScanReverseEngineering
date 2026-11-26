package androidx.window.embedding;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.core.util.Consumer;
import defpackage.nl3;
import defpackage.uf0;
import defpackage.us2;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public interface EmbeddingBackend {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static nl3<? super EmbeddingBackend, ? extends EmbeddingBackend> decorator = new uf0(2);

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final EmbeddingBackend decorator$lambda$0(EmbeddingBackend embeddingBackend) {
            embeddingBackend.getClass();
            return embeddingBackend;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final EmbeddingBackend reset$lambda$1(EmbeddingBackend embeddingBackend) {
            embeddingBackend.getClass();
            return embeddingBackend;
        }

        public final EmbeddingBackend getInstance(Context context) {
            context.getClass();
            return decorator.invoke(ExtensionEmbeddingBackend.Companion.getInstance(context));
        }

        public final void overrideDecorator(EmbeddingBackendDecorator embeddingBackendDecorator) {
            embeddingBackendDecorator.getClass();
            decorator = new EmbeddingBackend$Companion$overrideDecorator$1(embeddingBackendDecorator);
        }

        public final void reset() {
            decorator = new us2(1);
        }
    }

    static EmbeddingBackend getInstance(Context context) {
        return Companion.getInstance(context);
    }

    static void overrideDecorator(EmbeddingBackendDecorator embeddingBackendDecorator) {
        Companion.overrideDecorator(embeddingBackendDecorator);
    }

    static void reset() {
        Companion.reset();
    }

    void addEmbeddedActivityWindowInfoCallbackForActivity(Activity activity, Consumer<EmbeddedActivityWindowInfo> consumer);

    void addOverlayInfoCallback(String str, Executor executor, Consumer<OverlayInfo> consumer);

    void addRule(EmbeddingRule embeddingRule);

    void addSplitListenerForActivity(Activity activity, Executor executor, Consumer<List<SplitInfo>> consumer);

    void clearOverlayAttributesCalculator();

    void clearSplitAttributesCalculator();

    void finishActivityStacks(Set<ActivityStack> set);

    ActivityStack getActivityStack(Activity activity);

    Set<EmbeddingRule> getRules();

    SplitController.SplitSupportStatus getSplitSupportStatus();

    void invalidateVisibleActivityStacks();

    boolean isActivityEmbedded(Activity activity);

    boolean pinTopActivityStack(int i, SplitPinRule splitPinRule);

    void removeEmbeddedActivityWindowInfoCallbackForActivity(Consumer<EmbeddedActivityWindowInfo> consumer);

    void removeOverlayInfoCallback(Consumer<OverlayInfo> consumer);

    void removeRule(EmbeddingRule embeddingRule);

    void removeSplitListenerForActivity(Consumer<List<SplitInfo>> consumer);

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
