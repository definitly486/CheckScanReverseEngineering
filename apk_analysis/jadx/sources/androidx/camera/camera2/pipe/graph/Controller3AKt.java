package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.Lock3ABehavior;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public final class Controller3AKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> boolean isNullOrIn(T t, Collection<? extends T> collection) {
        if (t != null) {
            return collection.contains(t);
        }
        return true;
    }

    /* JADX INFO: renamed from: shouldUnlockAe-t6FjEyI, reason: not valid java name */
    public static final boolean m885shouldUnlockAet6FjEyI(Lock3ABehavior lock3ABehavior) {
        int iM498getAFTER_NEW_SCANhRqSH3k = Lock3ABehavior.Companion.m498getAFTER_NEW_SCANhRqSH3k();
        if (lock3ABehavior == null) {
            return false;
        }
        return Lock3ABehavior.m493equalsimpl0(lock3ABehavior.m496unboximpl(), iM498getAFTER_NEW_SCANhRqSH3k);
    }

    /* JADX INFO: renamed from: shouldUnlockAf-t6FjEyI, reason: not valid java name */
    public static final boolean m886shouldUnlockAft6FjEyI(Lock3ABehavior lock3ABehavior) {
        int iM498getAFTER_NEW_SCANhRqSH3k = Lock3ABehavior.Companion.m498getAFTER_NEW_SCANhRqSH3k();
        if (lock3ABehavior == null) {
            return false;
        }
        return Lock3ABehavior.m493equalsimpl0(lock3ABehavior.m496unboximpl(), iM498getAFTER_NEW_SCANhRqSH3k);
    }

    /* JADX INFO: renamed from: shouldUnlockAwb-t6FjEyI, reason: not valid java name */
    public static final boolean m887shouldUnlockAwbt6FjEyI(Lock3ABehavior lock3ABehavior) {
        int iM498getAFTER_NEW_SCANhRqSH3k = Lock3ABehavior.Companion.m498getAFTER_NEW_SCANhRqSH3k();
        if (lock3ABehavior == null) {
            return false;
        }
        return Lock3ABehavior.m493equalsimpl0(lock3ABehavior.m496unboximpl(), iM498getAFTER_NEW_SCANhRqSH3k);
    }

    /* JADX INFO: renamed from: shouldWaitForAeToConverge-t6FjEyI, reason: not valid java name */
    public static final boolean m888shouldWaitForAeToConverget6FjEyI(Lock3ABehavior lock3ABehavior) {
        if (lock3ABehavior != null) {
            return !Lock3ABehavior.m493equalsimpl0(lock3ABehavior.m496unboximpl(), Lock3ABehavior.Companion.m499getIMMEDIATEhRqSH3k());
        }
        return false;
    }

    /* JADX INFO: renamed from: shouldWaitForAfToConverge-t6FjEyI, reason: not valid java name */
    public static final boolean m889shouldWaitForAfToConverget6FjEyI(Lock3ABehavior lock3ABehavior) {
        if (lock3ABehavior != null) {
            return !Lock3ABehavior.m493equalsimpl0(lock3ABehavior.m496unboximpl(), Lock3ABehavior.Companion.m499getIMMEDIATEhRqSH3k());
        }
        return false;
    }

    /* JADX INFO: renamed from: shouldWaitForAwbToConverge-t6FjEyI, reason: not valid java name */
    public static final boolean m890shouldWaitForAwbToConverget6FjEyI(Lock3ABehavior lock3ABehavior) {
        if (lock3ABehavior != null) {
            return !Lock3ABehavior.m493equalsimpl0(lock3ABehavior.m496unboximpl(), Lock3ABehavior.Companion.m499getIMMEDIATEhRqSH3k());
        }
        return false;
    }
}
