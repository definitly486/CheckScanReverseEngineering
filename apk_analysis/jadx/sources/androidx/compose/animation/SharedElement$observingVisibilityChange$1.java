package androidx.compose.animation;

import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SharedElement$observingVisibilityChange$1 extends gh4 implements ll3<j59> {
    final /* synthetic */ SharedElement this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedElement$observingVisibilityChange$1(SharedElement sharedElement) {
        super(0);
        this.this$0 = sharedElement;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        List<SharedElementEntry> allEntries = this.this$0.getAllEntries();
        int size = allEntries.size();
        for (int i = 0; i < size; i++) {
            SharedElementEntry sharedElementEntry = allEntries.get(i);
            if (sharedElementEntry.getTarget() && sharedElementEntry.isEnabled()) {
                return;
            }
        }
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}
