package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.ch5;
import defpackage.e02;
import defpackage.f02;
import defpackage.j44;
import defpackage.j59;
import defpackage.kn1;
import defpackage.qn1;
import defpackage.r57;
import defpackage.u96;
import defpackage.yg5;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class FlattenedPageController<T> {
    private final FlattenedPageEventStorage<T> list = new FlattenedPageEventStorage<>();
    private final yg5 lock = new ch5();
    private int maxEventIndex = -1;

    /* JADX INFO: renamed from: androidx.paging.FlattenedPageController$getStateAsEvents$1, reason: invalid class name */
    @bd2(c = "androidx.paging.FlattenedPageController", f = "CachedPageEventFlow.kt", l = {274}, m = "getStateAsEvents", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ FlattenedPageController<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(FlattenedPageController<T> flattenedPageController, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = flattenedPageController;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.getStateAsEvents(this);
        }
    }

    /* JADX INFO: renamed from: androidx.paging.FlattenedPageController$record$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.FlattenedPageController", f = "CachedPageEventFlow.kt", l = {274}, m = "record", v = 1)
    public static final class C06971 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ FlattenedPageController<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06971(FlattenedPageController<T> flattenedPageController, e02<? super C06971> e02Var) {
            super(e02Var);
            this.this$0 = flattenedPageController;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.record(null, this);
        }
    }

    public final PageEvent.Insert<T> getCachedEvent() {
        PageEvent pageEvent = (PageEvent) qn1.V(this.list.getAsEvents());
        if (pageEvent != null && (pageEvent instanceof PageEvent.Insert)) {
            PageEvent.Insert<T> insert = (PageEvent.Insert) pageEvent;
            if (insert.getLoadType() == LoadType.REFRESH) {
                return insert;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object getStateAsEvents(e02<? super List<? extends j44<? extends PageEvent<T>>>> e02Var) {
        AnonymousClass1 anonymousClass1;
        yg5 yg5Var;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(this, e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(this, e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            yg5 yg5Var2 = this.lock;
            anonymousClass1.L$0 = yg5Var2;
            anonymousClass1.label = 1;
            if (yg5Var2.lock(null, anonymousClass1) == a32Var) {
                return a32Var;
            }
            yg5Var = yg5Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            yg5Var = (yg5) anonymousClass1.L$0;
            r57.b(obj);
        }
        try {
            List<PageEvent<T>> asEvents = this.list.getAsEvents();
            int size = (this.maxEventIndex - asEvents.size()) + 1;
            List<PageEvent<T>> list = asEvents;
            ArrayList arrayList = new ArrayList(kn1.q(list, 10));
            int i3 = 0;
            for (T t : list) {
                int i4 = i3 + 1;
                if (i3 < 0) {
                    u96.o();
                    throw null;
                }
                arrayList.add(new j44(i3 + size, (PageEvent) t));
                i3 = i4;
            }
            yg5Var.unlock(null);
            return arrayList;
        } catch (Throwable th) {
            yg5Var.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object record(j44<? extends PageEvent<T>> j44Var, e02<? super j59> e02Var) {
        C06971 c06971;
        yg5 yg5Var;
        if (e02Var instanceof C06971) {
            c06971 = (C06971) e02Var;
            int i = c06971.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c06971.label = i - Integer.MIN_VALUE;
            } else {
                c06971 = new C06971(this, e02Var);
            }
        } else {
            c06971 = new C06971(this, e02Var);
        }
        Object obj = c06971.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c06971.label;
        if (i2 == 0) {
            r57.b(obj);
            yg5Var = this.lock;
            c06971.L$0 = j44Var;
            c06971.L$1 = yg5Var;
            c06971.label = 1;
            if (yg5Var.lock(null, c06971) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            yg5 yg5Var2 = (yg5) c06971.L$1;
            j44<? extends PageEvent<T>> j44Var2 = (j44) c06971.L$0;
            r57.b(obj);
            yg5Var = yg5Var2;
            j44Var = j44Var2;
        }
        try {
            this.maxEventIndex = j44Var.a;
            this.list.add((PageEvent) j44Var.b);
            j59 j59Var = j59.a;
            return j59.a;
        } finally {
            yg5Var.unlock(null);
        }
    }
}
