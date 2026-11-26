package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.CameraTimestamp;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.OutputStatus;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.media.Finalizer;
import defpackage.aa4;
import defpackage.ht;
import defpackage.j2;
import defpackage.j59;
import defpackage.jh2;
import defpackage.k2;
import defpackage.kt;
import defpackage.qn1;
import defpackage.r07;
import defpackage.vg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class OutputDistributor<T> implements AutoCloseable {
    private final Map<Long, OutputResult<T>> availableOutputs;
    private long cameraOutputSequenceNumbers;
    private boolean closed;
    private long lastFailedCameraOutputNumber;
    private long lastFailedFrameNumber;
    private final Object lock;
    private final int maximumCachedOutputs;
    private long newestCameraOutputNumber;
    private long newestFrameNumber;
    private final Finalizer<T> outputFinalizer;
    private final OutputMatcher outputMatcher;
    private final List<StartedOutput<T>> startedOutputs;

    public interface OutputListener<T> {
        /* JADX INFO: renamed from: onOutputComplete-3ejhThk */
        void mo943onOutputComplete3ejhThk(long j, long j2, long j3, long j4, Object obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OutputDistributor(int i, Finalizer<? super T> finalizer, OutputMatcher outputMatcher) {
        finalizer.getClass();
        outputMatcher.getClass();
        this.maximumCachedOutputs = i;
        this.outputFinalizer = finalizer;
        this.outputMatcher = outputMatcher;
        this.lock = new Object();
        this.cameraOutputSequenceNumbers = 1L;
        this.newestCameraOutputNumber = Long.MIN_VALUE;
        this.newestFrameNumber = FrameNumber.m464constructorimpl(Long.MIN_VALUE);
        this.lastFailedFrameNumber = Long.MIN_VALUE;
        this.lastFailedCameraOutputNumber = Long.MIN_VALUE;
        this.startedOutputs = new ArrayList();
        this.availableOutputs = new LinkedHashMap();
    }

    private final List<StartedOutput<T>> removeOutputsOlderThan(boolean z, long j, long j2) {
        List<StartedOutput<T>> list = this.startedOutputs;
        ArrayList arrayList = new ArrayList();
        for (T t : list) {
            StartedOutput startedOutput = (StartedOutput) t;
            if (startedOutput.isOutOfOrder() == z && startedOutput.getCameraOutputSequence() < j && startedOutput.getCameraOutputNumber() < j2) {
                arrayList.add(t);
            }
        }
        this.startedOutputs.removeAll(arrayList);
        return arrayList;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            this.closed = true;
            ArrayList arrayListV0 = qn1.v0(this.availableOutputs.values());
            this.availableOutputs.clear();
            ArrayList arrayListV1 = qn1.v0(this.startedOutputs);
            this.startedOutputs.clear();
            j59 j59Var = j59.a;
            Iterator it = arrayListV0.iterator();
            while (it.hasNext()) {
                Object objM974unboximpl = ((OutputResult) it.next()).m974unboximpl();
                Finalizer<T> finalizer = this.outputFinalizer;
                if (!OutputResult.m968getAvailableimpl(objM974unboximpl)) {
                    objM974unboximpl = null;
                }
                finalizer.finalize((T) objM974unboximpl);
            }
            Iterator it2 = arrayListV1.iterator();
            while (it2.hasNext()) {
                ((StartedOutput) it2.next()).m957completeWithFailuretXNfJfc(OutputStatus.Companion.m518getERROR_OUTPUT_ABORTEDU7r42EA());
            }
        }
    }

    /* JADX INFO: renamed from: onOutputFailure-Vw7M1qk, reason: not valid java name */
    public final void m952onOutputFailureVw7M1qk(long j) {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return;
                }
                this.lastFailedFrameNumber = j;
                Iterator<T> it = this.startedOutputs.iterator();
                StartedOutput startedOutput = null;
                boolean z = false;
                StartedOutput startedOutput2 = null;
                while (true) {
                    if (!it.hasNext()) {
                        if (z) {
                            break;
                        }
                    } else {
                        T next = it.next();
                        if (FrameNumber.m466equalsimpl0(((StartedOutput) next).m961getCameraFrameNumberUgla2oM(), j)) {
                            if (!z) {
                                z = true;
                                startedOutput2 = next;
                            }
                        }
                    }
                    startedOutput2 = null;
                    break;
                }
                StartedOutput startedOutput3 = startedOutput2;
                if (startedOutput3 != null) {
                    this.lastFailedCameraOutputNumber = startedOutput3.getCameraOutputNumber();
                    this.startedOutputs.remove(startedOutput3);
                    j59 j59Var = j59.a;
                    startedOutput = startedOutput3;
                }
                if (startedOutput != null) {
                    startedOutput.m957completeWithFailuretXNfJfc(OutputStatus.Companion.m520getERROR_OUTPUT_FAILEDU7r42EA());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: onOutputResult-DvZWqE8, reason: not valid java name */
    public final void m953onOutputResultDvZWqE8(long j, Object obj) {
        OutputResult<T> outputResultM964boximpl;
        List<StartedOutput<T>> listRemoveOutputsOlderThan;
        T next;
        synchronized (this.lock) {
            try {
                if (this.closed || this.outputMatcher.fuzzyEqual(this.lastFailedCameraOutputNumber, j)) {
                    outputResultM964boximpl = OutputResult.m964boximpl(obj);
                } else {
                    Iterator<T> it = this.startedOutputs.iterator();
                    do {
                        if (!it.hasNext()) {
                            next = (T) null;
                            break;
                        }
                        next = it.next();
                    } while (!this.outputMatcher.fuzzyEqual(((StartedOutput) next).getCameraOutputNumber(), j));
                    StartedOutput<T> startedOutput = next;
                    if (startedOutput != null) {
                        listRemoveOutputsOlderThan = removeOutputsOlderThan(startedOutput);
                        startedOutput.m956completeWithDvZWqE8(j, obj);
                        this.startedOutputs.remove(startedOutput);
                        outputResultM964boximpl = null;
                    } else {
                        this.availableOutputs.put(Long.valueOf(j), OutputResult.m964boximpl(obj));
                        if (this.availableOutputs.size() > this.maximumCachedOutputs) {
                            outputResultM964boximpl = this.availableOutputs.remove(Long.valueOf(((Number) qn1.S(this.availableOutputs.keySet())).longValue()));
                        } else {
                            outputResultM964boximpl = null;
                            listRemoveOutputsOlderThan = null;
                        }
                    }
                    j59 j59Var = j59.a;
                }
                listRemoveOutputsOlderThan = null;
                j59 j59Var2 = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        OutputResult<T> outputResult = outputResultM964boximpl;
        if (outputResult != null) {
            Object objM974unboximpl = outputResult.m974unboximpl();
            Object obj2 = OutputResult.m968getAvailableimpl(objM974unboximpl) ? objM974unboximpl : null;
            if (obj2 != null) {
                this.outputFinalizer.finalize((T) obj2);
            }
        }
        if (listRemoveOutputsOlderThan != null) {
            Iterator<T> it2 = listRemoveOutputsOlderThan.iterator();
            while (it2.hasNext()) {
                ((StartedOutput) it2.next()).m957completeWithFailuretXNfJfc(OutputStatus.Companion.m521getERROR_OUTPUT_MISSINGU7r42EA());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:110:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x015f  */
    /* JADX WARN: Code duplicated, block: B:74:0x016b A[LOOP:2: B:72:0x0165->B:74:0x016b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:77:0x0181  */
    /* JADX WARN: Code duplicated, block: B:80:0x018c  */
    /* JADX WARN: Code duplicated, block: B:82:0x018f  */
    /* JADX WARN: Code duplicated, block: B:84:0x0196 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x0198  */
    /* JADX WARN: Code duplicated, block: B:87:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:89:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:90:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:92:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:94:0x01d3  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /* JADX INFO: renamed from: onOutputStarted-qGubWw0, reason: not valid java name */
    public final void m954onOutputStartedqGubWw0(long j, long j2, long j3, OutputListener<T> outputListener) {
        T next;
        OutputDistributor<T> outputDistributor;
        T next2;
        Long l;
        List<StartedOutput<T>> listRemoveOutputsOlderThan;
        boolean z;
        OutputResult<T> outputResultRemove;
        OutputResult outputResult;
        OutputResult<T> outputResult2;
        Object objM965constructorimpl;
        long jLongValue;
        Object objM974unboximpl;
        Iterator<T> it;
        T next3;
        outputListener.getClass();
        r07 r07Var = new r07();
        synchronized (this.lock) {
            try {
                Iterator<T> it2 = this.startedOutputs.iterator();
                do {
                    if (!it2.hasNext()) {
                        next = (T) null;
                        break;
                    }
                    next = it2.next();
                } while (!FrameNumber.m466equalsimpl0(((StartedOutput) next).m961getCameraFrameNumberUgla2oM(), j));
                StartedOutput startedOutput = next;
                if (startedOutput != null) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "onOutputStarted was invoked multiple times with a previously started output!onOutputStarted with " + ((Object) FrameNumber.m468toStringimpl(j)) + ", " + ((Object) CameraTimestamp.m398toStringimpl(j2)) + ", " + j3 + ". Previously started output: " + startedOutput + ". Ignoring.");
                    }
                    return;
                }
                boolean z2 = this.closed;
                long j4 = this.cameraOutputSequenceNumbers;
                this.cameraOutputSequenceNumbers = 1 + j4;
                if (!z2 && this.lastFailedFrameNumber != j && this.lastFailedCameraOutputNumber != j3) {
                    boolean z3 = j < this.newestFrameNumber;
                    if (!z3) {
                        this.newestFrameNumber = j;
                    }
                    boolean z4 = j3 < this.newestCameraOutputNumber;
                    if (!z4) {
                        this.newestCameraOutputNumber = j3;
                    }
                    boolean z5 = z3 || z4;
                    Iterator<T> it3 = this.availableOutputs.keySet().iterator();
                    do {
                        if (!it3.hasNext()) {
                            next3 = (T) null;
                            break;
                        }
                        next3 = it3.next();
                    } while (!this.outputMatcher.fuzzyEqual(j3, ((Number) next3).longValue()));
                    Long l2 = next3;
                    if (l2 != null) {
                        outputResultRemove = this.availableOutputs.remove(l2);
                        listRemoveOutputsOlderThan = removeOutputsOlderThan(z5, j4, j3);
                        outputDistributor = this;
                        l = l2;
                        z2 = z2;
                        z = true;
                    } else {
                        outputDistributor = this;
                        List<StartedOutput<T>> list = outputDistributor.startedOutputs;
                        StartedOutput<T> startedOutput2 = new StartedOutput<>(z5, j, j2, j4, j3, outputListener, null);
                        j4 = j4;
                        list.add(startedOutput2);
                        z = false;
                        l = null;
                        listRemoveOutputsOlderThan = null;
                    }
                    j59 j59Var = j59.a;
                    if (listRemoveOutputsOlderThan != null) {
                        it = listRemoveOutputsOlderThan.iterator();
                        while (it.hasNext()) {
                            ((StartedOutput) it.next()).m957completeWithFailuretXNfJfc(OutputStatus.Companion.m521getERROR_OUTPUT_MISSINGU7r42EA());
                        }
                    }
                    outputResult = (OutputResult) r07Var.b;
                    if (outputResult != null) {
                        objM974unboximpl = outputResult.m974unboximpl();
                        if (!OutputResult.m968getAvailableimpl(objM974unboximpl)) {
                            objM974unboximpl = null;
                        }
                        if (objM974unboximpl != null) {
                            outputDistributor.outputFinalizer.finalize((T) objM974unboximpl);
                        }
                    }
                    if (z) {
                        if (z2) {
                            OutputResult.Companion companion = OutputResult.Companion;
                            objM965constructorimpl = OutputResult.m965constructorimpl(OutputStatus.m510boximpl(OutputStatus.Companion.m518getERROR_OUTPUT_ABORTEDU7r42EA()));
                        } else {
                            outputResult2 = outputResultRemove;
                            if (outputResult2 != null) {
                                objM965constructorimpl = outputResult2.m974unboximpl();
                            } else {
                                OutputResult.Companion companion2 = OutputResult.Companion;
                                objM965constructorimpl = OutputResult.m965constructorimpl(OutputStatus.m510boximpl(OutputStatus.Companion.m520getERROR_OUTPUT_FAILEDU7r42EA()));
                            }
                        }
                        Object obj = objM965constructorimpl;
                        if (l != null) {
                            jLongValue = l.longValue();
                        } else {
                            jLongValue = -1;
                        }
                        outputListener.mo943onOutputComplete3ejhThk(j, j2, j4, jLongValue, obj);
                    }
                }
                outputDistributor = this;
                Iterator<T> it4 = outputDistributor.availableOutputs.keySet().iterator();
                do {
                    if (!it4.hasNext()) {
                        next2 = (T) null;
                        break;
                    }
                    next2 = it4.next();
                } while (!outputDistributor.outputMatcher.fuzzyEqual(j3, ((Number) next2).longValue()));
                Long l3 = next2;
                r07Var.b = l3 != null ? (T) outputDistributor.availableOutputs.remove(l3) : null;
                l = l3;
                listRemoveOutputsOlderThan = null;
                z = true;
                outputResultRemove = null;
                j59 j59Var2 = j59.a;
                if (listRemoveOutputsOlderThan != null) {
                    it = listRemoveOutputsOlderThan.iterator();
                    while (it.hasNext()) {
                        ((StartedOutput) it.next()).m957completeWithFailuretXNfJfc(OutputStatus.Companion.m521getERROR_OUTPUT_MISSINGU7r42EA());
                    }
                }
                outputResult = (OutputResult) r07Var.b;
                if (outputResult != null) {
                    objM974unboximpl = outputResult.m974unboximpl();
                    if (!OutputResult.m968getAvailableimpl(objM974unboximpl)) {
                        objM974unboximpl = null;
                    }
                    if (objM974unboximpl != null) {
                        outputDistributor.outputFinalizer.finalize((T) objM974unboximpl);
                    }
                }
                if (z) {
                    if (z2) {
                        OutputResult.Companion companion3 = OutputResult.Companion;
                        objM965constructorimpl = OutputResult.m965constructorimpl(OutputStatus.m510boximpl(OutputStatus.Companion.m518getERROR_OUTPUT_ABORTEDU7r42EA()));
                    } else {
                        outputResult2 = outputResultRemove;
                        if (outputResult2 != null) {
                            objM965constructorimpl = outputResult2.m974unboximpl();
                        } else {
                            OutputResult.Companion companion4 = OutputResult.Companion;
                            objM965constructorimpl = OutputResult.m965constructorimpl(OutputStatus.m510boximpl(OutputStatus.Companion.m520getERROR_OUTPUT_FAILEDU7r42EA()));
                        }
                    }
                    Object obj2 = objM965constructorimpl;
                    if (l != null) {
                        jLongValue = l.longValue();
                    } else {
                        jLongValue = -1;
                    }
                    outputListener.mo943onOutputComplete3ejhThk(j, j2, j4, jLongValue, obj2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final class StartedOutput<T> {
        private final long cameraFrameNumber;
        private final long cameraOutputNumber;
        private final long cameraOutputSequence;
        private final long cameraTimestamp;
        private final ht complete;
        private final boolean isOutOfOrder;
        private final OutputListener<T> outputListener;

        private StartedOutput(boolean z, long j, long j2, long j3, long j4, OutputListener<T> outputListener) {
            outputListener.getClass();
            this.isOutOfOrder = z;
            this.cameraFrameNumber = j;
            this.cameraTimestamp = j2;
            this.cameraOutputSequence = j3;
            this.cameraOutputNumber = j4;
            this.outputListener = outputListener;
            this.complete = kt.a(false);
        }

        private final OutputListener<T> component6() {
            return this.outputListener;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: copy-HscHeSQ$default, reason: not valid java name */
        public static /* synthetic */ StartedOutput m955copyHscHeSQ$default(StartedOutput startedOutput, boolean z, long j, long j2, long j3, long j4, OutputListener outputListener, int i, Object obj) {
            if ((i & 1) != 0) {
                z = startedOutput.isOutOfOrder;
            }
            if ((i & 2) != 0) {
                j = startedOutput.cameraFrameNumber;
            }
            if ((i & 4) != 0) {
                j2 = startedOutput.cameraTimestamp;
            }
            if ((i & 8) != 0) {
                j3 = startedOutput.cameraOutputSequence;
            }
            if ((i & 16) != 0) {
                j4 = startedOutput.cameraOutputNumber;
            }
            if ((i & 32) != 0) {
                outputListener = startedOutput.outputListener;
            }
            OutputListener outputListener2 = outputListener;
            long j5 = j4;
            long j6 = j3;
            return startedOutput.m960copyHscHeSQ(z, j, j2, j6, j5, outputListener2);
        }

        /* JADX INFO: renamed from: completeWith-DvZWqE8, reason: not valid java name */
        public final void m956completeWithDvZWqE8(long j, Object obj) {
            if (this.complete.a()) {
                this.outputListener.mo943onOutputComplete3ejhThk(this.cameraFrameNumber, this.cameraTimestamp, this.cameraOutputSequence, j, obj);
                return;
            }
            StringBuilder sb = new StringBuilder("Output ");
            sb.append(this.cameraOutputSequence);
            sb.append(" at ");
            sb.append((Object) FrameNumber.m468toStringimpl(this.cameraFrameNumber));
            sb.append(" for ");
            j2.d(k2.b(j, " was completed multiple times!", sb));
        }

        /* JADX INFO: renamed from: completeWithFailure-tXNfJfc, reason: not valid java name */
        public final void m957completeWithFailuretXNfJfc(int i) {
            OutputResult.Companion companion = OutputResult.Companion;
            m956completeWithDvZWqE8(-1L, OutputResult.m965constructorimpl(OutputStatus.m510boximpl(i)));
        }

        public final boolean component1() {
            return this.isOutOfOrder;
        }

        /* JADX INFO: renamed from: component2-Ugla2oM, reason: not valid java name */
        public final long m958component2Ugla2oM() {
            return this.cameraFrameNumber;
        }

        /* JADX INFO: renamed from: component3-LS1Wq50, reason: not valid java name */
        public final long m959component3LS1Wq50() {
            return this.cameraTimestamp;
        }

        public final long component4() {
            return this.cameraOutputSequence;
        }

        public final long component5() {
            return this.cameraOutputNumber;
        }

        /* JADX INFO: renamed from: copy-HscHeSQ, reason: not valid java name */
        public final StartedOutput<T> m960copyHscHeSQ(boolean z, long j, long j2, long j3, long j4, OutputListener<T> outputListener) {
            outputListener.getClass();
            return new StartedOutput<>(z, j, j2, j3, j4, outputListener, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StartedOutput)) {
                return false;
            }
            StartedOutput startedOutput = (StartedOutput) obj;
            return this.isOutOfOrder == startedOutput.isOutOfOrder && FrameNumber.m466equalsimpl0(this.cameraFrameNumber, startedOutput.cameraFrameNumber) && CameraTimestamp.m396equalsimpl0(this.cameraTimestamp, startedOutput.cameraTimestamp) && this.cameraOutputSequence == startedOutput.cameraOutputSequence && this.cameraOutputNumber == startedOutput.cameraOutputNumber && aa4.e(this.outputListener, startedOutput.outputListener);
        }

        /* JADX INFO: renamed from: getCameraFrameNumber-Ugla2oM, reason: not valid java name */
        public final long m961getCameraFrameNumberUgla2oM() {
            return this.cameraFrameNumber;
        }

        public final long getCameraOutputNumber() {
            return this.cameraOutputNumber;
        }

        public final long getCameraOutputSequence() {
            return this.cameraOutputSequence;
        }

        /* JADX INFO: renamed from: getCameraTimestamp-LS1Wq50, reason: not valid java name */
        public final long m962getCameraTimestampLS1Wq50() {
            return this.cameraTimestamp;
        }

        public int hashCode() {
            return this.outputListener.hashCode() + vg.b(vg.b((CameraTimestamp.m397hashCodeimpl(this.cameraTimestamp) + ((FrameNumber.m467hashCodeimpl(this.cameraFrameNumber) + (Boolean.hashCode(this.isOutOfOrder) * 31)) * 31)) * 31, 31, this.cameraOutputSequence), 31, this.cameraOutputNumber);
        }

        public final boolean isOutOfOrder() {
            return this.isOutOfOrder;
        }

        public String toString() {
            return "StartedOutput(isOutOfOrder=" + this.isOutOfOrder + ", cameraFrameNumber=" + ((Object) FrameNumber.m468toStringimpl(this.cameraFrameNumber)) + ", cameraTimestamp=" + ((Object) CameraTimestamp.m398toStringimpl(this.cameraTimestamp)) + ", cameraOutputSequence=" + this.cameraOutputSequence + ", cameraOutputNumber=" + this.cameraOutputNumber + ", outputListener=" + this.outputListener + ')';
        }

        public /* synthetic */ StartedOutput(boolean z, long j, long j2, long j3, long j4, OutputListener outputListener, jh2 jh2Var) {
            this(z, j, j2, j3, j4, outputListener);
        }
    }

    public /* synthetic */ OutputDistributor(int i, Finalizer finalizer, OutputMatcher outputMatcher, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 3 : i, finalizer, outputMatcher);
    }

    private final List<StartedOutput<T>> removeOutputsOlderThan(StartedOutput<T> startedOutput) {
        return removeOutputsOlderThan(startedOutput.isOutOfOrder(), startedOutput.getCameraOutputSequence(), startedOutput.getCameraOutputNumber());
    }
}
