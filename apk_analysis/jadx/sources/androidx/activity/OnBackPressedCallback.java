package androidx.activity;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventHandler;
import androidx.navigationevent.NavigationEventInfo;
import defpackage.mi2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class OnBackPressedCallback {
    private boolean isEnabled;
    private final List<OnBackPressedEventHandler> eventHandlers = new ArrayList();
    private final CopyOnWriteArrayList<AutoCloseable> closeables = new CopyOnWriteArrayList<>();

    public static final class OnBackPressedEventHandler extends NavigationEventHandler<NavigationEventInfo> {
        private boolean isLifecycleActive;
        private final OnBackPressedCallback onBackPressedCallback;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnBackPressedEventHandler(OnBackPressedCallback onBackPressedCallback, NavigationEventInfo navigationEventInfo) {
            super(navigationEventInfo, onBackPressedCallback.isEnabled());
            onBackPressedCallback.getClass();
            navigationEventInfo.getClass();
            this.onBackPressedCallback = onBackPressedCallback;
            this.isLifecycleActive = true;
        }

        public final boolean isLifecycleActive() {
            return this.isLifecycleActive;
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public void onBackCancelled() {
            this.onBackPressedCallback.handleOnBackCancelled();
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public void onBackCompleted() {
            this.onBackPressedCallback.handleOnBackPressed();
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public void onBackProgressed(NavigationEvent navigationEvent) {
            navigationEvent.getClass();
            this.onBackPressedCallback.handleOnBackProgressed(new BackEventCompat(navigationEvent));
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public void onBackStarted(NavigationEvent navigationEvent) {
            navigationEvent.getClass();
            this.onBackPressedCallback.handleOnBackStarted(new BackEventCompat(navigationEvent));
        }

        public final void setLifecycleActive(boolean z) {
            this.isLifecycleActive = z;
            setBackEnabled(z && this.onBackPressedCallback.isEnabled());
        }
    }

    public OnBackPressedCallback(boolean z) {
        this.isEnabled = z;
    }

    public final void addCloseable$activity(AutoCloseable autoCloseable) {
        autoCloseable.getClass();
        this.closeables.add(autoCloseable);
    }

    public final OnBackPressedEventHandler createNavigationEventHandler$activity(NavigationEventInfo navigationEventInfo) {
        navigationEventInfo.getClass();
        OnBackPressedEventHandler onBackPressedEventHandler = new OnBackPressedEventHandler(this, navigationEventInfo);
        this.eventHandlers.add(onBackPressedEventHandler);
        return onBackPressedEventHandler;
    }

    public void handleOnBackCancelled() {
    }

    public abstract void handleOnBackPressed();

    public void handleOnBackProgressed(BackEventCompat backEventCompat) {
        backEventCompat.getClass();
    }

    public void handleOnBackStarted(BackEventCompat backEventCompat) {
        backEventCompat.getClass();
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final void remove() {
        boolean zIsTerminated;
        Iterator<AutoCloseable> it = this.closeables.iterator();
        it.getClass();
        while (it.hasNext()) {
            AutoCloseable next = it.next();
            if (next instanceof AutoCloseable) {
                next.close();
            } else if (next instanceof ExecutorService) {
                ExecutorService executorService = (ExecutorService) next;
                if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                    executorService.shutdown();
                    boolean z = false;
                    while (!zIsTerminated) {
                        try {
                            zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                        } catch (InterruptedException unused) {
                            if (!z) {
                                executorService.shutdownNow();
                                z = true;
                            }
                        }
                    }
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            } else if (next instanceof TypedArray) {
                ((TypedArray) next).recycle();
            } else if (next instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) next).release();
            } else {
                if (!(next instanceof MediaDrm)) {
                    mi2.b();
                    return;
                }
                ((MediaDrm) next).release();
            }
        }
        this.closeables.clear();
        Iterator<OnBackPressedEventHandler> it2 = this.eventHandlers.iterator();
        while (it2.hasNext()) {
            it2.next().remove();
        }
        this.eventHandlers.clear();
    }

    public final void removeCloseable$activity(AutoCloseable autoCloseable) {
        autoCloseable.getClass();
        this.closeables.remove(autoCloseable);
    }

    public final void setEnabled(boolean z) {
        this.isEnabled = z;
        for (OnBackPressedEventHandler onBackPressedEventHandler : this.eventHandlers) {
            onBackPressedEventHandler.setBackEnabled(onBackPressedEventHandler.isLifecycleActive() && z);
        }
    }
}
