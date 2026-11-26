package androidx.window.embedding;

import android.app.Activity;
import android.graphics.Rect;
import android.util.ArrayMap;
import androidx.core.util.Consumer;
import androidx.window.WindowSdkExtensions;
import androidx.window.embedding.ActivityWindowInfoCallbackController;
import androidx.window.extensions.embedding.ActivityEmbeddingComponent;
import androidx.window.extensions.embedding.EmbeddedActivityWindowInfo;
import androidx.window.reflection.Consumer2;
import defpackage.aa4;
import defpackage.j59;
import defpackage.o86;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes3.dex */
public class ActivityWindowInfoCallbackController {
    private Map<Consumer<EmbeddedActivityWindowInfo>, CallbackWrapper> callbacks;
    private final ActivityEmbeddingComponent embeddingExtension;
    private final androidx.window.extensions.core.util.function.Consumer<androidx.window.extensions.embedding.EmbeddedActivityWindowInfo> extensionsCallback;
    private final ReentrantLock globalLock;

    public final class CallbackWrapper {
        private final Activity activity;
        private final Consumer<EmbeddedActivityWindowInfo> callback;
        private EmbeddedActivityWindowInfo lastReportedInfo;
        final /* synthetic */ ActivityWindowInfoCallbackController this$0;

        public CallbackWrapper(ActivityWindowInfoCallbackController activityWindowInfoCallbackController, Activity activity, Consumer<EmbeddedActivityWindowInfo> consumer) {
            activity.getClass();
            consumer.getClass();
            this.this$0 = activityWindowInfoCallbackController;
            this.activity = activity;
            this.callback = consumer;
        }

        private final boolean shouldReportInfo(EmbeddedActivityWindowInfo embeddedActivityWindowInfo) {
            EmbeddedActivityWindowInfo embeddedActivityWindowInfo2 = this.lastReportedInfo;
            if (embeddedActivityWindowInfo2 == null) {
                return embeddedActivityWindowInfo.isEmbedded();
            }
            if (embeddedActivityWindowInfo2.isEmbedded() != embeddedActivityWindowInfo.isEmbedded()) {
                return true;
            }
            if (embeddedActivityWindowInfo.isEmbedded()) {
                return !embeddedActivityWindowInfo2.equals(embeddedActivityWindowInfo);
            }
            return false;
        }

        public final void accept(androidx.window.extensions.embedding.EmbeddedActivityWindowInfo embeddedActivityWindowInfo) {
            embeddedActivityWindowInfo.getClass();
            Activity activity = embeddedActivityWindowInfo.getActivity();
            activity.getClass();
            if (aa4.e(this.activity, activity)) {
                EmbeddedActivityWindowInfo embeddedActivityWindowInfoTranslate$window_release = this.this$0.translate$window_release(embeddedActivityWindowInfo);
                if (shouldReportInfo(embeddedActivityWindowInfoTranslate$window_release)) {
                    this.lastReportedInfo = embeddedActivityWindowInfoTranslate$window_release;
                    this.callback.accept(embeddedActivityWindowInfoTranslate$window_release);
                }
            }
        }

        public final Consumer<EmbeddedActivityWindowInfo> getCallback() {
            return this.callback;
        }

        public final EmbeddedActivityWindowInfo getLastReportedInfo() {
            return this.lastReportedInfo;
        }

        public final void setLastReportedInfo(EmbeddedActivityWindowInfo embeddedActivityWindowInfo) {
            this.lastReportedInfo = embeddedActivityWindowInfo;
        }
    }

    public ActivityWindowInfoCallbackController(ActivityEmbeddingComponent activityEmbeddingComponent) {
        activityEmbeddingComponent.getClass();
        this.embeddingExtension = activityEmbeddingComponent;
        this.globalLock = new ReentrantLock();
        this.callbacks = new ArrayMap();
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(6);
        this.extensionsCallback = new Consumer2() { // from class: s7
            @Override // androidx.window.reflection.Consumer2
            public final void accept(Object obj) {
                ActivityWindowInfoCallbackController._init_$lambda$1(this.b, (EmbeddedActivityWindowInfo) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(ActivityWindowInfoCallbackController activityWindowInfoCallbackController, androidx.window.extensions.embedding.EmbeddedActivityWindowInfo embeddedActivityWindowInfo) {
        embeddedActivityWindowInfo.getClass();
        ReentrantLock reentrantLock = activityWindowInfoCallbackController.globalLock;
        reentrantLock.lock();
        try {
            Iterator<CallbackWrapper> it = activityWindowInfoCallbackController.callbacks.values().iterator();
            while (it.hasNext()) {
                it.next().accept(embeddedActivityWindowInfo);
            }
            j59 j59Var = j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public static /* synthetic */ void getCallbacks$window_release$annotations() {
    }

    public final void addCallback(Activity activity, Consumer<EmbeddedActivityWindowInfo> consumer) {
        activity.getClass();
        consumer.getClass();
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            if (this.callbacks.isEmpty()) {
                this.embeddingExtension.setEmbeddedActivityWindowInfoCallback(new o86(), this.extensionsCallback);
            }
            CallbackWrapper callbackWrapper = new CallbackWrapper(this, activity, consumer);
            this.callbacks.put(consumer, callbackWrapper);
            androidx.window.extensions.embedding.EmbeddedActivityWindowInfo embeddedActivityWindowInfo = this.embeddingExtension.getEmbeddedActivityWindowInfo(activity);
            if (embeddedActivityWindowInfo != null) {
                callbackWrapper.accept(embeddedActivityWindowInfo);
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final Map<Consumer<EmbeddedActivityWindowInfo>, CallbackWrapper> getCallbacks$window_release() {
        return this.callbacks;
    }

    public final void removeCallback(Consumer<EmbeddedActivityWindowInfo> consumer) {
        consumer.getClass();
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            if (this.callbacks.remove(consumer) == null) {
                return;
            }
            if (this.callbacks.isEmpty()) {
                this.embeddingExtension.clearEmbeddedActivityWindowInfoCallback();
            }
            j59 j59Var = j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void setCallbacks$window_release(Map<Consumer<EmbeddedActivityWindowInfo>, CallbackWrapper> map) {
        map.getClass();
        this.callbacks = map;
    }

    public EmbeddedActivityWindowInfo translate$window_release(androidx.window.extensions.embedding.EmbeddedActivityWindowInfo embeddedActivityWindowInfo) {
        embeddedActivityWindowInfo.getClass();
        Rect rect = new Rect(embeddedActivityWindowInfo.getTaskBounds());
        Rect rect2 = new Rect(embeddedActivityWindowInfo.getActivityStackBounds());
        rect2.offset(-rect.left, -rect.top);
        return new EmbeddedActivityWindowInfo(embeddedActivityWindowInfo.isEmbedded(), rect, rect2);
    }
}
