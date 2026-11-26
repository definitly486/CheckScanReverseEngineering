package androidx.compose.runtime;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectList;
import androidx.compose.runtime.collection.MultiValueMap;
import defpackage.aa4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class NestedContentMap {
    private final MutableScatterMap<Object, Object> contentMap = MultiValueMap.m5372constructorimpl$default(null, 1, null);
    private final MutableScatterMap<Object, Object> containerMap = MultiValueMap.m5372constructorimpl$default(null, 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean usedContainer$lambda$0$0(MovableContentStateReference movableContentStateReference, NestedMovableContent nestedMovableContent) {
        return aa4.e(nestedMovableContent.getContainer(), movableContentStateReference);
    }

    public final void add(MovableContent<Object> movableContent, NestedMovableContent nestedMovableContent) {
        MultiValueMap.m5368addimpl(this.contentMap, movableContent, nestedMovableContent);
        MultiValueMap.m5368addimpl(this.containerMap, nestedMovableContent.getContainer(), movableContent);
    }

    public final void clear() {
        MultiValueMap.m5370clearimpl(this.contentMap);
        MultiValueMap.m5370clearimpl(this.containerMap);
    }

    public final boolean contains(MovableContent<Object> movableContent) {
        return MultiValueMap.m5373containsimpl(this.contentMap, movableContent);
    }

    public final NestedMovableContent removeLast(MovableContent<Object> movableContent) {
        NestedMovableContent nestedMovableContent = (NestedMovableContent) MultiValueMap.m5383removeLastimpl(this.contentMap, movableContent);
        if (MultiValueMap.m5380isEmptyimpl(this.contentMap)) {
            MultiValueMap.m5370clearimpl(this.containerMap);
        }
        return nestedMovableContent;
    }

    public final void usedContainer(final MovableContentStateReference movableContentStateReference) {
        Object obj = this.containerMap.get(movableContentStateReference);
        if (obj != null) {
            if (!(obj instanceof MutableObjectList)) {
                MultiValueMap.m5384removeValueIfimpl(this.contentMap, (MovableContent) obj, new nl3() { // from class: androidx.compose.runtime.h
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return Boolean.valueOf(NestedContentMap.usedContainer$lambda$0$0(movableContentStateReference, (NestedMovableContent) obj2));
                    }
                });
                return;
            }
            ObjectList objectList = (ObjectList) obj;
            Object[] objArr = objectList.content;
            int i = objectList._size;
            for (int i2 = 0; i2 < i; i2++) {
                Object obj2 = objArr[i2];
                obj2.getClass();
                MultiValueMap.m5384removeValueIfimpl(this.contentMap, (MovableContent) obj2, new nl3() { // from class: androidx.compose.runtime.h
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj3) {
                        return Boolean.valueOf(NestedContentMap.usedContainer$lambda$0$0(movableContentStateReference, (NestedMovableContent) obj3));
                    }
                });
            }
        }
    }
}
