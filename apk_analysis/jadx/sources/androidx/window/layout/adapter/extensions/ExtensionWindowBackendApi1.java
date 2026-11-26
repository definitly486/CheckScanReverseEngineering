package androidx.window.layout.adapter.extensions;

import android.app.Activity;
import android.content.Context;
import androidx.core.util.Consumer;
import androidx.window.core.ConsumerAdapter;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.layout.WindowLayoutInfo;
import defpackage.j59;
import defpackage.kx2;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.x07;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes3.dex */
public class ExtensionWindowBackendApi1 extends ExtensionWindowBackendApi0 {
    private final WindowLayoutComponent component;
    private final ConsumerAdapter consumerAdapter;
    private final Map<MulticastConsumer, ConsumerAdapter.Subscription> consumerToToken;
    private final Map<Context, MulticastConsumer> contextToListeners;
    private final ReentrantLock globalLock;
    private final Map<Consumer<WindowLayoutInfo>, Context> listenerToContext;

    public ExtensionWindowBackendApi1(WindowLayoutComponent windowLayoutComponent, ConsumerAdapter consumerAdapter) {
        windowLayoutComponent.getClass();
        consumerAdapter.getClass();
        this.component = windowLayoutComponent;
        this.consumerAdapter = consumerAdapter;
        this.globalLock = new ReentrantLock();
        this.contextToListeners = new LinkedHashMap();
        this.listenerToContext = new LinkedHashMap();
        this.consumerToToken = new LinkedHashMap();
    }

    public final WindowLayoutComponent getComponent() {
        return this.component;
    }

    @Override // androidx.window.layout.adapter.WindowBackend
    public boolean hasRegisteredListeners() {
        return (this.contextToListeners.isEmpty() && this.listenerToContext.isEmpty() && this.consumerToToken.isEmpty()) ? false : true;
    }

    @Override // androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi0, androidx.window.layout.adapter.WindowBackend
    public void registerLayoutChangeCallback(Context context, Executor executor, Consumer<WindowLayoutInfo> consumer) {
        context.getClass();
        executor.getClass();
        consumer.getClass();
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            MulticastConsumer multicastConsumer = this.contextToListeners.get(context);
            if (multicastConsumer != null) {
                multicastConsumer.addListener(consumer);
                this.listenerToContext.put(consumer, context);
            } else {
                MulticastConsumer multicastConsumer2 = new MulticastConsumer(context);
                this.contextToListeners.put(context, multicastConsumer2);
                this.listenerToContext.put(consumer, context);
                multicastConsumer2.addListener(consumer);
                if (!(context instanceof Activity)) {
                    multicastConsumer2.accept(new androidx.window.extensions.layout.WindowLayoutInfo(kx2.b));
                    return;
                } else {
                    this.consumerToToken.put(multicastConsumer2, this.consumerAdapter.createSubscription((Object) this.component, (ne4) x07.a(androidx.window.extensions.layout.WindowLayoutInfo.class), "addWindowLayoutInfoListener", "removeWindowLayoutInfoListener", (Activity) context, (nl3) new ExtensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1(multicastConsumer2)));
                }
            }
            j59 j59Var = j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi0, androidx.window.layout.adapter.WindowBackend
    public void unregisterLayoutChangeCallback(Consumer<WindowLayoutInfo> consumer) {
        consumer.getClass();
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            Context context = this.listenerToContext.get(consumer);
            if (context == null) {
                return;
            }
            MulticastConsumer multicastConsumer = this.contextToListeners.get(context);
            if (multicastConsumer == null) {
                return;
            }
            multicastConsumer.removeListener(consumer);
            this.listenerToContext.remove(consumer);
            if (multicastConsumer.isEmpty()) {
                this.contextToListeners.remove(context);
                ConsumerAdapter.Subscription subscriptionRemove = this.consumerToToken.remove(multicastConsumer);
                if (subscriptionRemove != null) {
                    subscriptionRemove.dispose();
                }
            }
            j59 j59Var = j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
