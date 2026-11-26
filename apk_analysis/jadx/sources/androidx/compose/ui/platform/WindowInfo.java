package androidx.compose.ui.platform;

import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;

/* JADX INFO: loaded from: classes2.dex */
public interface WindowInfo {
    /* JADX INFO: renamed from: getContainerDpSize-MYxV2XQ */
    default long mo8207getContainerDpSizeMYxV2XQ() {
        return DpSize.Companion.m9149getUnspecifiedMYxV2XQ();
    }

    /* JADX INFO: renamed from: getContainerSize-YbymL2g */
    default long mo8208getContainerSizeYbymL2g() {
        return IntSize.m9208constructorimpl(-9223372034707292160L);
    }

    /* JADX INFO: renamed from: getKeyboardModifiers-k7X9c1A */
    default int mo8209getKeyboardModifiersk7X9c1A() {
        return WindowInfoImpl.Companion.getGlobalKeyboardModifiers$ui().getValue().m7638unboximpl();
    }

    boolean isWindowFocused();
}
