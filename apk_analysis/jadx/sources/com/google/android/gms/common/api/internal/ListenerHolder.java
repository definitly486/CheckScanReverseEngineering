package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.HandlerExecutor;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class ListenerHolder<L> {
    public final Executor a;
    public volatile ListenerKey b;

    public static final class ListenerKey<L> {
        public final Object a;
        public final String b;

        public ListenerKey(L l, String str) {
            this.a = l;
            this.b = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerKey)) {
                return false;
            }
            ListenerKey listenerKey = (ListenerKey) obj;
            return this.a == listenerKey.a && this.b.equals(listenerKey.b);
        }

        public int hashCode() {
            return this.b.hashCode() + (System.identityHashCode(this.a) * 31);
        }

        public String toIdString() {
            int iIdentityHashCode = System.identityHashCode(this.a);
            String str = this.b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(iIdentityHashCode).length());
            sb.append(str);
            sb.append("@");
            sb.append(iIdentityHashCode);
            return sb.toString();
        }
    }

    public interface Notifier<L> {
        void notifyListener(L l);

        void onNotifyListenerFailed();
    }

    public ListenerHolder(Object obj, Executor executor, String str) {
        this.a = (Executor) Preconditions.checkNotNull(executor, "Executor must not be null");
        this.b = new ListenerKey(Preconditions.checkNotNull(obj, "Listener must not be null"), Preconditions.checkNotEmpty(str));
    }

    public void clear() {
        this.b = null;
    }

    public ListenerKey<L> getListenerKey() {
        return this.b;
    }

    public boolean hasListener() {
        return this.b != null;
    }

    public void notifyListener(final Notifier<? super L> notifier) {
        Preconditions.checkNotNull(notifier, "Notifier must not be null");
        this.a.execute(new Runnable() { // from class: zja
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                ListenerHolder listenerHolder = this.b;
                ListenerHolder.Notifier notifier2 = notifier;
                ListenerHolder.ListenerKey listenerKey = listenerHolder.b;
                if (listenerKey == null) {
                    notifier2.onNotifyListenerFailed();
                    return;
                }
                try {
                    notifier2.notifyListener(listenerKey.a);
                } catch (RuntimeException e) {
                    notifier2.onNotifyListenerFailed();
                    throw e;
                }
            }
        });
    }

    public ListenerHolder(Object obj, Looper looper, String str) {
        this.a = new HandlerExecutor(looper);
        this.b = new ListenerKey(Preconditions.checkNotNull(obj, "Listener must not be null"), Preconditions.checkNotEmpty(str));
    }
}
