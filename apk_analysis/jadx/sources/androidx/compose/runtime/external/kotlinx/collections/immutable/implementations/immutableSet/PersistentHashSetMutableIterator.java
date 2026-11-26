package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import defpackage.ln;
import defpackage.ud;
import defpackage.v39;
import defpackage.yr;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class PersistentHashSetMutableIterator<E> extends PersistentHashSetIterator<E> implements Iterator<E> {
    public static final int $stable = 8;
    private final PersistentHashSetBuilder<E> builder;
    private int expectedModCount;
    private E lastIteratedElement;
    private boolean nextWasInvoked;

    public PersistentHashSetMutableIterator(PersistentHashSetBuilder<E> persistentHashSetBuilder) {
        super(persistentHashSetBuilder.getNode$runtime());
        this.builder = persistentHashSetBuilder;
        this.expectedModCount = persistentHashSetBuilder.getModCount$runtime();
    }

    private final void checkForComodification() {
        if (this.builder.getModCount$runtime() == this.expectedModCount) {
            return;
        }
        ln.e();
    }

    private final void checkNextWasInvoked() {
        if (this.nextWasInvoked) {
            return;
        }
        ud.g();
    }

    private final boolean isCollision(TrieNode<?> trieNode) {
        return trieNode.getBitmap() == 0;
    }

    private final void resetPath(int i, TrieNode<?> trieNode, E e, int i2) {
        if (isCollision(trieNode)) {
            int iQ = yr.Q(e, trieNode.getBuffer());
            CommonFunctionsKt.m5571assert(iQ != -1);
            getPath().get(i2).reset(trieNode.getBuffer(), iQ);
            setPathLastIndex(i2);
            return;
        }
        int iIndexOfCellAt$runtime = trieNode.indexOfCellAt$runtime(1 << TrieNodeKt.indexSegment(i, i2 * 5));
        getPath().get(i2).reset(trieNode.getBuffer(), iIndexOfCellAt$runtime);
        Object obj = trieNode.getBuffer()[iIndexOfCellAt$runtime];
        if (obj instanceof TrieNode) {
            resetPath(i, (TrieNode) obj, e, i2 + 1);
        } else {
            setPathLastIndex(i2);
        }
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSetIterator, java.util.Iterator
    public E next() {
        checkForComodification();
        E e = (E) super.next();
        this.lastIteratedElement = e;
        this.nextWasInvoked = true;
        return e;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSetIterator, java.util.Iterator
    public void remove() {
        checkNextWasInvoked();
        if (hasNext()) {
            E eCurrentElement = currentElement();
            v39.a(this.builder).remove(this.lastIteratedElement);
            resetPath(eCurrentElement != null ? eCurrentElement.hashCode() : 0, this.builder.getNode$runtime(), eCurrentElement, 0);
        } else {
            v39.a(this.builder).remove(this.lastIteratedElement);
        }
        this.lastIteratedElement = null;
        this.nextWasInvoked = false;
        this.expectedModCount = this.builder.getModCount$runtime();
    }
}
