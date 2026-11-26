package androidx.datastore.core;

import android.os.FileObserver;
import androidx.datastore.core.MulticastFileObserver;
import defpackage.cu0;
import defpackage.e91;
import defpackage.gx2;
import defpackage.hd3;
import defpackage.hp2;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class MulticastFileObserver extends FileObserver {
    public static final Companion Companion = new Companion(null);
    private static final Object LOCK = new Object();
    private static final Map<String, MulticastFileObserver> fileObservers = new LinkedHashMap();
    private final CopyOnWriteArrayList<nl3<String, j59>> delegates;
    private final String path;

    private MulticastFileObserver(String str) {
        super(str, 128);
        this.path = str;
        this.delegates = new CopyOnWriteArrayList<>();
    }

    public final String getPath() {
        return this.path;
    }

    @Override // android.os.FileObserver
    public void onEvent(int i, String str) {
        Iterator<T> it = this.delegates.iterator();
        while (it.hasNext()) {
            ((nl3) it.next()).invoke(str);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ void getFileObservers$datastore_core_release$annotations() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final hp2 observe(File file, final nl3<? super String, j59> nl3Var) {
            final String path = file.getCanonicalFile().getPath();
            synchronized (MulticastFileObserver.LOCK) {
                try {
                    Map<String, MulticastFileObserver> fileObservers$datastore_core_release = MulticastFileObserver.Companion.getFileObservers$datastore_core_release();
                    path.getClass();
                    MulticastFileObserver multicastFileObserver = fileObservers$datastore_core_release.get(path);
                    if (multicastFileObserver == null) {
                        multicastFileObserver = new MulticastFileObserver(path, null);
                        fileObservers$datastore_core_release.put(path, multicastFileObserver);
                    }
                    MulticastFileObserver multicastFileObserver2 = multicastFileObserver;
                    multicastFileObserver2.delegates.add(nl3Var);
                    if (multicastFileObserver2.delegates.size() == 1) {
                        multicastFileObserver2.startWatching();
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return new hp2() { // from class: dg5
                @Override // defpackage.hp2
                public final void dispose() {
                    MulticastFileObserver.Companion.observe$lambda$4(path, nl3Var);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void observe$lambda$4(String str, nl3 nl3Var) {
            nl3Var.getClass();
            synchronized (MulticastFileObserver.LOCK) {
                try {
                    Companion companion = MulticastFileObserver.Companion;
                    MulticastFileObserver multicastFileObserver = companion.getFileObservers$datastore_core_release().get(str);
                    if (multicastFileObserver != null) {
                        multicastFileObserver.delegates.remove(nl3Var);
                        if (multicastFileObserver.delegates.isEmpty()) {
                            companion.getFileObservers$datastore_core_release().remove(str);
                            multicastFileObserver.stopWatching();
                        }
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final Map<String, MulticastFileObserver> getFileObservers$datastore_core_release() {
            return MulticastFileObserver.fileObservers;
        }

        public final void removeAllObservers$datastore_core_release() {
            synchronized (MulticastFileObserver.LOCK) {
                try {
                    Iterator<T> it = MulticastFileObserver.Companion.getFileObservers$datastore_core_release().values().iterator();
                    while (it.hasNext()) {
                        ((MulticastFileObserver) it.next()).stopWatching();
                    }
                    MulticastFileObserver.Companion.getFileObservers$datastore_core_release().clear();
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        private Companion() {
        }

        public final hd3<j59> observe(File file) {
            file.getClass();
            return new e91(new MulticastFileObserver$Companion$observe$1(file, null), gx2.b, -2, cu0.SUSPEND);
        }
    }

    public /* synthetic */ MulticastFileObserver(String str, jh2 jh2Var) {
        this(str);
    }
}
