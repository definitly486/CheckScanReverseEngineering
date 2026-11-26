package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import defpackage.aa4;
import defpackage.aq5;
import defpackage.j59;
import defpackage.kx2;
import defpackage.me0;
import defpackage.ni0;
import defpackage.nl3;
import defpackage.o2;
import defpackage.qn1;
import defpackage.re4;
import defpackage.sr;
import defpackage.tr;
import defpackage.ul2;
import defpackage.ur;
import defpackage.vr;
import defpackage.wr;

/* JADX INFO: loaded from: classes2.dex */
public final class Operations extends OperationsDebugStringFormattable {
    public static final int $stable = 8;
    public int intArgsSize;
    public int objectArgsSize;
    public int opCodesSize;
    private int pushedIntMask;
    private int pushedObjectMask;
    public Operation[] opCodes = new Operation[16];
    public int[] intArgs = new int[16];
    public Object[] objectArgs = new Object[16];

    public final class OpIterator implements OperationArgContainer {
        private int intIdx;
        private int objIdx;
        private int opIdx;

        public OpIterator() {
        }

        public final String currentOperationDebugString() {
            return "operation[" + this.opIdx + "] = " + Operations.this.currentOpToDebugString(this, "");
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationArgContainer
        public int getInt(int i) {
            return Operations.this.intArgs[this.intIdx + i];
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationArgContainer
        /* JADX INFO: renamed from: getObject-PtL-UHM */
        public <T> T mo5489getObjectPtLUHM(int i) {
            return (T) Operations.this.objectArgs[this.objIdx + i];
        }

        public final Operation getOperation() {
            return Operations.this.opCodes[this.opIdx];
        }

        public final boolean next() {
            if (this.opIdx >= Operations.this.opCodesSize) {
                return false;
            }
            Operation operation = getOperation();
            this.intIdx = operation.getInts() + this.intIdx;
            this.objIdx = operation.getObjects() + this.objIdx;
            int i = this.opIdx + 1;
            this.opIdx = i;
            return i < Operations.this.opCodesSize;
        }
    }

    private final int createExpectedArgMask(int i) {
        return (i == 0 ? 0 : -1) >>> (32 - i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String currentOpToDebugString(OpIterator opIterator, String str) {
        Operation operation = opIterator.getOperation();
        if (operation.getInts() == 0 && operation.getObjects() == 0) {
            return operation.getName();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(operation.getName());
        sb.append('(');
        String strIndent = indent(str);
        int ints = operation.getInts();
        boolean z = true;
        for (int i = 0; i < ints; i++) {
            String strIntParamName = operation.intParamName(i);
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append('\n');
            sb.append(strIndent);
            sb.append(strIntParamName);
            sb.append(" = ");
            sb.append(opIterator.getInt(i));
        }
        int objects = operation.getObjects();
        for (int i2 = 0; i2 < objects; i2++) {
            int iM5469constructorimpl = Operation.ObjectParameter.m5469constructorimpl(i2);
            String strMo5443objectParamNamePtLUHM = operation.mo5443objectParamNamePtLUHM(iM5469constructorimpl);
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append('\n');
            sb.append(strIndent);
            sb.append(strMo5443objectParamNamePtLUHM);
            sb.append(" = ");
            sb.append(formatOpArgumentToString(opIterator.mo5489getObjectPtLUHM(iM5469constructorimpl), strIndent));
        }
        sb.append('\n');
        sb.append(str);
        sb.append(")");
        return sb.toString();
    }

    private final int determineNewSize(int i, int i2) {
        int i3 = i + (i <= 1024 ? i : 1024);
        return i3 < i2 ? i2 : i3;
    }

    private final void ensureIntArgsSizeAtLeast(int i) {
        int length = this.intArgs.length;
        if (i > length) {
            resizeIntArgs(length, i);
        }
    }

    private final void ensureObjectArgsSizeAtLeast(int i) {
        int length = this.objectArgs.length;
        if (i > length) {
            resizeObjectArgs(length, i);
        }
    }

    private final String exceptionMessageForOperationPushNoScope(Operation operation) {
        return "Cannot push " + operation + " without arguments because it expects " + operation.getInts() + " ints and " + operation.getObjects() + " objects.";
    }

    private final String exceptionMessageForOperationPushWithScope(Operation operation) {
        StringBuilder sb = new StringBuilder();
        int ints = operation.getInts();
        int i = 0;
        for (int i2 = 0; i2 < ints; i2++) {
            if (((1 << i2) & this.pushedIntMask) == 0) {
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(operation.intParamName(i2));
                i++;
            }
        }
        String string = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        int objects = operation.getObjects();
        int i3 = 0;
        for (int i4 = 0; i4 < objects; i4++) {
            if (((1 << i4) & this.pushedObjectMask) == 0) {
                if (i > 0) {
                    sb2.append(", ");
                }
                sb2.append(operation.mo5443objectParamNamePtLUHM(Operation.ObjectParameter.m5469constructorimpl(i4)));
                i3++;
            }
        }
        String string2 = sb2.toString();
        StringBuilder sb3 = new StringBuilder("Error while pushing ");
        sb3.append(operation);
        sb3.append(". Not all arguments were provided. Missing ");
        sb3.append(i);
        sb3.append(" int arguments (");
        o2.e(sb3, string, ") and ", i3, " object arguments (");
        return me0.d(sb3, string2, ").");
    }

    private final String formatOpArgumentToString(Object obj, String str) {
        if (obj == null) {
            return "null";
        }
        boolean z = obj instanceof Object[];
        re4 wrVar = kx2.b;
        if (z) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length != 0) {
                wrVar = new sr(objArr);
            }
            return toCollectionString(wrVar, str);
        }
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            if (iArr.length != 0) {
                wrVar = new tr(iArr);
            }
            return toCollectionString(wrVar, str);
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            if (jArr.length != 0) {
                wrVar = new ur(jArr);
            }
            return toCollectionString(wrVar, str);
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            if (fArr.length != 0) {
                wrVar = new vr(fArr);
            }
            return toCollectionString(wrVar, str);
        }
        if (!(obj instanceof double[])) {
            if (obj instanceof Iterable) {
                return toCollectionString((Iterable) obj, str);
            }
            return obj instanceof OperationsDebugStringFormattable ? ((OperationsDebugStringFormattable) obj).toDebugString(str) : obj.toString();
        }
        double[] dArr = (double[]) obj;
        if (dArr.length != 0) {
            wrVar = new wr(dArr);
        }
        return toCollectionString(wrVar, str);
    }

    public static /* synthetic */ void getOpCodes$runtime$annotations() {
    }

    private final String indent(String str) {
        return ni0.c(str, "    ");
    }

    private final Operation peekOperation() {
        return this.opCodes[this.opCodesSize - 1];
    }

    private final void resizeIntArgs(int i, int i2) {
        int[] iArr = new int[determineNewSize(i, i2)];
        aq5.h(0, 0, i, this.intArgs, iArr);
        this.intArgs = iArr;
    }

    private final void resizeObjectArgs(int i, int i2) {
        Object[] objArr = new Object[determineNewSize(i, i2)];
        System.arraycopy(this.objectArgs, 0, objArr, 0, i);
        this.objectArgs = objArr;
    }

    private final void resizeOpCodes() {
        int i = this.opCodesSize;
        Operation[] operationArr = new Operation[(i <= 1024 ? i : 1024) + i];
        System.arraycopy(this.opCodes, 0, operationArr, 0, i);
        this.opCodes = operationArr;
    }

    private final <T> String toCollectionString(Iterable<? extends T> iterable, final String str) {
        return qn1.a0(iterable, ", ", "[", "]", 0, new nl3() { // from class: hz5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Operations.toCollectionString$lambda$0(this.b, str, obj);
            }
        }, 24);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence toCollectionString$lambda$0(Operations operations, String str, Object obj) {
        return operations.formatOpArgumentToString(obj, str);
    }

    private final int topIntIndexOf(int i) {
        return (this.intArgsSize - this.opCodes[this.opCodesSize - 1].getInts()) + i;
    }

    /* JADX INFO: renamed from: topObjectIndexOf-PtL-UHM, reason: not valid java name */
    private final int m5490topObjectIndexOfPtLUHM(int i) {
        return (this.objectArgsSize - this.opCodes[this.opCodesSize - 1].getObjects()) + i;
    }

    public final void clear() {
        this.opCodesSize = 0;
        this.intArgsSize = 0;
        aq5.t(null, this.objectArgs, 0, this.objectArgsSize);
        this.objectArgsSize = 0;
    }

    public final void drain(nl3<? super OpIterator, j59> nl3Var) {
        if (isNotEmpty()) {
            OpIterator opIterator = new OpIterator();
            do {
                nl3Var.invoke(opIterator);
            } while (opIterator.next());
        }
        clear();
    }

    public final void ensureAllArgumentsPushedFor(Operation operation) {
        int i = this.pushedIntMask;
        int ints = operation.getInts();
        if (i == ((ints == 0 ? 0 : -1) >>> (32 - ints))) {
            operation.getObjects();
        }
    }

    public final void executeAndFlushAllPendingOperations(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
        if (isNotEmpty()) {
            OpIterator opIterator = new OpIterator();
            while (true) {
                Applier<?> applier2 = applier;
                SlotWriter slotWriter2 = slotWriter;
                RememberManager rememberManager2 = rememberManager;
                OperationErrorContext operationErrorContext2 = operationErrorContext;
                opIterator.getOperation().executeWithComposeStackTrace(opIterator, applier2, slotWriter2, rememberManager2, operationErrorContext2);
                if (!opIterator.next()) {
                    break;
                }
                applier = applier2;
                slotWriter = slotWriter2;
                rememberManager = rememberManager2;
                operationErrorContext = operationErrorContext2;
            }
        }
        clear();
    }

    public final void forEach(nl3<? super OpIterator, j59> nl3Var) {
        if (isNotEmpty()) {
            OpIterator opIterator = new OpIterator();
            do {
                nl3Var.invoke(opIterator);
            } while (opIterator.next());
        }
    }

    public final int getSize() {
        return this.opCodesSize;
    }

    public final boolean isEmpty() {
        return getSize() == 0;
    }

    public final boolean isNotEmpty() {
        return getSize() != 0;
    }

    public final void pop() {
        Operation[] operationArr = this.opCodes;
        int i = this.opCodesSize - 1;
        this.opCodesSize = i;
        Operation operation = operationArr[i];
        operationArr[i] = null;
        int objects = operation.getObjects();
        for (int i2 = 0; i2 < objects; i2++) {
            Object[] objArr = this.objectArgs;
            int i3 = this.objectArgsSize - 1;
            this.objectArgsSize = i3;
            objArr[i3] = null;
        }
        this.intArgsSize -= operation.getInts();
    }

    public final void popInto(Operations operations) {
        Operation[] operationArr = this.opCodes;
        int i = this.opCodesSize - 1;
        this.opCodesSize = i;
        Operation operation = operationArr[i];
        operationArr[i] = null;
        operations.pushOp(operation);
        Object[] objArr = this.objectArgs;
        Object[] objArr2 = operations.objectArgs;
        int objects = operations.objectArgsSize - operation.getObjects();
        int objects2 = this.objectArgsSize - operation.getObjects();
        System.arraycopy(objArr, objects2, objArr2, objects, this.objectArgsSize - objects2);
        aq5.t(null, this.objectArgs, this.objectArgsSize - operation.getObjects(), this.objectArgsSize);
        aq5.h(operations.intArgsSize - operation.getInts(), this.intArgsSize - operation.getInts(), this.intArgsSize, this.intArgs, operations.intArgs);
        this.objectArgsSize -= operation.getObjects();
        this.intArgsSize -= operation.getInts();
    }

    public final void push(Operation operation, nl3<? super WriteScope, j59> nl3Var) {
        pushOp(operation);
        nl3Var.invoke(WriteScope.m5491boximpl(WriteScope.m5492constructorimpl(this)));
        ensureAllArgumentsPushedFor(operation);
    }

    public final void pushOp(Operation operation) {
        if (this.opCodesSize == this.opCodes.length) {
            resizeOpCodes();
        }
        int ints = operation.getInts() + this.intArgsSize;
        int length = this.intArgs.length;
        if (ints > length) {
            resizeIntArgs(length, ints);
        }
        int objects = operation.getObjects() + this.objectArgsSize;
        int length2 = this.objectArgs.length;
        if (objects > length2) {
            resizeObjectArgs(length2, objects);
        }
        Operation[] operationArr = this.opCodes;
        int i = this.opCodesSize;
        this.opCodesSize = i + 1;
        operationArr[i] = operation;
        this.intArgsSize = operation.getInts() + this.intArgsSize;
        this.objectArgsSize = operation.getObjects() + this.objectArgsSize;
    }

    @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationsDebugStringFormattable
    public String toDebugString(String str) {
        StringBuilder sb = new StringBuilder();
        if (isNotEmpty()) {
            OpIterator opIterator = new OpIterator();
            int i = 0;
            while (true) {
                sb.append(str);
                int i2 = i + 1;
                sb.append(i);
                sb.append(". ");
                sb.append(currentOpToDebugString(opIterator, str));
                sb.append('\n');
                if (!opIterator.next()) {
                    break;
                }
                i = i2;
            }
        }
        return sb.toString();
    }

    @ul2
    public String toString() {
        return super.toString();
    }

    public final void push(Operation operation) {
        pushOp(operation);
    }

    public static final class WriteScope {
        private final Operations stack;

        private /* synthetic */ WriteScope(Operations operations) {
            this.stack = operations;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ WriteScope m5491boximpl(Operations operations) {
            return new WriteScope(operations);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static Operations m5492constructorimpl(Operations operations) {
            return operations;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m5493equalsimpl(Operations operations, Object obj) {
            return (obj instanceof WriteScope) && aa4.e(operations, ((WriteScope) obj).m5505unboximpl());
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m5494equalsimpl0(Operations operations, Operations operations2) {
            return aa4.e(operations, operations2);
        }

        /* JADX INFO: renamed from: getOperation-impl, reason: not valid java name */
        public static final Operation m5495getOperationimpl(Operations operations) {
            return operations.opCodes[operations.opCodesSize - 1];
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m5496hashCodeimpl(Operations operations) {
            return operations.hashCode();
        }

        /* JADX INFO: renamed from: setInt-impl, reason: not valid java name */
        public static final void m5497setIntimpl(Operations operations, int i, int i2) {
            operations.intArgs[(operations.intArgsSize - operations.opCodes[operations.opCodesSize - 1].getInts()) + i] = i2;
        }

        /* JADX INFO: renamed from: setInts-impl, reason: not valid java name */
        public static final void m5499setIntsimpl(Operations operations, int i, int i2, int i3, int i4, int i5, int i6) {
            int ints = operations.intArgsSize - operations.opCodes[operations.opCodesSize - 1].getInts();
            int[] iArr = operations.intArgs;
            iArr[i + ints] = i2;
            iArr[i3 + ints] = i4;
            iArr[ints + i5] = i6;
        }

        /* JADX INFO: renamed from: setObject-sGr0YRc, reason: not valid java name */
        public static final <T> void m5500setObjectsGr0YRc(Operations operations, int i, T t) {
            operations.objectArgs[(operations.objectArgsSize - operations.opCodes[operations.opCodesSize - 1].getObjects()) + i] = t;
        }

        /* JADX INFO: renamed from: setObjects-EsEZvaA, reason: not valid java name */
        public static final <T, U> void m5501setObjectsEsEZvaA(Operations operations, int i, T t, int i2, U u) {
            int objects = operations.objectArgsSize - operations.opCodes[operations.opCodesSize - 1].getObjects();
            Object[] objArr = operations.objectArgs;
            objArr[i + objects] = t;
            objArr[objects + i2] = u;
        }

        /* JADX INFO: renamed from: setObjects-JOGOPjs, reason: not valid java name */
        public static final <T, U, V> void m5502setObjectsJOGOPjs(Operations operations, int i, T t, int i2, U u, int i3, V v) {
            int objects = operations.objectArgsSize - operations.opCodes[operations.opCodesSize - 1].getObjects();
            Object[] objArr = operations.objectArgs;
            objArr[i + objects] = t;
            objArr[i2 + objects] = u;
            objArr[objects + i3] = v;
        }

        /* JADX INFO: renamed from: setObjects-fiWQlIY, reason: not valid java name */
        public static final <T, U, V, W> void m5503setObjectsfiWQlIY(Operations operations, int i, T t, int i2, U u, int i3, V v, int i4, W w) {
            int objects = operations.objectArgsSize - operations.opCodes[operations.opCodesSize - 1].getObjects();
            Object[] objArr = operations.objectArgs;
            objArr[i + objects] = t;
            objArr[i2 + objects] = u;
            objArr[i3 + objects] = v;
            objArr[objects + i4] = w;
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m5504toStringimpl(Operations operations) {
            return "WriteScope(stack=" + operations + ')';
        }

        public boolean equals(Object obj) {
            return m5493equalsimpl(this.stack, obj);
        }

        public int hashCode() {
            return m5496hashCodeimpl(this.stack);
        }

        public String toString() {
            return m5504toStringimpl(this.stack);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ Operations m5505unboximpl() {
            return this.stack;
        }

        /* JADX INFO: renamed from: setInts-impl, reason: not valid java name */
        public static final void m5498setIntsimpl(Operations operations, int i, int i2, int i3, int i4) {
            int ints = operations.intArgsSize - operations.opCodes[operations.opCodesSize - 1].getInts();
            int[] iArr = operations.intArgs;
            iArr[i + ints] = i2;
            iArr[ints + i3] = i4;
        }
    }
}
