package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public interface MutableLongState extends LongState, MutableState<Long> {

    public static final class DefaultImpls {
        @Deprecated
        public static Long getValue(MutableLongState mutableLongState) {
            return Long.valueOf(MutableLongState.access$getValue$jd(mutableLongState));
        }

        @Deprecated
        public static void setValue(MutableLongState mutableLongState, long j) {
            MutableLongState.super.setValue(j);
        }
    }

    static /* synthetic */ long access$getValue$jd(MutableLongState mutableLongState) {
        return super.getValue().longValue();
    }

    @Override // androidx.compose.runtime.LongState
    long getLongValue();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.LongState, androidx.compose.runtime.State
    default Long getValue() {
        return Long.valueOf(getLongValue());
    }

    void setLongValue(long j);

    @Override // androidx.compose.runtime.MutableState
    /* bridge */ /* synthetic */ default void setValue(Long l) {
        setValue(l.longValue());
    }

    default void setValue(long j) {
        setLongValue(j);
    }
}
