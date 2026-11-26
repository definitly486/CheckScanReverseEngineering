package androidx.compose.runtime.external.kotlinx.collections.immutable.adapters;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class ImmutableSetAdapter<E> extends ImmutableCollectionAdapter<E> implements ImmutableSet<E> {
    public static final int $stable = 8;

    public ImmutableSetAdapter(Set<? extends E> set) {
        super(set);
    }
}
