package androidx.paging;

import defpackage.fg;
import defpackage.fr;
import defpackage.kx2;
import defpackage.kx6;
import defpackage.me0;
import defpackage.qn1;
import defpackage.u74;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class FlattenedPageEventStorage<T> {
    private LoadStates mediatorStates;
    private int placeholdersAfter;
    private int placeholdersBefore;
    private boolean receivedFirstEvent;
    private final fr<TransformablePage<T>> pages = new fr<>();
    private final MutableLoadStateCollection sourceStates = new MutableLoadStateCollection();

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.PREPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.APPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadType.REFRESH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final void handleInsert(PageEvent.Insert<T> insert) {
        this.sourceStates.set(insert.getSourceLoadStates());
        this.mediatorStates = insert.getMediatorLoadStates();
        int i = WhenMappings.$EnumSwitchMapping$0[insert.getLoadType().ordinal()];
        if (i == 1) {
            this.placeholdersBefore = insert.getPlaceholdersBefore();
            Iterator<Integer> it = kx6.k(insert.getPages().size() - 1, 0).iterator();
            while (it.hasNext()) {
                this.pages.addFirst(insert.getPages().get(((u74) it).nextInt()));
            }
            return;
        }
        if (i == 2) {
            this.placeholdersAfter = insert.getPlaceholdersAfter();
            this.pages.addAll(insert.getPages());
        } else {
            if (i != 3) {
                me0.e();
                return;
            }
            this.pages.clear();
            this.placeholdersAfter = insert.getPlaceholdersAfter();
            this.placeholdersBefore = insert.getPlaceholdersBefore();
            this.pages.addAll(insert.getPages());
        }
    }

    private final void handleLoadStateUpdate(PageEvent.LoadStateUpdate<T> loadStateUpdate) {
        this.sourceStates.set(loadStateUpdate.getSource());
        this.mediatorStates = loadStateUpdate.getMediator();
    }

    private final void handlePageDrop(PageEvent.Drop<T> drop) {
        this.sourceStates.set(drop.getLoadType(), LoadState.NotLoading.Companion.getIncomplete$paging_common());
        int i = WhenMappings.$EnumSwitchMapping$0[drop.getLoadType().ordinal()];
        int i2 = 0;
        if (i == 1) {
            this.placeholdersBefore = drop.getPlaceholdersRemaining();
            int pageCount = drop.getPageCount();
            while (i2 < pageCount) {
                this.pages.removeFirst();
                i2++;
            }
            return;
        }
        if (i != 2) {
            fg.c("Page drop type must be prepend or append");
            return;
        }
        this.placeholdersAfter = drop.getPlaceholdersRemaining();
        int pageCount2 = drop.getPageCount();
        while (i2 < pageCount2) {
            this.pages.removeLast();
            i2++;
        }
    }

    private final void handleStaticList(PageEvent.StaticList<T> staticList) {
        if (staticList.getSourceLoadStates() != null) {
            this.sourceStates.set(staticList.getSourceLoadStates());
        }
        if (staticList.getMediatorLoadStates() != null) {
            this.mediatorStates = staticList.getMediatorLoadStates();
        }
        this.pages.clear();
        this.placeholdersAfter = 0;
        this.placeholdersBefore = 0;
        this.pages.addLast(new TransformablePage<>(0, staticList.getData()));
    }

    public final void add(PageEvent<T> pageEvent) {
        pageEvent.getClass();
        this.receivedFirstEvent = true;
        if (pageEvent instanceof PageEvent.Insert) {
            handleInsert((PageEvent.Insert) pageEvent);
            return;
        }
        if (pageEvent instanceof PageEvent.Drop) {
            handlePageDrop((PageEvent.Drop) pageEvent);
            return;
        }
        if (pageEvent instanceof PageEvent.LoadStateUpdate) {
            handleLoadStateUpdate((PageEvent.LoadStateUpdate) pageEvent);
        } else if (pageEvent instanceof PageEvent.StaticList) {
            handleStaticList((PageEvent.StaticList) pageEvent);
        } else {
            me0.e();
        }
    }

    public final List<PageEvent<T>> getAsEvents() {
        if (!this.receivedFirstEvent) {
            return kx2.b;
        }
        ArrayList arrayList = new ArrayList();
        LoadStates loadStatesSnapshot = this.sourceStates.snapshot();
        if (this.pages.isEmpty()) {
            arrayList.add(new PageEvent.LoadStateUpdate(loadStatesSnapshot, this.mediatorStates));
            return arrayList;
        }
        arrayList.add(PageEvent.Insert.Companion.Refresh(qn1.t0(this.pages), this.placeholdersBefore, this.placeholdersAfter, loadStatesSnapshot, this.mediatorStates));
        return arrayList;
    }
}
