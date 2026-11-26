package androidx.paging;

import defpackage.aa4;
import defpackage.jh2;
import defpackage.na8;
import defpackage.qn1;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PagingDataEvent<T> {

    public static final class Append<T> extends PagingDataEvent<T> {
        private final List<T> inserted;
        private final int newPlaceholdersAfter;
        private final int oldPlaceholdersAfter;
        private final int startIndex;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Append(int i, List<? extends T> list, int i2, int i3) {
            super(null);
            list.getClass();
            this.startIndex = i;
            this.inserted = list;
            this.newPlaceholdersAfter = i2;
            this.oldPlaceholdersAfter = i3;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Append)) {
                return false;
            }
            Append append = (Append) obj;
            return this.startIndex == append.startIndex && aa4.e(this.inserted, append.inserted) && this.newPlaceholdersAfter == append.newPlaceholdersAfter && this.oldPlaceholdersAfter == append.oldPlaceholdersAfter;
        }

        public final List<T> getInserted() {
            return this.inserted;
        }

        public final int getNewPlaceholdersAfter() {
            return this.newPlaceholdersAfter;
        }

        public final int getOldPlaceholdersAfter() {
            return this.oldPlaceholdersAfter;
        }

        public final int getStartIndex() {
            return this.startIndex;
        }

        public int hashCode() {
            return Integer.hashCode(this.oldPlaceholdersAfter) + Integer.hashCode(this.newPlaceholdersAfter) + this.inserted.hashCode() + Integer.hashCode(this.startIndex);
        }

        public String toString() {
            return na8.j("PagingDataEvent.Append loaded " + this.inserted.size() + " items (\n                    |   startIndex: " + this.startIndex + "\n                    |   first item: " + qn1.V(this.inserted) + "\n                    |   last item: " + qn1.c0(this.inserted) + "\n                    |   newPlaceholdersBefore: " + this.newPlaceholdersAfter + "\n                    |   oldPlaceholdersBefore: " + this.oldPlaceholdersAfter + "\n                    |)\n                    |");
        }
    }

    public static final class DropAppend<T> extends PagingDataEvent<T> {
        private final int dropCount;
        private final int newPlaceholdersAfter;
        private final int oldPlaceholdersAfter;
        private final int startIndex;

        public DropAppend(int i, int i2, int i3, int i4) {
            super(null);
            this.startIndex = i;
            this.dropCount = i2;
            this.newPlaceholdersAfter = i3;
            this.oldPlaceholdersAfter = i4;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof DropAppend)) {
                return false;
            }
            DropAppend dropAppend = (DropAppend) obj;
            return this.startIndex == dropAppend.startIndex && this.dropCount == dropAppend.dropCount && this.newPlaceholdersAfter == dropAppend.newPlaceholdersAfter && this.oldPlaceholdersAfter == dropAppend.oldPlaceholdersAfter;
        }

        public final int getDropCount() {
            return this.dropCount;
        }

        public final int getNewPlaceholdersAfter() {
            return this.newPlaceholdersAfter;
        }

        public final int getOldPlaceholdersAfter() {
            return this.oldPlaceholdersAfter;
        }

        public final int getStartIndex() {
            return this.startIndex;
        }

        public int hashCode() {
            return Integer.hashCode(this.oldPlaceholdersAfter) + Integer.hashCode(this.newPlaceholdersAfter) + Integer.hashCode(this.dropCount) + Integer.hashCode(this.startIndex);
        }

        public String toString() {
            return na8.j("PagingDataEvent.DropAppend dropped " + this.dropCount + " items (\n                    |   startIndex: " + this.startIndex + "\n                    |   dropCount: " + this.dropCount + "\n                    |   newPlaceholdersBefore: " + this.newPlaceholdersAfter + "\n                    |   oldPlaceholdersBefore: " + this.oldPlaceholdersAfter + "\n                    |)\n                    |");
        }
    }

    public static final class DropPrepend<T> extends PagingDataEvent<T> {
        private final int dropCount;
        private final int newPlaceholdersBefore;
        private final int oldPlaceholdersBefore;

        public DropPrepend(int i, int i2, int i3) {
            super(null);
            this.dropCount = i;
            this.newPlaceholdersBefore = i2;
            this.oldPlaceholdersBefore = i3;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof DropPrepend)) {
                return false;
            }
            DropPrepend dropPrepend = (DropPrepend) obj;
            return this.dropCount == dropPrepend.dropCount && this.newPlaceholdersBefore == dropPrepend.newPlaceholdersBefore && this.oldPlaceholdersBefore == dropPrepend.oldPlaceholdersBefore;
        }

        public final int getDropCount() {
            return this.dropCount;
        }

        public final int getNewPlaceholdersBefore() {
            return this.newPlaceholdersBefore;
        }

        public final int getOldPlaceholdersBefore() {
            return this.oldPlaceholdersBefore;
        }

        public int hashCode() {
            return Integer.hashCode(this.oldPlaceholdersBefore) + Integer.hashCode(this.newPlaceholdersBefore) + Integer.hashCode(this.dropCount);
        }

        public String toString() {
            return na8.j("PagingDataEvent.DropPrepend dropped " + this.dropCount + " items (\n                    |   dropCount: " + this.dropCount + "\n                    |   newPlaceholdersBefore: " + this.newPlaceholdersBefore + "\n                    |   oldPlaceholdersBefore: " + this.oldPlaceholdersBefore + "\n                    |)\n                    |");
        }
    }

    public static final class Prepend<T> extends PagingDataEvent<T> {
        private final List<T> inserted;
        private final int newPlaceholdersBefore;
        private final int oldPlaceholdersBefore;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Prepend(List<? extends T> list, int i, int i2) {
            super(null);
            list.getClass();
            this.inserted = list;
            this.newPlaceholdersBefore = i;
            this.oldPlaceholdersBefore = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Prepend)) {
                return false;
            }
            Prepend prepend = (Prepend) obj;
            return aa4.e(this.inserted, prepend.inserted) && this.newPlaceholdersBefore == prepend.newPlaceholdersBefore && this.oldPlaceholdersBefore == prepend.oldPlaceholdersBefore;
        }

        public final List<T> getInserted() {
            return this.inserted;
        }

        public final int getNewPlaceholdersBefore() {
            return this.newPlaceholdersBefore;
        }

        public final int getOldPlaceholdersBefore() {
            return this.oldPlaceholdersBefore;
        }

        public int hashCode() {
            return Integer.hashCode(this.oldPlaceholdersBefore) + Integer.hashCode(this.newPlaceholdersBefore) + this.inserted.hashCode();
        }

        public String toString() {
            return na8.j("PagingDataEvent.Prepend loaded " + this.inserted.size() + " items (\n                    |   first item: " + qn1.V(this.inserted) + "\n                    |   last item: " + qn1.c0(this.inserted) + "\n                    |   newPlaceholdersBefore: " + this.newPlaceholdersBefore + "\n                    |   oldPlaceholdersBefore: " + this.oldPlaceholdersBefore + "\n                    |)\n                    |");
        }
    }

    public static final class Refresh<T> extends PagingDataEvent<T> {
        private final PlaceholderPaddedList<T> newList;
        private final PlaceholderPaddedList<T> previousList;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Refresh(PlaceholderPaddedList<T> placeholderPaddedList, PlaceholderPaddedList<T> placeholderPaddedList2) {
            super(null);
            placeholderPaddedList.getClass();
            placeholderPaddedList2.getClass();
            this.newList = placeholderPaddedList;
            this.previousList = placeholderPaddedList2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Refresh)) {
                return false;
            }
            Refresh refresh = (Refresh) obj;
            return this.newList.getPlaceholdersBefore() == refresh.newList.getPlaceholdersBefore() && this.newList.getPlaceholdersAfter() == refresh.newList.getPlaceholdersAfter() && this.newList.getSize() == refresh.newList.getSize() && this.newList.getDataCount() == refresh.newList.getDataCount() && this.previousList.getPlaceholdersBefore() == refresh.previousList.getPlaceholdersBefore() && this.previousList.getPlaceholdersAfter() == refresh.previousList.getPlaceholdersAfter() && this.previousList.getSize() == refresh.previousList.getSize() && this.previousList.getDataCount() == refresh.previousList.getDataCount();
        }

        public final PlaceholderPaddedList<T> getNewList() {
            return this.newList;
        }

        public final PlaceholderPaddedList<T> getPreviousList() {
            return this.previousList;
        }

        public int hashCode() {
            return this.previousList.hashCode() + this.newList.hashCode();
        }

        public String toString() {
            return na8.j("PagingDataEvent.Refresh loaded newList\n                    |   newList (\n                    |       placeholdersBefore: " + this.newList.getPlaceholdersBefore() + "\n                    |       placeholdersAfter: " + this.newList.getPlaceholdersAfter() + "\n                    |       size: " + this.newList.getSize() + "\n                    |       dataCount: " + this.newList.getDataCount() + "\n                    |   )\n                    |   previousList (\n                    |       placeholdersBefore: " + this.previousList.getPlaceholdersBefore() + "\n                    |       placeholdersAfter: " + this.previousList.getPlaceholdersAfter() + "\n                    |       size: " + this.previousList.getSize() + "\n                    |       dataCount: " + this.previousList.getDataCount() + "\n                    |   )\n                    |");
        }
    }

    public /* synthetic */ PagingDataEvent(jh2 jh2Var) {
        this();
    }

    private PagingDataEvent() {
    }
}
