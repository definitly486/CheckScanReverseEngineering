package androidx.room;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.h8;
import defpackage.id3;
import defpackage.px;
import defpackage.r57;
import defpackage.xg5;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class ObservedTableVersions {
    private final xg5<int[]> versions;

    /* JADX INFO: renamed from: androidx.room.ObservedTableVersions$collect$1, reason: invalid class name */
    @bd2(c = "androidx.room.ObservedTableVersions", f = "InvalidationTracker.kt", l = {638}, m = "collect")
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ObservedTableVersions.this.collect(null, this);
        }
    }

    public ObservedTableVersions(int i) {
        this.versions = px.a(new int[i]);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object collect(id3<? super int[]> id3Var, e02<?> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            xg5<int[]> xg5Var = this.versions;
            anonymousClass1.label = 1;
            if (xg5Var.collect(id3Var, anonymousClass1) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        h8.d();
        return null;
    }

    public final void increment(Set<Integer> set) {
        int[] value;
        int[] iArr;
        set.getClass();
        if (set.isEmpty()) {
            return;
        }
        xg5<int[]> xg5Var = this.versions;
        do {
            value = xg5Var.getValue();
            int[] iArr2 = value;
            int length = iArr2.length;
            iArr = new int[length];
            for (int i = 0; i < length; i++) {
                iArr[i] = set.contains(Integer.valueOf(i)) ? iArr2[i] + 1 : iArr2[i];
            }
        } while (!xg5Var.a(value, iArr));
    }
}
