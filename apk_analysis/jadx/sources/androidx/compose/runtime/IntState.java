package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public interface IntState extends State<Integer> {

    public static final class DefaultImpls {
        @Deprecated
        public static Integer getValue(IntState intState) {
            return Integer.valueOf(IntState.access$getValue$jd(intState));
        }
    }

    static /* synthetic */ int access$getValue$jd(IntState intState) {
        return super.getValue().intValue();
    }

    int getIntValue();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.State
    default Integer getValue() {
        return Integer.valueOf(getIntValue());
    }
}
