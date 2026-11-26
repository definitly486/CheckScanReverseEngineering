package androidx.compose.ui.platform;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.WeakReference;
import androidx.compose.ui.text.input.NullableInputConnectionWrapper;
import defpackage.aa4;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class InputMethodSession$createInputConnection$1$1 extends gh4 implements nl3<NullableInputConnectionWrapper, j59> {
    final /* synthetic */ InputMethodSession this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InputMethodSession$createInputConnection$1$1(InputMethodSession inputMethodSession) {
        super(1);
        this.this$0 = inputMethodSession;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(NullableInputConnectionWrapper nullableInputConnectionWrapper) {
        nullableInputConnectionWrapper.disposeDelegate();
        MutableVector mutableVector = this.this$0.connections;
        Object[] objArr = mutableVector.content;
        int size = mutableVector.getSize();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (aa4.e((WeakReference) objArr[i], nullableInputConnectionWrapper)) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            this.this$0.connections.removeAt(i);
        }
        if (this.this$0.connections.getSize() == 0) {
            this.this$0.onAllConnectionsClosed.invoke();
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(NullableInputConnectionWrapper nullableInputConnectionWrapper) {
        invoke2(nullableInputConnectionWrapper);
        return j59.a;
    }
}
