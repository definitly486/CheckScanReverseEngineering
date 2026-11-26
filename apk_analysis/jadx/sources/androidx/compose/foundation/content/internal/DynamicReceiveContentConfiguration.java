package androidx.compose.foundation.content.internal;

import androidx.compose.foundation.content.ReceiveContentListener;
import androidx.compose.foundation.content.ReceiveContentNode;
import androidx.compose.foundation.content.TransferableContent;

/* JADX INFO: loaded from: classes.dex */
public final class DynamicReceiveContentConfiguration extends ReceiveContentConfiguration {
    public static final int $stable = 8;
    private final ReceiveContentListener receiveContentListener = new ReceiveContentListener() { // from class: androidx.compose.foundation.content.internal.DynamicReceiveContentConfiguration$receiveContentListener$1
        private int nodeEnterCount;

        @Override // androidx.compose.foundation.content.ReceiveContentListener
        public void onDragEnd() {
            this.this$0.getReceiveContentNode().getReceiveContentListener().onDragEnd();
            this.nodeEnterCount = 0;
        }

        @Override // androidx.compose.foundation.content.ReceiveContentListener
        public void onDragEnter() {
            int i = this.nodeEnterCount + 1;
            this.nodeEnterCount = i;
            if (i == 1) {
                this.this$0.getReceiveContentNode().getReceiveContentListener().onDragEnter();
            }
            ReceiveContentListener parentReceiveContentListener = this.this$0.getParentReceiveContentListener();
            if (parentReceiveContentListener != null) {
                parentReceiveContentListener.onDragEnter();
            }
        }

        @Override // androidx.compose.foundation.content.ReceiveContentListener
        public void onDragExit() {
            int i = this.nodeEnterCount;
            int i2 = i - 1;
            if (i2 < 0) {
                i2 = 0;
            }
            this.nodeEnterCount = i2;
            if (i2 == 0 && i > 0) {
                this.this$0.getReceiveContentNode().getReceiveContentListener().onDragExit();
            }
            ReceiveContentListener parentReceiveContentListener = this.this$0.getParentReceiveContentListener();
            if (parentReceiveContentListener != null) {
                parentReceiveContentListener.onDragExit();
            }
        }

        @Override // androidx.compose.foundation.content.ReceiveContentListener
        public void onDragStart() {
            this.nodeEnterCount = 0;
            this.this$0.getReceiveContentNode().getReceiveContentListener().onDragStart();
        }

        @Override // androidx.compose.foundation.content.ReceiveContentListener
        public TransferableContent onReceive(TransferableContent transferableContent) {
            TransferableContent transferableContentOnReceive = this.this$0.getReceiveContentNode().getReceiveContentListener().onReceive(transferableContent);
            if (transferableContentOnReceive == null) {
                return null;
            }
            ReceiveContentListener parentReceiveContentListener = this.this$0.getParentReceiveContentListener();
            return parentReceiveContentListener == null ? transferableContentOnReceive : parentReceiveContentListener.onReceive(transferableContentOnReceive);
        }
    };
    private final ReceiveContentNode receiveContentNode;

    public DynamicReceiveContentConfiguration(ReceiveContentNode receiveContentNode) {
        this.receiveContentNode = receiveContentNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ReceiveContentListener getParentReceiveContentListener() {
        ReceiveContentConfiguration receiveContentConfiguration = ReceiveContentConfigurationKt.getReceiveContentConfiguration(this.receiveContentNode);
        if (receiveContentConfiguration != null) {
            return receiveContentConfiguration.getReceiveContentListener();
        }
        return null;
    }

    @Override // androidx.compose.foundation.content.internal.ReceiveContentConfiguration
    public ReceiveContentListener getReceiveContentListener() {
        return this.receiveContentListener;
    }

    public final ReceiveContentNode getReceiveContentNode() {
        return this.receiveContentNode;
    }
}
