package androidx.window.layout.adapter.extensions;

import android.content.Context;
import androidx.core.util.Consumer;
import androidx.window.extensions.layout.WindowLayoutInfo;
import androidx.window.reflection.Consumer2;
import defpackage.j59;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes3.dex */
public final class MulticastConsumerApi2 implements Consumer<WindowLayoutInfo>, Consumer2<WindowLayoutInfo> {
    private final Context context;
    private final ReentrantLock globalLock;
    private androidx.window.layout.WindowLayoutInfo lastKnownValue;
    private final Set<Consumer<androidx.window.layout.WindowLayoutInfo>> registeredListeners;

    public MulticastConsumerApi2(Context context) {
        context.getClass();
        this.context = context;
        this.globalLock = new ReentrantLock();
        this.registeredListeners = new LinkedHashSet();
    }

    @Override // androidx.core.util.Consumer
    public void accept(WindowLayoutInfo windowLayoutInfo) {
        windowLayoutInfo.getClass();
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            androidx.window.layout.WindowLayoutInfo windowLayoutInfoTranslate$window_release = ExtensionsWindowLayoutInfoAdapter.INSTANCE.translate$window_release(this.context, windowLayoutInfo);
            this.lastKnownValue = windowLayoutInfoTranslate$window_release;
            Iterator<T> it = this.registeredListeners.iterator();
            while (it.hasNext()) {
                ((Consumer) it.next()).accept(windowLayoutInfoTranslate$window_release);
            }
            j59 j59Var = j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void addListener(Consumer<androidx.window.layout.WindowLayoutInfo> consumer) {
        consumer.getClass();
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            androidx.window.layout.WindowLayoutInfo windowLayoutInfo = this.lastKnownValue;
            if (windowLayoutInfo != null) {
                consumer.accept(windowLayoutInfo);
            }
            this.registeredListeners.add(consumer);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean isEmpty() {
        return this.registeredListeners.isEmpty();
    }

    public final void removeListener(Consumer<androidx.window.layout.WindowLayoutInfo> consumer) {
        consumer.getClass();
        ReentrantLock reentrantLock = this.globalLock;
        reentrantLock.lock();
        try {
            this.registeredListeners.remove(consumer);
        } finally {
            reentrantLock.unlock();
        }
    }
}
