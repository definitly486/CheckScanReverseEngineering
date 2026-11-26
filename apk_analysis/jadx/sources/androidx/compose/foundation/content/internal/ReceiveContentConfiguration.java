package androidx.compose.foundation.content.internal;

import androidx.compose.foundation.content.ReceiveContentListener;
import androidx.compose.foundation.content.TransferableContent;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public abstract class ReceiveContentConfiguration {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);

    public abstract ReceiveContentListener getReceiveContentListener();

    public final boolean onCommitContent(TransferableContent transferableContent) {
        return !aa4.e(getReceiveContentListener().onReceive(transferableContent), transferableContent);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ReceiveContentConfiguration invoke(ReceiveContentListener receiveContentListener) {
            return new ReceiveContentConfigurationImpl(receiveContentListener);
        }

        private Companion() {
        }
    }
}
