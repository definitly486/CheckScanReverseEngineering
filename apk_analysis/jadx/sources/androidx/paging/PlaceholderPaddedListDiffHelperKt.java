package androidx.paging;

import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListUpdateCallback;
import defpackage.kx6;
import defpackage.u74;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class PlaceholderPaddedListDiffHelperKt {
    public static final <T> PlaceholderPaddedDiffResult computeDiff(final PlaceholderPaddedList<T> placeholderPaddedList, final PlaceholderPaddedList<T> placeholderPaddedList2, final DiffUtil.ItemCallback<T> itemCallback) {
        placeholderPaddedList.getClass();
        placeholderPaddedList2.getClass();
        itemCallback.getClass();
        final int dataCount = placeholderPaddedList.getDataCount();
        final int dataCount2 = placeholderPaddedList2.getDataCount();
        DiffUtil.Callback callback = new DiffUtil.Callback() { // from class: androidx.paging.PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areContentsTheSame(int i, int i2) {
                Object item = placeholderPaddedList.getItem(i);
                Object item2 = placeholderPaddedList2.getItem(i2);
                if (item == item2) {
                    return true;
                }
                return itemCallback.areContentsTheSame(item, item2);
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areItemsTheSame(int i, int i2) {
                Object item = placeholderPaddedList.getItem(i);
                Object item2 = placeholderPaddedList2.getItem(i2);
                if (item == item2) {
                    return true;
                }
                return itemCallback.areItemsTheSame(item, item2);
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public Object getChangePayload(int i, int i2) {
                Object item = placeholderPaddedList.getItem(i);
                Object item2 = placeholderPaddedList2.getItem(i2);
                return item == item2 ? Boolean.TRUE : itemCallback.getChangePayload(item, item2);
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getNewListSize() {
                return dataCount2;
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getOldListSize() {
                return dataCount;
            }
        };
        boolean z = true;
        DiffUtil.DiffResult diffResultCalculateDiff = DiffUtil.calculateDiff(callback, true);
        diffResultCalculateDiff.getClass();
        Iterable iterableN = kx6.n(0, placeholderPaddedList.getDataCount());
        if ((iterableN instanceof Collection) && ((Collection) iterableN).isEmpty()) {
            z = false;
        } else {
            Iterator<T> it = iterableN.iterator();
            while (it.hasNext()) {
                if (diffResultCalculateDiff.convertOldPositionToNew(((u74) it).nextInt()) != -1) {
                }
            }
            z = false;
        }
        return new PlaceholderPaddedDiffResult(diffResultCalculateDiff, z);
    }

    public static final <T> void dispatchDiff(PlaceholderPaddedList<T> placeholderPaddedList, ListUpdateCallback listUpdateCallback, PlaceholderPaddedList<T> placeholderPaddedList2, PlaceholderPaddedDiffResult placeholderPaddedDiffResult) {
        placeholderPaddedList.getClass();
        listUpdateCallback.getClass();
        placeholderPaddedList2.getClass();
        placeholderPaddedDiffResult.getClass();
        if (placeholderPaddedDiffResult.getHasOverlap()) {
            OverlappingListsDiffDispatcher.INSTANCE.dispatchDiff(placeholderPaddedList, placeholderPaddedList2, listUpdateCallback, placeholderPaddedDiffResult);
        } else {
            DistinctListsDiffDispatcher.INSTANCE.dispatchDiff(listUpdateCallback, placeholderPaddedList, placeholderPaddedList2);
        }
    }

    public static final int transformAnchorIndex(PlaceholderPaddedList<?> placeholderPaddedList, PlaceholderPaddedDiffResult placeholderPaddedDiffResult, PlaceholderPaddedList<?> placeholderPaddedList2, int i) {
        int iConvertOldPositionToNew;
        placeholderPaddedList.getClass();
        placeholderPaddedDiffResult.getClass();
        placeholderPaddedList2.getClass();
        if (!placeholderPaddedDiffResult.getHasOverlap()) {
            return kx6.g(i, kx6.n(0, placeholderPaddedList2.getSize()));
        }
        int placeholdersBefore = i - placeholderPaddedList.getPlaceholdersBefore();
        int dataCount = placeholderPaddedList.getDataCount();
        if (placeholdersBefore >= 0 && placeholdersBefore < dataCount) {
            for (int i2 = 0; i2 < 30; i2++) {
                int i3 = ((i2 / 2) * (i2 % 2 == 1 ? -1 : 1)) + placeholdersBefore;
                if (i3 >= 0 && i3 < placeholderPaddedList.getDataCount() && (iConvertOldPositionToNew = placeholderPaddedDiffResult.getDiff().convertOldPositionToNew(i3)) != -1) {
                    return placeholderPaddedList2.getPlaceholdersBefore() + iConvertOldPositionToNew;
                }
            }
        }
        return kx6.g(i, kx6.n(0, placeholderPaddedList2.getSize()));
    }
}
