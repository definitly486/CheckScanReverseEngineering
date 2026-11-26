package androidx.compose.runtime.tooling;

/* JADX INFO: loaded from: classes2.dex */
public interface CompositionGroup extends CompositionData {

    public static final class DefaultImpls {
        @Deprecated
        public static CompositionGroup find(CompositionGroup compositionGroup, Object obj) {
            return CompositionGroup.super.find(obj);
        }

        @Deprecated
        public static int getGroupSize(CompositionGroup compositionGroup) {
            return CompositionGroup.super.getGroupSize();
        }

        @Deprecated
        public static Object getIdentity(CompositionGroup compositionGroup) {
            return CompositionGroup.super.getIdentity();
        }

        @Deprecated
        public static int getSlotsSize(CompositionGroup compositionGroup) {
            return CompositionGroup.super.getSlotsSize();
        }
    }

    Iterable<Object> getData();

    default int getGroupSize() {
        return 0;
    }

    default Object getIdentity() {
        return null;
    }

    Object getKey();

    Object getNode();

    default int getSlotsSize() {
        return 0;
    }

    String getSourceInfo();
}
