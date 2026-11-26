package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Actual_jvmAndAndroidKt;
import androidx.compose.ui.CombinedModifier;
import androidx.compose.ui.Modifier;
import defpackage.aa4;
import defpackage.gh4;
import defpackage.nl3;
import defpackage.pg;

/* JADX INFO: loaded from: classes2.dex */
public final class NodeChainKt {
    private static final int ActionReplace = 0;
    private static final int ActionReuse = 2;
    private static final int ActionUpdate = 1;

    /* JADX INFO: renamed from: androidx.compose.ui.node.NodeChainKt$fillVector$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<Modifier.Element, Boolean> {
        final /* synthetic */ MutableVector<Modifier.Element> $result;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MutableVector<Modifier.Element> mutableVector) {
            super(1);
            this.$result = mutableVector;
        }

        @Override // defpackage.nl3
        public final Boolean invoke(Modifier.Element element) {
            this.$result.add(element);
            return Boolean.TRUE;
        }
    }

    public static final int actionForModifiers(Modifier.Element element, Modifier.Element element2) {
        if (aa4.e(element, element2)) {
            return 2;
        }
        return Actual_jvmAndAndroidKt.areObjectsOfSameType(element, element2) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final MutableVector<Modifier.Element> fillVector(Modifier modifier, MutableVector<Modifier.Element> mutableVector, MutableVector<Modifier> mutableVector2) {
        mutableVector2.add(modifier);
        AnonymousClass1 anonymousClass1 = null;
        while (mutableVector2.getSize() != 0) {
            Modifier modifier2 = (Modifier) pg.f(mutableVector2, 1);
            if (modifier2 instanceof CombinedModifier) {
                CombinedModifier combinedModifier = (CombinedModifier) modifier2;
                mutableVector2.add(combinedModifier.getInner$ui());
                mutableVector2.add(combinedModifier.getOuter$ui());
            } else if (modifier2 instanceof Modifier.Element) {
                mutableVector.add(modifier2);
            } else {
                if (anonymousClass1 == null) {
                    anonymousClass1 = new AnonymousClass1(mutableVector);
                }
                modifier2.all(anonymousClass1);
                anonymousClass1 = anonymousClass1;
            }
        }
        return mutableVector;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T extends Modifier.Node> void updateUnsafe(ModifierNodeElement<T> modifierNodeElement, Modifier.Node node) {
        node.getClass();
        modifierNodeElement.update(node);
    }
}
