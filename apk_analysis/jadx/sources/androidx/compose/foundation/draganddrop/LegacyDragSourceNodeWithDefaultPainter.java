package androidx.compose.foundation.draganddrop;

import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.DelegatingNode;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
final class LegacyDragSourceNodeWithDefaultPainter extends DelegatingNode {
    private bm3<? super DragAndDropSourceScope, ? super e02<? super j59>, ? extends Object> dragAndDropSourceHandler;

    /* JADX INFO: renamed from: androidx.compose.foundation.draganddrop.LegacyDragSourceNodeWithDefaultPainter$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.draganddrop.LegacyDragSourceNodeWithDefaultPainter$2", f = "LegacyDragAndDropSourceWithDefaultPainter.android.kt", l = {96}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<DragAndDropSourceScope, e02<? super j59>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = LegacyDragSourceNodeWithDefaultPainter.this.new AnonymousClass2(e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(DragAndDropSourceScope dragAndDropSourceScope, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(dragAndDropSourceScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                DragAndDropSourceScope dragAndDropSourceScope = (DragAndDropSourceScope) this.L$0;
                bm3<DragAndDropSourceScope, e02<? super j59>, Object> dragAndDropSourceHandler = LegacyDragSourceNodeWithDefaultPainter.this.getDragAndDropSourceHandler();
                this.label = 1;
                if (dragAndDropSourceHandler.invoke(dragAndDropSourceScope, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    public LegacyDragSourceNodeWithDefaultPainter(bm3<? super DragAndDropSourceScope, ? super e02<? super j59>, ? extends Object> bm3Var) {
        this.dragAndDropSourceHandler = bm3Var;
        final CacheDrawScopeDragShadowCallback cacheDrawScopeDragShadowCallback = new CacheDrawScopeDragShadowCallback();
        delegate(DrawModifierKt.CacheDrawModifierNode(new LegacyDragSourceNodeWithDefaultPainter$cacheDrawScopeDragShadowCallback$1$1(cacheDrawScopeDragShadowCallback)));
        delegate(new LegacyDragAndDropSourceNode(new nl3() { // from class: androidx.compose.foundation.draganddrop.i
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return LegacyDragSourceNodeWithDefaultPainter._init_$lambda$1(cacheDrawScopeDragShadowCallback, (DrawScope) obj);
            }
        }, new AnonymousClass2(null)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$1(CacheDrawScopeDragShadowCallback cacheDrawScopeDragShadowCallback, DrawScope drawScope) {
        cacheDrawScopeDragShadowCallback.drawDragShadow(drawScope);
        return j59.a;
    }

    public final bm3<DragAndDropSourceScope, e02<? super j59>, Object> getDragAndDropSourceHandler() {
        return this.dragAndDropSourceHandler;
    }

    public final void setDragAndDropSourceHandler(bm3<? super DragAndDropSourceScope, ? super e02<? super j59>, ? extends Object> bm3Var) {
        this.dragAndDropSourceHandler = bm3Var;
    }
}
