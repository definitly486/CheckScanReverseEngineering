package androidx.compose.runtime;

import androidx.collection.IntList;
import androidx.collection.ObjectList;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bp7;
import defpackage.cp7;
import defpackage.e02;
import defpackage.f57;
import defpackage.j59;
import defpackage.jh;
import defpackage.jp7;
import defpackage.na8;
import defpackage.qn1;
import defpackage.r57;
import defpackage.v39;
import defpackage.zo7;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
final class ComposePausableCompositionException extends RuntimeException {
    private final ObjectList<Object> instances;
    private final int lastOperation;
    private final IntList operations;
    private final ObjectList<Object> reused;

    /* JADX INFO: renamed from: androidx.compose.runtime.ComposePausableCompositionException$operationsSequence$1, reason: invalid class name */
    @bd2(c = "androidx.compose.runtime.ComposePausableCompositionException$operationsSequence$1", f = "PausableComposition.kt", l = {579}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends f57 implements bm3<bp7<? super String>, e02<? super j59>, Object> {
        int I$0;
        int I$1;
        int I$2;
        private /* synthetic */ Object L$0;
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = ComposePausableCompositionException.this.new AnonymousClass1(e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(bp7<? super String> bp7Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(bp7Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            int i;
            bp7 bp7Var;
            int i2;
            int i3;
            String strB;
            int i4;
            int i5;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i6 = this.label;
            if (i6 == 0) {
                r57.b(obj);
                i = 0;
                bp7Var = (bp7) this.L$0;
                i2 = 0;
                i3 = 0;
            } else {
                if (i6 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                int i7 = this.I$2;
                int i8 = this.I$1;
                int i9 = this.I$0;
                bp7Var = (bp7) this.L$0;
                r57.b(obj);
                i2 = i8;
                i3 = i7;
                i = i9;
            }
            while (i < Math.min(ComposePausableCompositionException.this.lastOperation + 10, ComposePausableCompositionException.this.operations._size)) {
                int i10 = i + 1;
                int i11 = ComposePausableCompositionException.this.operations.get(i);
                switch (i11) {
                    case 0:
                        strB = "up";
                        break;
                    case 1:
                        int i12 = i2 + 1;
                        strB = "down " + ComposePausableCompositionException.this.instances.get(i2);
                        i2 = i12;
                        break;
                    case 2:
                        strB = "remove " + ComposePausableCompositionException.this.operations.get(i10) + ' ' + ComposePausableCompositionException.this.operations.get(i + 2);
                        i10 = i + 3;
                        break;
                    case 3:
                        strB = "move " + ComposePausableCompositionException.this.operations.get(i10) + ' ' + ComposePausableCompositionException.this.operations.get(i + 2) + ' ' + ComposePausableCompositionException.this.operations.get(i + 3);
                        i10 = i + 4;
                        break;
                    case 4:
                        strB = "clear";
                        break;
                    case 5:
                        i4 = i + 2;
                        i5 = i2 + 1;
                        strB = "insertBottomUp " + ComposePausableCompositionException.this.operations.get(i10) + ' ' + ComposePausableCompositionException.this.instances.get(i2);
                        i10 = i4;
                        i2 = i5;
                        break;
                    case 6:
                        i4 = i + 2;
                        i5 = i2 + 1;
                        strB = "insertTopDown " + ComposePausableCompositionException.this.operations.get(i10) + ' ' + ComposePausableCompositionException.this.instances.get(i2);
                        i10 = i4;
                        i2 = i5;
                        break;
                    case 7:
                        Object obj2 = ComposePausableCompositionException.this.instances.get(i2);
                        obj2.getClass();
                        v39.c(2, obj2);
                        i2 += 2;
                        strB = "apply " + ((bm3) obj2);
                        break;
                    case 8:
                        strB = "reuse " + ComposePausableCompositionException.this.reused.get(i3);
                        i3++;
                        break;
                    case 9:
                        strB = "recompose pending";
                        break;
                    default:
                        strB = jh.b(i11, "unknown op: ");
                        break;
                }
                String str = i + ": " + strB;
                this.L$0 = bp7Var;
                this.I$0 = i10;
                this.I$1 = i2;
                this.I$2 = i3;
                this.label = 1;
                if (bp7Var.a(this, str) == a32Var) {
                    return a32Var;
                }
                i = i10;
            }
            return j59.a;
        }
    }

    public ComposePausableCompositionException(ObjectList<Object> objectList, ObjectList<Object> objectList2, IntList intList, int i, Throwable th) {
        super(th);
        this.instances = objectList;
        this.reused = objectList2;
        this.operations = intList;
        this.lastOperation = i;
    }

    public static /* synthetic */ void getMessage$annotations() {
    }

    private final zo7<String> operationsSequence() {
        return new cp7(new AnonymousClass1(null));
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        List listT0;
        StringBuilder sb = new StringBuilder("\n            |Failed to execute op number ");
        sb.append(this.lastOperation);
        sb.append(":\n            |");
        List listQ = jp7.q(operationsSequence());
        int size = listQ.size();
        if (50 >= size) {
            listT0 = qn1.t0(listQ);
        } else {
            ArrayList arrayList = new ArrayList(50);
            if (listQ instanceof RandomAccess) {
                for (int i = size - 50; i < size; i++) {
                    arrayList.add(listQ.get(i));
                }
            } else {
                ListIterator listIterator = listQ.listIterator(size - 50);
                while (listIterator.hasNext()) {
                    arrayList.add(listIterator.next());
                }
            }
            listT0 = arrayList;
        }
        sb.append(qn1.a0(listT0, "\n", null, null, 0, null, 62));
        sb.append("\n            ");
        return na8.j(sb.toString());
    }
}
