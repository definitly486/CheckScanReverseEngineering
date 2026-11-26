package androidx.lifecycle.viewmodel;

import defpackage.aa4;
import defpackage.g2;
import defpackage.jh2;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CreationExtras {
    public static final Companion Companion = new Companion(null);
    private final Map<Key<?>, Object> extras = new LinkedHashMap();

    public static final class Empty extends CreationExtras {
        public static final Empty INSTANCE = new Empty();

        private Empty() {
        }

        @Override // androidx.lifecycle.viewmodel.CreationExtras
        public <T> T get(Key<T> key) {
            key.getClass();
            return null;
        }
    }

    public interface Key<T> {
    }

    public boolean equals(Object obj) {
        return (obj instanceof CreationExtras) && aa4.e(this.extras, ((CreationExtras) obj).extras);
    }

    public abstract <T> T get(Key<T> key);

    public final Map<Key<?>, Object> getExtras$lifecycle_viewmodel() {
        return this.extras;
    }

    public int hashCode() {
        return this.extras.hashCode();
    }

    public String toString() {
        return g2.c(new StringBuilder("CreationExtras(extras="), this.extras, ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final <T> Key<T> Key() {
            aa4.i();
            throw null;
        }

        private Companion() {
        }
    }
}
