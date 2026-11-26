package androidx.paging;

import defpackage.fg;
import defpackage.jh2;
import defpackage.me0;
import defpackage.na8;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ViewportHint {
    private final int originalPageOffsetFirst;
    private final int originalPageOffsetLast;
    private final int presentedItemsAfter;
    private final int presentedItemsBefore;

    public static final class Access extends ViewportHint {
        private final int indexInPage;
        private final int pageOffset;

        public Access(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i3, i4, i5, i6, null);
            this.pageOffset = i;
            this.indexInPage = i2;
        }

        @Override // androidx.paging.ViewportHint
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Access)) {
                return false;
            }
            Access access = (Access) obj;
            return this.pageOffset == access.pageOffset && this.indexInPage == access.indexInPage && getPresentedItemsBefore() == access.getPresentedItemsBefore() && getPresentedItemsAfter() == access.getPresentedItemsAfter() && getOriginalPageOffsetFirst() == access.getOriginalPageOffsetFirst() && getOriginalPageOffsetLast() == access.getOriginalPageOffsetLast();
        }

        public final int getIndexInPage() {
            return this.indexInPage;
        }

        public final int getPageOffset() {
            return this.pageOffset;
        }

        @Override // androidx.paging.ViewportHint
        public int hashCode() {
            return Integer.hashCode(this.indexInPage) + Integer.hashCode(this.pageOffset) + super.hashCode();
        }

        public String toString() {
            return na8.j("ViewportHint.Access(\n            |    pageOffset=" + this.pageOffset + ",\n            |    indexInPage=" + this.indexInPage + ",\n            |    presentedItemsBefore=" + getPresentedItemsBefore() + ",\n            |    presentedItemsAfter=" + getPresentedItemsAfter() + ",\n            |    originalPageOffsetFirst=" + getOriginalPageOffsetFirst() + ",\n            |    originalPageOffsetLast=" + getOriginalPageOffsetLast() + ",\n            |)");
        }
    }

    public static final class Initial extends ViewportHint {
        public Initial(int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4, null);
        }

        public String toString() {
            return na8.j("ViewportHint.Initial(\n            |    presentedItemsBefore=" + getPresentedItemsBefore() + ",\n            |    presentedItemsAfter=" + getPresentedItemsAfter() + ",\n            |    originalPageOffsetFirst=" + getOriginalPageOffsetFirst() + ",\n            |    originalPageOffsetLast=" + getOriginalPageOffsetLast() + ",\n            |)");
        }
    }

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.REFRESH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.PREPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadType.APPEND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private ViewportHint(int i, int i2, int i3, int i4) {
        this.presentedItemsBefore = i;
        this.presentedItemsAfter = i2;
        this.originalPageOffsetFirst = i3;
        this.originalPageOffsetLast = i4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ViewportHint)) {
            return false;
        }
        ViewportHint viewportHint = (ViewportHint) obj;
        return this.presentedItemsBefore == viewportHint.presentedItemsBefore && this.presentedItemsAfter == viewportHint.presentedItemsAfter && this.originalPageOffsetFirst == viewportHint.originalPageOffsetFirst && this.originalPageOffsetLast == viewportHint.originalPageOffsetLast;
    }

    public final int getOriginalPageOffsetFirst() {
        return this.originalPageOffsetFirst;
    }

    public final int getOriginalPageOffsetLast() {
        return this.originalPageOffsetLast;
    }

    public final int getPresentedItemsAfter() {
        return this.presentedItemsAfter;
    }

    public final int getPresentedItemsBefore() {
        return this.presentedItemsBefore;
    }

    public int hashCode() {
        return Integer.hashCode(this.originalPageOffsetLast) + Integer.hashCode(this.originalPageOffsetFirst) + Integer.hashCode(this.presentedItemsAfter) + Integer.hashCode(this.presentedItemsBefore);
    }

    public final int presentedItemsBeyondAnchor$paging_common(LoadType loadType) {
        loadType.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i == 1) {
            fg.c("Cannot get presentedItems for loadType: REFRESH");
            return 0;
        }
        if (i == 2) {
            return this.presentedItemsBefore;
        }
        if (i == 3) {
            return this.presentedItemsAfter;
        }
        me0.e();
        return 0;
    }

    public /* synthetic */ ViewportHint(int i, int i2, int i3, int i4, jh2 jh2Var) {
        this(i, i2, i3, i4);
    }
}
