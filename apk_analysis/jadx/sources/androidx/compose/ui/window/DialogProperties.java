package androidx.compose.ui.window;

import android.os.IBinder;
import androidx.media3.extractor.ts.PsExtractor;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.tg;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class DialogProperties {
    public static final int $stable = 0;
    private final boolean decorFitsSystemWindows;
    private final boolean dismissOnBackPress;
    private final boolean dismissOnClickOutside;
    private final SecureFlagPolicy securePolicy;
    private final boolean usePlatformDefaultWidth;
    private final String windowTitle;
    private final IBinder windowToken;
    private final int windowType;

    public /* synthetic */ DialogProperties(boolean z, boolean z2, SecureFlagPolicy secureFlagPolicy, boolean z3, boolean z4, String str, int i, IBinder iBinder, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? true : z, (i2 & 2) != 0 ? true : z2, (i2 & 4) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i2 & 8) != 0 ? true : z3, (i2 & 16) != 0 ? true : z4, (i2 & 32) != 0 ? "" : str, (i2 & 64) != 0 ? 2 : i, (i2 & 128) != 0 ? null : iBinder);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DialogProperties)) {
            return false;
        }
        DialogProperties dialogProperties = (DialogProperties) obj;
        return this.dismissOnBackPress == dialogProperties.dismissOnBackPress && this.dismissOnClickOutside == dialogProperties.dismissOnClickOutside && this.securePolicy == dialogProperties.securePolicy && this.usePlatformDefaultWidth == dialogProperties.usePlatformDefaultWidth && this.decorFitsSystemWindows == dialogProperties.decorFitsSystemWindows && this.windowType == dialogProperties.windowType && aa4.e(this.windowToken, dialogProperties.windowToken);
    }

    public final boolean getDecorFitsSystemWindows() {
        return this.decorFitsSystemWindows;
    }

    public final boolean getDismissOnBackPress() {
        return this.dismissOnBackPress;
    }

    public final boolean getDismissOnClickOutside() {
        return this.dismissOnClickOutside;
    }

    public final SecureFlagPolicy getSecurePolicy() {
        return this.securePolicy;
    }

    public final boolean getUsePlatformDefaultWidth() {
        return this.usePlatformDefaultWidth;
    }

    public final String getWindowTitle() {
        return this.windowTitle;
    }

    public final IBinder getWindowToken() {
        return this.windowToken;
    }

    public final int getWindowType() {
        return this.windowType;
    }

    public int hashCode() {
        int iC = (tg.c(tg.c((this.securePolicy.hashCode() + tg.c(Boolean.hashCode(this.dismissOnBackPress) * 31, 31, this.dismissOnClickOutside)) * 31, 31, this.usePlatformDefaultWidth), 31, this.decorFitsSystemWindows) + this.windowType) * 31;
        IBinder iBinder = this.windowToken;
        return iC + (iBinder != null ? iBinder.hashCode() : 0);
    }

    public DialogProperties(boolean z, boolean z2, SecureFlagPolicy secureFlagPolicy, boolean z3, boolean z4, String str, int i, IBinder iBinder) {
        this.dismissOnBackPress = z;
        this.dismissOnClickOutside = z2;
        this.securePolicy = secureFlagPolicy;
        this.usePlatformDefaultWidth = z3;
        this.decorFitsSystemWindows = z4;
        this.windowTitle = str;
        this.windowType = i;
        this.windowToken = iBinder;
    }

    public DialogProperties() {
        this(false, false, null, false, false, null, 0, null, 255, null);
    }

    public /* synthetic */ DialogProperties(boolean z, boolean z2, boolean z3, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? true : z2, (i & 4) != 0 ? true : z3);
    }

    public DialogProperties(boolean z, boolean z2, boolean z3) {
        this(z, z2, SecureFlagPolicy.Inherit, z3, true, null, 0, null, 224, null);
    }

    public /* synthetic */ DialogProperties(boolean z, boolean z2, SecureFlagPolicy secureFlagPolicy, boolean z3, boolean z4, String str, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? true : z2, (i & 4) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i & 8) != 0 ? true : z3, (i & 16) != 0 ? true : z4, (i & 32) != 0 ? "" : str);
    }

    @ul2
    public /* synthetic */ DialogProperties(boolean z, boolean z2, SecureFlagPolicy secureFlagPolicy, boolean z3, boolean z4, String str) {
        this(z, z2, secureFlagPolicy, z3, z4, str, 2, (IBinder) null);
    }

    public /* synthetic */ DialogProperties(boolean z, boolean z2, SecureFlagPolicy secureFlagPolicy, boolean z3, boolean z4, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? true : z2, (i & 4) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i & 8) != 0 ? true : z3, (i & 16) != 0 ? true : z4);
    }

    @ul2
    public /* synthetic */ DialogProperties(boolean z, boolean z2, SecureFlagPolicy secureFlagPolicy, boolean z3, boolean z4) {
        this(z, z2, SecureFlagPolicy.Inherit, z3, true, "", 0, null, PsExtractor.AUDIO_STREAM, null);
    }

    public /* synthetic */ DialogProperties(boolean z, boolean z2, SecureFlagPolicy secureFlagPolicy, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? true : z2, (i & 4) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy);
    }

    @ul2
    public /* synthetic */ DialogProperties(boolean z, boolean z2, SecureFlagPolicy secureFlagPolicy) {
        this(z, z2, secureFlagPolicy, true, true, null, 0, null, 224, null);
    }
}
