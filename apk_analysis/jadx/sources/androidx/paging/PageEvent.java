package androidx.paging;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.c9;
import defpackage.e02;
import defpackage.e2;
import defpackage.ej0;
import defpackage.fg;
import defpackage.jh;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.l2;
import defpackage.n7;
import defpackage.na8;
import defpackage.nl3;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PageEvent<T> {

    public static final class Drop<T> extends PageEvent<T> {
        private final LoadType loadType;
        private final int maxPageOffset;
        private final int minPageOffset;
        private final int placeholdersRemaining;

        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[LoadType.values().length];
                try {
                    iArr[LoadType.APPEND.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[LoadType.PREPEND.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Drop(LoadType loadType, int i, int i2, int i3) {
            super(null);
            loadType.getClass();
            this.loadType = loadType;
            this.minPageOffset = i;
            this.maxPageOffset = i2;
            this.placeholdersRemaining = i3;
            if (loadType == LoadType.REFRESH) {
                fg.c("Drop load type must be PREPEND or APPEND");
                throw null;
            }
            if (getPageCount() > 0) {
                if (i3 >= 0) {
                    return;
                }
                c9.f(jh.b(i3, "Invalid placeholdersRemaining "));
                throw null;
            }
            throw new IllegalArgumentException(("Drop count must be > 0, but was " + getPageCount()).toString());
        }

        public static /* synthetic */ Drop copy$default(Drop drop, LoadType loadType, int i, int i2, int i3, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                loadType = drop.loadType;
            }
            if ((i4 & 2) != 0) {
                i = drop.minPageOffset;
            }
            if ((i4 & 4) != 0) {
                i2 = drop.maxPageOffset;
            }
            if ((i4 & 8) != 0) {
                i3 = drop.placeholdersRemaining;
            }
            return drop.copy(loadType, i, i2, i3);
        }

        public final LoadType component1() {
            return this.loadType;
        }

        public final int component2() {
            return this.minPageOffset;
        }

        public final int component3() {
            return this.maxPageOffset;
        }

        public final int component4() {
            return this.placeholdersRemaining;
        }

        public final Drop<T> copy(LoadType loadType, int i, int i2, int i3) {
            loadType.getClass();
            return new Drop<>(loadType, i, i2, i3);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Drop)) {
                return false;
            }
            Drop drop = (Drop) obj;
            return this.loadType == drop.loadType && this.minPageOffset == drop.minPageOffset && this.maxPageOffset == drop.maxPageOffset && this.placeholdersRemaining == drop.placeholdersRemaining;
        }

        public final LoadType getLoadType() {
            return this.loadType;
        }

        public final int getMaxPageOffset() {
            return this.maxPageOffset;
        }

        public final int getMinPageOffset() {
            return this.minPageOffset;
        }

        public final int getPageCount() {
            return (this.maxPageOffset - this.minPageOffset) + 1;
        }

        public final int getPlaceholdersRemaining() {
            return this.placeholdersRemaining;
        }

        public int hashCode() {
            return Integer.hashCode(this.placeholdersRemaining) + ej0.b(this.maxPageOffset, ej0.b(this.minPageOffset, this.loadType.hashCode() * 31, 31), 31);
        }

        public String toString() {
            String str;
            int i = WhenMappings.$EnumSwitchMapping$0[this.loadType.ordinal()];
            if (i == 1) {
                str = TtmlNode.END;
            } else {
                if (i != 2) {
                    fg.c("Drop load type must be PREPEND or APPEND");
                    return null;
                }
                str = "front";
            }
            StringBuilder sbD = n7.d("PageEvent.Drop from the ", str, " (\n                    |   minPageOffset: ");
            sbD.append(this.minPageOffset);
            sbD.append("\n                    |   maxPageOffset: ");
            sbD.append(this.maxPageOffset);
            sbD.append("\n                    |   placeholdersRemaining: ");
            sbD.append(this.placeholdersRemaining);
            sbD.append("\n                    |)");
            return na8.j(sbD.toString());
        }
    }

    public /* synthetic */ PageEvent(jh2 jh2Var) {
        this();
    }

    public static /* synthetic */ <T> Object filter$suspendImpl(PageEvent<T> pageEvent, bm3<? super T, ? super e02<? super Boolean>, ? extends Object> bm3Var, e02<? super PageEvent<T>> e02Var) {
        return pageEvent;
    }

    public static /* synthetic */ <T, R> Object flatMap$suspendImpl(PageEvent<T> pageEvent, bm3<? super T, ? super e02<? super Iterable<? extends R>>, ? extends Object> bm3Var, e02<? super PageEvent<R>> e02Var) {
        pageEvent.getClass();
        return pageEvent;
    }

    public static /* synthetic */ <T, R> Object map$suspendImpl(PageEvent<T> pageEvent, bm3<? super T, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super PageEvent<R>> e02Var) {
        pageEvent.getClass();
        return pageEvent;
    }

    public Object filter(bm3<? super T, ? super e02<? super Boolean>, ? extends Object> bm3Var, e02<? super PageEvent<T>> e02Var) {
        return filter$suspendImpl(this, bm3Var, e02Var);
    }

    public <R> Object flatMap(bm3<? super T, ? super e02<? super Iterable<? extends R>>, ? extends Object> bm3Var, e02<? super PageEvent<R>> e02Var) {
        return flatMap$suspendImpl(this, bm3Var, e02Var);
    }

    public <R> Object map(bm3<? super T, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super PageEvent<R>> e02Var) {
        return map$suspendImpl(this, bm3Var, e02Var);
    }

    public static final class Insert<T> extends PageEvent<T> {
        public static final Companion Companion = new Companion(null);
        private final LoadType loadType;
        private final LoadStates mediatorLoadStates;
        private final List<TransformablePage<T>> pages;
        private final int placeholdersAfter;
        private final int placeholdersBefore;
        private final LoadStates sourceLoadStates;

        private Insert(LoadType loadType, List<TransformablePage<T>> list, int i, int i2, LoadStates loadStates, LoadStates loadStates2) {
            super(null);
            this.loadType = loadType;
            this.pages = list;
            this.placeholdersBefore = i;
            this.placeholdersAfter = i2;
            this.sourceLoadStates = loadStates;
            this.mediatorLoadStates = loadStates2;
            if (loadType != LoadType.APPEND && i < 0) {
                c9.f(jh.b(i, "Prepend insert defining placeholdersBefore must be > 0, but was "));
                throw null;
            }
            if (loadType != LoadType.PREPEND && i2 < 0) {
                c9.f(jh.b(i2, "Append insert defining placeholdersAfter must be > 0, but was "));
                throw null;
            }
            if (loadType == LoadType.REFRESH && list.isEmpty()) {
                fg.c("Cannot create a REFRESH Insert event with no TransformablePages as this could permanently stall pagination. Note that this check does not prevent empty LoadResults and is instead usually an indication of an internal error in Paging itself.");
                throw null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Insert copy$default(Insert insert, LoadType loadType, List list, int i, int i2, LoadStates loadStates, LoadStates loadStates2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                loadType = insert.loadType;
            }
            if ((i3 & 2) != 0) {
                list = insert.pages;
            }
            if ((i3 & 4) != 0) {
                i = insert.placeholdersBefore;
            }
            if ((i3 & 8) != 0) {
                i2 = insert.placeholdersAfter;
            }
            if ((i3 & 16) != 0) {
                loadStates = insert.sourceLoadStates;
            }
            if ((i3 & 32) != 0) {
                loadStates2 = insert.mediatorLoadStates;
            }
            LoadStates loadStates3 = loadStates;
            LoadStates loadStates4 = loadStates2;
            return insert.copy(loadType, list, i, i2, loadStates3, loadStates4);
        }

        private final <R> Insert<R> mapPages(nl3<? super TransformablePage<T>, TransformablePage<R>> nl3Var) {
            LoadType loadType = getLoadType();
            List<TransformablePage<T>> pages = getPages();
            ArrayList arrayList = new ArrayList(kn1.q(pages, 10));
            Iterator<T> it = pages.iterator();
            while (it.hasNext()) {
                arrayList.add(nl3Var.invoke(it.next()));
            }
            return new Insert<>(loadType, arrayList, getPlaceholdersBefore(), getPlaceholdersAfter(), getSourceLoadStates(), getMediatorLoadStates(), null);
        }

        public final LoadType component1() {
            return this.loadType;
        }

        public final List<TransformablePage<T>> component2() {
            return this.pages;
        }

        public final int component3() {
            return this.placeholdersBefore;
        }

        public final int component4() {
            return this.placeholdersAfter;
        }

        public final LoadStates component5() {
            return this.sourceLoadStates;
        }

        public final LoadStates component6() {
            return this.mediatorLoadStates;
        }

        public final Insert<T> copy(LoadType loadType, List<TransformablePage<T>> list, int i, int i2, LoadStates loadStates, LoadStates loadStates2) {
            loadType.getClass();
            list.getClass();
            loadStates.getClass();
            return new Insert<>(loadType, list, i, i2, loadStates, loadStates2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Insert)) {
                return false;
            }
            Insert insert = (Insert) obj;
            return this.loadType == insert.loadType && aa4.e(this.pages, insert.pages) && this.placeholdersBefore == insert.placeholdersBefore && this.placeholdersAfter == insert.placeholdersAfter && aa4.e(this.sourceLoadStates, insert.sourceLoadStates) && aa4.e(this.mediatorLoadStates, insert.mediatorLoadStates);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0095  */
        /* JADX WARN: Code duplicated, block: B:20:0x00bb  */
        /* JADX WARN: Code duplicated, block: B:22:0x00c3  */
        /* JADX WARN: Code duplicated, block: B:24:0x00e6 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:25:0x00e7  */
        /* JADX WARN: Code duplicated, block: B:33:0x0119  */
        /* JADX WARN: Code duplicated, block: B:35:0x011d  */
        /* JADX WARN: Code duplicated, block: B:7:0x0017  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0095 -> B:18:0x00b5). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00e7 -> B:26:0x00f1). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // androidx.paging.PageEvent
        public java.lang.Object filter(defpackage.bm3<? super T, ? super defpackage.e02<? super java.lang.Boolean>, ? extends java.lang.Object> r18, defpackage.e02<? super androidx.paging.PageEvent<T>> r19) {
            /*
                Method dump skipped, instruction units count: 328
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageEvent.Insert.filter(bm3, e02):java.lang.Object");
        }

        /* JADX WARN: Code duplicated, block: B:17:0x009c  */
        /* JADX WARN: Code duplicated, block: B:20:0x00c2  */
        /* JADX WARN: Code duplicated, block: B:22:0x00ca  */
        /* JADX WARN: Code duplicated, block: B:24:0x00f2 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:25:0x00f3  */
        /* JADX WARN: Code duplicated, block: B:33:0x0136  */
        /* JADX WARN: Code duplicated, block: B:35:0x013a  */
        /* JADX WARN: Code duplicated, block: B:7:0x0017  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x009c -> B:18:0x00bc). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00f3 -> B:26:0x0103). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // androidx.paging.PageEvent
        public <R> java.lang.Object flatMap(defpackage.bm3<? super T, ? super defpackage.e02<? super java.lang.Iterable<? extends R>>, ? extends java.lang.Object> r18, defpackage.e02<? super androidx.paging.PageEvent<R>> r19) {
            /*
                Method dump skipped, instruction units count: 363
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageEvent.Insert.flatMap(bm3, e02):java.lang.Object");
        }

        public final LoadType getLoadType() {
            return this.loadType;
        }

        public final LoadStates getMediatorLoadStates() {
            return this.mediatorLoadStates;
        }

        public final List<TransformablePage<T>> getPages() {
            return this.pages;
        }

        public final int getPlaceholdersAfter() {
            return this.placeholdersAfter;
        }

        public final int getPlaceholdersBefore() {
            return this.placeholdersBefore;
        }

        public final LoadStates getSourceLoadStates() {
            return this.sourceLoadStates;
        }

        public int hashCode() {
            int iHashCode = (this.sourceLoadStates.hashCode() + ej0.b(this.placeholdersAfter, ej0.b(this.placeholdersBefore, e2.b(this.pages, this.loadType.hashCode() * 31, 31), 31), 31)) * 31;
            LoadStates loadStates = this.mediatorLoadStates;
            return iHashCode + (loadStates == null ? 0 : loadStates.hashCode());
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0096  */
        /* JADX WARN: Code duplicated, block: B:20:0x00bf  */
        /* JADX WARN: Code duplicated, block: B:22:0x00e1 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:23:0x00e2  */
        /* JADX WARN: Code duplicated, block: B:25:0x00ec  */
        /* JADX WARN: Code duplicated, block: B:7:0x0017  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0096 -> B:18:0x00b9). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00e2 -> B:24:0x00e6). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // androidx.paging.PageEvent
        public <R> java.lang.Object map(defpackage.bm3<? super T, ? super defpackage.e02<? super R>, ? extends java.lang.Object> r18, defpackage.e02<? super androidx.paging.PageEvent<R>> r19) {
            /*
                Method dump skipped, instruction units count: 285
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageEvent.Insert.map(bm3, e02):java.lang.Object");
        }

        public String toString() {
            List<T> data;
            List<T> data2;
            Iterator<T> it = this.pages.iterator();
            int size = 0;
            while (it.hasNext()) {
                size += ((TransformablePage) it.next()).getData().size();
            }
            int i = this.placeholdersBefore;
            String strValueOf = i != -1 ? String.valueOf(i) : "none";
            int i2 = this.placeholdersAfter;
            String strValueOf2 = i2 != -1 ? String.valueOf(i2) : "none";
            LoadStates loadStates = this.mediatorLoadStates;
            StringBuilder sb = new StringBuilder("PageEvent.Insert for ");
            sb.append(this.loadType);
            sb.append(", with ");
            sb.append(size);
            sb.append(" items (\n                    |   first item: ");
            TransformablePage transformablePage = (TransformablePage) qn1.V(this.pages);
            Object objC0 = null;
            sb.append((transformablePage == null || (data2 = transformablePage.getData()) == null) ? null : qn1.V(data2));
            sb.append("\n                    |   last item: ");
            TransformablePage transformablePage2 = (TransformablePage) qn1.c0(this.pages);
            if (transformablePage2 != null && (data = transformablePage2.getData()) != null) {
                objC0 = qn1.c0(data);
            }
            sb.append(objC0);
            sb.append("\n                    |   placeholdersBefore: ");
            sb.append(strValueOf);
            sb.append("\n                    |   placeholdersAfter: ");
            sb.append(strValueOf2);
            sb.append("\n                    |   sourceLoadStates: ");
            sb.append(this.sourceLoadStates);
            sb.append("\n                    ");
            String string = sb.toString();
            if (loadStates != null) {
                string = string + "|   mediatorLoadStates: " + loadStates + '\n';
            }
            return na8.j(string.concat("|)"));
        }

        public final <R> Insert<R> transformPages$paging_common(nl3<? super List<TransformablePage<T>>, ? extends List<TransformablePage<R>>> nl3Var) {
            nl3Var.getClass();
            return new Insert<>(getLoadType(), nl3Var.invoke(getPages()), getPlaceholdersBefore(), getPlaceholdersAfter(), getSourceLoadStates(), getMediatorLoadStates(), null);
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public static /* synthetic */ Insert Append$default(Companion companion, List list, int i, LoadStates loadStates, LoadStates loadStates2, int i2, Object obj) {
                if ((i2 & 8) != 0) {
                    loadStates2 = null;
                }
                return companion.Append(list, i, loadStates, loadStates2);
            }

            public static /* synthetic */ Insert Prepend$default(Companion companion, List list, int i, LoadStates loadStates, LoadStates loadStates2, int i2, Object obj) {
                if ((i2 & 8) != 0) {
                    loadStates2 = null;
                }
                return companion.Prepend(list, i, loadStates, loadStates2);
            }

            public static /* synthetic */ Insert Refresh$default(Companion companion, List list, int i, int i2, LoadStates loadStates, LoadStates loadStates2, int i3, Object obj) {
                if ((i3 & 16) != 0) {
                    loadStates2 = null;
                }
                return companion.Refresh(list, i, i2, loadStates, loadStates2);
            }

            public final <T> Insert<T> Append(List<TransformablePage<T>> list, int i, LoadStates loadStates, LoadStates loadStates2) {
                list.getClass();
                loadStates.getClass();
                return new Insert<>(LoadType.APPEND, list, -1, i, loadStates, loadStates2, null);
            }

            public final <T> Insert<T> Prepend(List<TransformablePage<T>> list, int i, LoadStates loadStates, LoadStates loadStates2) {
                list.getClass();
                loadStates.getClass();
                return new Insert<>(LoadType.PREPEND, list, i, -1, loadStates, loadStates2, null);
            }

            public final <T> Insert<T> Refresh(List<TransformablePage<T>> list, int i, int i2, LoadStates loadStates, LoadStates loadStates2) {
                list.getClass();
                loadStates.getClass();
                return new Insert<>(LoadType.REFRESH, list, i, i2, loadStates, loadStates2, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Insert(LoadType loadType, List list, int i, int i2, LoadStates loadStates, LoadStates loadStates2, jh2 jh2Var) {
            this(loadType, list, i, i2, loadStates, loadStates2);
        }

        public /* synthetic */ Insert(LoadType loadType, List list, int i, int i2, LoadStates loadStates, LoadStates loadStates2, int i3, jh2 jh2Var) {
            this(loadType, list, i, i2, loadStates, (i3 & 32) != 0 ? null : loadStates2);
        }
    }

    private PageEvent() {
    }

    public static final class LoadStateUpdate<T> extends PageEvent<T> {
        private final LoadStates mediator;
        private final LoadStates source;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LoadStateUpdate(LoadStates loadStates, LoadStates loadStates2) {
            super(null);
            loadStates.getClass();
            this.source = loadStates;
            this.mediator = loadStates2;
        }

        public static /* synthetic */ LoadStateUpdate copy$default(LoadStateUpdate loadStateUpdate, LoadStates loadStates, LoadStates loadStates2, int i, Object obj) {
            if ((i & 1) != 0) {
                loadStates = loadStateUpdate.source;
            }
            if ((i & 2) != 0) {
                loadStates2 = loadStateUpdate.mediator;
            }
            return loadStateUpdate.copy(loadStates, loadStates2);
        }

        public final LoadStates component1() {
            return this.source;
        }

        public final LoadStates component2() {
            return this.mediator;
        }

        public final LoadStateUpdate<T> copy(LoadStates loadStates, LoadStates loadStates2) {
            loadStates.getClass();
            return new LoadStateUpdate<>(loadStates, loadStates2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LoadStateUpdate)) {
                return false;
            }
            LoadStateUpdate loadStateUpdate = (LoadStateUpdate) obj;
            return aa4.e(this.source, loadStateUpdate.source) && aa4.e(this.mediator, loadStateUpdate.mediator);
        }

        public final LoadStates getMediator() {
            return this.mediator;
        }

        public final LoadStates getSource() {
            return this.source;
        }

        public int hashCode() {
            int iHashCode = this.source.hashCode() * 31;
            LoadStates loadStates = this.mediator;
            return iHashCode + (loadStates == null ? 0 : loadStates.hashCode());
        }

        public String toString() {
            LoadStates loadStates = this.mediator;
            String str = "PageEvent.LoadStateUpdate (\n                    |   sourceLoadStates: " + this.source + "\n                    ";
            if (loadStates != null) {
                str = str + "|   mediatorLoadStates: " + loadStates + '\n';
            }
            return na8.j(str.concat("|)"));
        }

        public /* synthetic */ LoadStateUpdate(LoadStates loadStates, LoadStates loadStates2, int i, jh2 jh2Var) {
            this(loadStates, (i & 2) != 0 ? null : loadStates2);
        }
    }

    public static final class StaticList<T> extends PageEvent<T> {
        private final List<T> data;
        private final LoadStates mediatorLoadStates;
        private final int placeholdersAfter;
        private final int placeholdersBefore;
        private final LoadStates sourceLoadStates;

        public /* synthetic */ StaticList(List list, LoadStates loadStates, LoadStates loadStates2, int i, int i2, int i3, jh2 jh2Var) {
            this(list, (i3 & 2) != 0 ? null : loadStates, (i3 & 4) != 0 ? null : loadStates2, (i3 & 8) != 0 ? 0 : i, (i3 & 16) != 0 ? 0 : i2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ StaticList copy$default(StaticList staticList, List list, LoadStates loadStates, LoadStates loadStates2, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                list = staticList.data;
            }
            if ((i3 & 2) != 0) {
                loadStates = staticList.sourceLoadStates;
            }
            if ((i3 & 4) != 0) {
                loadStates2 = staticList.mediatorLoadStates;
            }
            if ((i3 & 8) != 0) {
                i = staticList.placeholdersBefore;
            }
            if ((i3 & 16) != 0) {
                i2 = staticList.placeholdersAfter;
            }
            int i4 = i2;
            LoadStates loadStates3 = loadStates2;
            return staticList.copy(list, loadStates, loadStates3, i, i4);
        }

        public final List<T> component1() {
            return this.data;
        }

        public final LoadStates component2() {
            return this.sourceLoadStates;
        }

        public final LoadStates component3() {
            return this.mediatorLoadStates;
        }

        public final int component4() {
            return this.placeholdersBefore;
        }

        public final int component5() {
            return this.placeholdersAfter;
        }

        public final StaticList<T> copy(List<? extends T> list, LoadStates loadStates, LoadStates loadStates2, int i, int i2) {
            list.getClass();
            return new StaticList<>(list, loadStates, loadStates2, i, i2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StaticList)) {
                return false;
            }
            StaticList staticList = (StaticList) obj;
            return aa4.e(this.data, staticList.data) && aa4.e(this.sourceLoadStates, staticList.sourceLoadStates) && aa4.e(this.mediatorLoadStates, staticList.mediatorLoadStates) && this.placeholdersBefore == staticList.placeholdersBefore && this.placeholdersAfter == staticList.placeholdersAfter;
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0054  */
        /* JADX WARN: Code duplicated, block: B:19:0x0068 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:20:0x0069  */
        /* JADX WARN: Code duplicated, block: B:23:0x0075  */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:21:0x006d). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // androidx.paging.PageEvent
        public java.lang.Object filter(defpackage.bm3<? super T, ? super defpackage.e02<? super java.lang.Boolean>, ? extends java.lang.Object> r14, defpackage.e02<? super androidx.paging.PageEvent<T>> r15) {
            /*
                r13 = this;
                boolean r0 = r15 instanceof androidx.paging.PageEvent$StaticList$filter$1
                if (r0 == 0) goto L13
                r0 = r15
                androidx.paging.PageEvent$StaticList$filter$1 r0 = (androidx.paging.PageEvent$StaticList$filter$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.paging.PageEvent$StaticList$filter$1 r0 = new androidx.paging.PageEvent$StaticList$filter$1
                r0.<init>(r13, r15)
            L18:
                java.lang.Object r15 = r0.result
                a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L3c
                if (r2 != r3) goto L35
                java.lang.Object r14 = r0.L$3
                java.lang.Object r2 = r0.L$2
                java.util.Iterator r2 = (java.util.Iterator) r2
                java.lang.Object r4 = r0.L$1
                java.util.Collection r4 = (java.util.Collection) r4
                java.lang.Object r5 = r0.L$0
                bm3 r5 = (defpackage.bm3) r5
                defpackage.r57.b(r15)
                goto L6d
            L35:
                java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r13)
                r13 = 0
                return r13
            L3c:
                defpackage.r57.b(r15)
                java.util.List<T> r15 = r13.data
                java.lang.Iterable r15 = (java.lang.Iterable) r15
                java.util.ArrayList r2 = new java.util.ArrayList
                r2.<init>()
                java.util.Iterator r15 = r15.iterator()
                r4 = r2
                r2 = r15
            L4e:
                boolean r15 = r2.hasNext()
                if (r15 == 0) goto L7a
                java.lang.Object r15 = r2.next()
                r0.L$0 = r14
                r0.L$1 = r4
                r0.L$2 = r2
                r0.L$3 = r15
                r0.label = r3
                java.lang.Object r5 = r14.invoke(r15, r0)
                if (r5 != r1) goto L69
                return r1
            L69:
                r12 = r5
                r5 = r14
                r14 = r15
                r15 = r12
            L6d:
                java.lang.Boolean r15 = (java.lang.Boolean) r15
                boolean r15 = r15.booleanValue()
                if (r15 == 0) goto L78
                r4.add(r14)
            L78:
                r14 = r5
                goto L4e
            L7a:
                r7 = r4
                java.util.List r7 = (java.util.List) r7
                androidx.paging.LoadStates r8 = r13.sourceLoadStates
                androidx.paging.LoadStates r9 = r13.mediatorLoadStates
                int r10 = r13.placeholdersBefore
                int r11 = r13.placeholdersAfter
                androidx.paging.PageEvent$StaticList r6 = new androidx.paging.PageEvent$StaticList
                r6.<init>(r7, r8, r9, r10, r11)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageEvent.StaticList.filter(bm3, e02):java.lang.Object");
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0053  */
        /* JADX WARN: Code duplicated, block: B:19:0x0065 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:20:0x0066  */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0066 -> B:21:0x0069). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // androidx.paging.PageEvent
        public <R> java.lang.Object flatMap(defpackage.bm3<? super T, ? super defpackage.e02<? super java.lang.Iterable<? extends R>>, ? extends java.lang.Object> r13, defpackage.e02<? super androidx.paging.PageEvent<R>> r14) {
            /*
                r12 = this;
                boolean r0 = r14 instanceof androidx.paging.PageEvent$StaticList$flatMap$1
                if (r0 == 0) goto L13
                r0 = r14
                androidx.paging.PageEvent$StaticList$flatMap$1 r0 = (androidx.paging.PageEvent$StaticList$flatMap$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.paging.PageEvent$StaticList$flatMap$1 r0 = new androidx.paging.PageEvent$StaticList$flatMap$1
                r0.<init>(r12, r14)
            L18:
                java.lang.Object r14 = r0.result
                a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L3a
                if (r2 != r3) goto L33
                java.lang.Object r13 = r0.L$2
                java.util.Iterator r13 = (java.util.Iterator) r13
                java.lang.Object r2 = r0.L$1
                java.util.Collection r2 = (java.util.Collection) r2
                java.lang.Object r4 = r0.L$0
                bm3 r4 = (defpackage.bm3) r4
                defpackage.r57.b(r14)
                goto L69
            L33:
                java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r12)
                r12 = 0
                return r12
            L3a:
                defpackage.r57.b(r14)
                java.util.List<T> r14 = r12.data
                java.lang.Iterable r14 = (java.lang.Iterable) r14
                java.util.ArrayList r2 = new java.util.ArrayList
                r2.<init>()
                java.util.Iterator r14 = r14.iterator()
                r11 = r14
                r14 = r13
                r13 = r11
            L4d:
                boolean r4 = r13.hasNext()
                if (r4 == 0) goto L70
                java.lang.Object r4 = r13.next()
                r0.L$0 = r14
                r0.L$1 = r2
                r0.L$2 = r13
                r0.label = r3
                java.lang.Object r4 = r14.invoke(r4, r0)
                if (r4 != r1) goto L66
                return r1
            L66:
                r11 = r4
                r4 = r14
                r14 = r11
            L69:
                java.lang.Iterable r14 = (java.lang.Iterable) r14
                defpackage.nn1.s(r14, r2)
                r14 = r4
                goto L4d
            L70:
                r6 = r2
                java.util.List r6 = (java.util.List) r6
                androidx.paging.LoadStates r7 = r12.sourceLoadStates
                androidx.paging.LoadStates r8 = r12.mediatorLoadStates
                int r9 = r12.placeholdersBefore
                int r10 = r12.placeholdersAfter
                androidx.paging.PageEvent$StaticList r5 = new androidx.paging.PageEvent$StaticList
                r5.<init>(r6, r7, r8, r9, r10)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageEvent.StaticList.flatMap(bm3, e02):java.lang.Object");
        }

        public final List<T> getData() {
            return this.data;
        }

        public final LoadStates getMediatorLoadStates() {
            return this.mediatorLoadStates;
        }

        public final int getPlaceholdersAfter() {
            return this.placeholdersAfter;
        }

        public final int getPlaceholdersBefore() {
            return this.placeholdersBefore;
        }

        public final LoadStates getSourceLoadStates() {
            return this.sourceLoadStates;
        }

        public int hashCode() {
            int iHashCode = this.data.hashCode() * 31;
            LoadStates loadStates = this.sourceLoadStates;
            int iHashCode2 = (iHashCode + (loadStates == null ? 0 : loadStates.hashCode())) * 31;
            LoadStates loadStates2 = this.mediatorLoadStates;
            return Integer.hashCode(this.placeholdersAfter) + ej0.b(this.placeholdersBefore, (iHashCode2 + (loadStates2 != null ? loadStates2.hashCode() : 0)) * 31, 31);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x005e  */
        /* JADX WARN: Code duplicated, block: B:19:0x0072 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:20:0x0073  */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0073 -> B:21:0x0076). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // androidx.paging.PageEvent
        public <R> java.lang.Object map(defpackage.bm3<? super T, ? super defpackage.e02<? super R>, ? extends java.lang.Object> r14, defpackage.e02<? super androidx.paging.PageEvent<R>> r15) {
            /*
                r13 = this;
                boolean r0 = r15 instanceof androidx.paging.PageEvent$StaticList$map$1
                if (r0 == 0) goto L13
                r0 = r15
                androidx.paging.PageEvent$StaticList$map$1 r0 = (androidx.paging.PageEvent$StaticList$map$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.paging.PageEvent$StaticList$map$1 r0 = new androidx.paging.PageEvent$StaticList$map$1
                r0.<init>(r13, r15)
            L18:
                java.lang.Object r15 = r0.result
                a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L3e
                if (r2 != r3) goto L37
                java.lang.Object r14 = r0.L$3
                java.util.Collection r14 = (java.util.Collection) r14
                java.lang.Object r2 = r0.L$2
                java.util.Iterator r2 = (java.util.Iterator) r2
                java.lang.Object r4 = r0.L$1
                java.util.Collection r4 = (java.util.Collection) r4
                java.lang.Object r5 = r0.L$0
                bm3 r5 = (defpackage.bm3) r5
                defpackage.r57.b(r15)
                goto L76
            L37:
                java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r13)
                r13 = 0
                return r13
            L3e:
                defpackage.r57.b(r15)
                java.util.List<T> r15 = r13.data
                java.lang.Iterable r15 = (java.lang.Iterable) r15
                java.util.ArrayList r2 = new java.util.ArrayList
                r4 = 10
                int r4 = defpackage.kn1.q(r15, r4)
                r2.<init>(r4)
                java.util.Iterator r15 = r15.iterator()
                r12 = r15
                r15 = r14
                r14 = r2
                r2 = r12
            L58:
                boolean r4 = r2.hasNext()
                if (r4 == 0) goto L7c
                java.lang.Object r4 = r2.next()
                r0.L$0 = r15
                r0.L$1 = r14
                r0.L$2 = r2
                r0.L$3 = r14
                r0.label = r3
                java.lang.Object r4 = r15.invoke(r4, r0)
                if (r4 != r1) goto L73
                return r1
            L73:
                r5 = r15
                r15 = r4
                r4 = r14
            L76:
                r14.add(r15)
                r14 = r4
                r15 = r5
                goto L58
            L7c:
                r7 = r14
                java.util.List r7 = (java.util.List) r7
                androidx.paging.LoadStates r8 = r13.sourceLoadStates
                androidx.paging.LoadStates r9 = r13.mediatorLoadStates
                int r10 = r13.placeholdersBefore
                int r11 = r13.placeholdersAfter
                androidx.paging.PageEvent$StaticList r6 = new androidx.paging.PageEvent$StaticList
                r6.<init>(r7, r8, r9, r10, r11)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageEvent.StaticList.map(bm3, e02):java.lang.Object");
        }

        public String toString() {
            LoadStates loadStates = this.mediatorLoadStates;
            StringBuilder sb = new StringBuilder("PageEvent.StaticList with ");
            sb.append(this.data.size());
            sb.append(" items (\n                    |   first item: ");
            sb.append(qn1.V(this.data));
            sb.append("\n                    |   last item: ");
            sb.append(qn1.c0(this.data));
            sb.append("\n                    |   sourceLoadStates: ");
            sb.append(this.sourceLoadStates);
            sb.append(",\n                    |   placeholdersBefore: ");
            sb.append(this.placeholdersBefore);
            sb.append(",\n                    |   placeholdersAfter: ");
            String strE = l2.e(sb, ",\n                    ", this.placeholdersAfter);
            if (loadStates != null) {
                strE = strE + "|   mediatorLoadStates: " + loadStates + '\n';
            }
            return na8.j(strE.concat("|)"));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public StaticList(List<? extends T> list, LoadStates loadStates, LoadStates loadStates2, int i, int i2) {
            super(null);
            list.getClass();
            this.data = list;
            this.sourceLoadStates = loadStates;
            this.mediatorLoadStates = loadStates2;
            this.placeholdersBefore = i;
            this.placeholdersAfter = i2;
        }
    }
}
