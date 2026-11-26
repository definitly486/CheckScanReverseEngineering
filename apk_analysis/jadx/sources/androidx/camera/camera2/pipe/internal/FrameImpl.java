package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.Frame;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStatus;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.media.OutputImage;
import androidx.camera.camera2.pipe.media.SharedOutputImage;
import defpackage.a32;
import defpackage.e02;
import defpackage.ht;
import defpackage.ir7;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kt;
import defpackage.kx2;
import defpackage.l1;
import defpackage.qn1;
import defpackage.wg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class FrameImpl implements Frame {
    private final ht closed;
    private final FrameState frameState;
    private final Set<StreamId> imageStreams;
    private final Set<OutputId> outputStreams;

    public FrameImpl(FrameState frameState, Set<StreamId> set) {
        frameState.getClass();
        set.getClass();
        this.frameState = frameState;
        this.imageStreams = set;
        List<FrameState.ImageOutput> imageOutputs = frameState.getImageOutputs();
        ArrayList arrayList = new ArrayList(kn1.q(imageOutputs, 10));
        Iterator<T> it = imageOutputs.iterator();
        while (it.hasNext()) {
            arrayList.add(OutputId.m503boximpl(((FrameState.ImageOutput) it.next()).m945getOutputId4LaLFng()));
        }
        this.outputStreams = qn1.y0(arrayList);
        this.closed = kt.a(false);
    }

    private final boolean release() {
        if (!this.closed.a()) {
            return false;
        }
        this.frameState.getFrameInfoOutput().decrement();
        int size = this.frameState.getImageOutputs().size();
        for (int i = 0; i < size; i++) {
            FrameState.ImageOutput imageOutput = this.frameState.getImageOutputs().get(i);
            if (getImageStreams().contains(StreamId.m723boximpl(imageOutput.m946getStreamIdptHMqGs()))) {
                imageOutput.decrement();
            }
        }
        return true;
    }

    @Override // androidx.camera.camera2.pipe.Frame
    public void addListener(Frame.Listener listener) {
        listener.getClass();
        if (this.closed.b()) {
            wg.c(this, "Cannot add Frame.Listener, ", " is closed!");
        } else {
            this.frameState.addListener(listener);
        }
    }

    @Override // androidx.camera.camera2.pipe.Frame
    public Object awaitFrameInfo(e02<? super FrameInfo> e02Var) {
        if (this.closed.b()) {
            return null;
        }
        return this.frameState.getFrameInfoOutput().await(e02Var);
    }

    @Override // androidx.camera.camera2.pipe.Frame
    /* JADX INFO: renamed from: awaitImage-A9nWXxg */
    public Object mo433awaitImageA9nWXxg(int i, e02<? super OutputImage> e02Var) {
        Object next;
        if (this.closed.b() || !this.outputStreams.contains(OutputId.m503boximpl(i))) {
            return null;
        }
        Iterator<T> it = this.frameState.getImageOutputs().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!OutputId.m506equalsimpl0(((FrameState.ImageOutput) next).m945getOutputId4LaLFng(), i));
        FrameState.ImageOutput imageOutput = (FrameState.ImageOutput) next;
        if (imageOutput == null) {
            return null;
        }
        Object objAwait = imageOutput.await(e02Var);
        return objAwait == a32.COROUTINE_SUSPENDED ? objAwait : (SharedOutputImage) objAwait;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0083  */
    /* JADX WARN: Code duplicated, block: B:31:0x0093 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x0098 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0091 -> B:32:0x0094). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // androidx.camera.camera2.pipe.Frame
    /* JADX INFO: renamed from: awaitImage-NYG5g8E */
    public java.lang.Object mo434awaitImageNYG5g8E(int r7, defpackage.e02<? super androidx.camera.camera2.pipe.media.OutputImage> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof androidx.camera.camera2.pipe.internal.FrameImpl$awaitImage$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.camera.camera2.pipe.internal.FrameImpl$awaitImage$1 r0 = (androidx.camera.camera2.pipe.internal.FrameImpl$awaitImage$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.internal.FrameImpl$awaitImage$1 r0 = new androidx.camera.camera2.pipe.internal.FrameImpl$awaitImage$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2c
            java.lang.Object r6 = r0.L$0
            java.util.Iterator r6 = (java.util.Iterator) r6
            defpackage.r57.b(r8)
            goto L94
        L2c:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            return r4
        L32:
            defpackage.r57.b(r8)
            ht r8 = r6.closed
            boolean r8 = r8.b()
            if (r8 == 0) goto L3e
            return r4
        L3e:
            java.util.Set r8 = r6.getImageStreams()
            androidx.camera.camera2.pipe.StreamId r2 = androidx.camera.camera2.pipe.StreamId.m723boximpl(r7)
            boolean r8 = r8.contains(r2)
            if (r8 != 0) goto L4d
            return r4
        L4d:
            androidx.camera.camera2.pipe.internal.FrameState r6 = r6.frameState
            java.util.List r6 = r6.getImageOutputs()
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            java.util.Iterator r6 = r6.iterator()
        L5e:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L79
            java.lang.Object r2 = r6.next()
            r5 = r2
            androidx.camera.camera2.pipe.internal.FrameState$ImageOutput r5 = (androidx.camera.camera2.pipe.internal.FrameState.ImageOutput) r5
            int r5 = r5.m946getStreamIdptHMqGs()
            boolean r5 = androidx.camera.camera2.pipe.StreamId.m726equalsimpl0(r5, r7)
            if (r5 == 0) goto L5e
            r8.add(r2)
            goto L5e
        L79:
            java.util.Iterator r6 = r8.iterator()
        L7d:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L99
            java.lang.Object r7 = r6.next()
            androidx.camera.camera2.pipe.internal.FrameState$ImageOutput r7 = (androidx.camera.camera2.pipe.internal.FrameState.ImageOutput) r7
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r8 = r7.await(r0)
            if (r8 != r1) goto L94
            return r1
        L94:
            androidx.camera.camera2.pipe.media.SharedOutputImage r8 = (androidx.camera.camera2.pipe.media.SharedOutputImage) r8
            if (r8 == 0) goto L7d
            return r8
        L99:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.internal.FrameImpl.mo434awaitImageNYG5g8E(int, e02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0092  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a2 -> B:32:0x00a5). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // androidx.camera.camera2.pipe.Frame
    /* JADX INFO: renamed from: awaitImages-NYG5g8E */
    public java.lang.Object mo435awaitImagesNYG5g8E(int r7, defpackage.e02<? super java.util.List<? extends androidx.camera.camera2.pipe.media.OutputImage>> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof androidx.camera.camera2.pipe.internal.FrameImpl$awaitImages$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.camera.camera2.pipe.internal.FrameImpl$awaitImages$1 r0 = (androidx.camera.camera2.pipe.internal.FrameImpl$awaitImages$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.internal.FrameImpl$awaitImages$1 r0 = new androidx.camera.camera2.pipe.internal.FrameImpl$awaitImages$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L30
            java.lang.Object r6 = r0.L$1
            java.util.Iterator r6 = (java.util.Iterator) r6
            java.lang.Object r7 = r0.L$0
            java.util.Collection r7 = (java.util.Collection) r7
            defpackage.r57.b(r8)
            goto La5
        L30:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            r6 = 0
            return r6
        L37:
            defpackage.r57.b(r8)
            ht r8 = r6.closed
            boolean r8 = r8.b()
            kx2 r2 = defpackage.kx2.b
            if (r8 == 0) goto L45
            return r2
        L45:
            java.util.Set r8 = r6.getImageStreams()
            androidx.camera.camera2.pipe.StreamId r4 = androidx.camera.camera2.pipe.StreamId.m723boximpl(r7)
            boolean r8 = r8.contains(r4)
            if (r8 != 0) goto L54
            return r2
        L54:
            androidx.camera.camera2.pipe.internal.FrameState r6 = r6.frameState
            java.util.List r6 = r6.getImageOutputs()
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            java.util.Iterator r6 = r6.iterator()
        L65:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L80
            java.lang.Object r2 = r6.next()
            r4 = r2
            androidx.camera.camera2.pipe.internal.FrameState$ImageOutput r4 = (androidx.camera.camera2.pipe.internal.FrameState.ImageOutput) r4
            int r4 = r4.m946getStreamIdptHMqGs()
            boolean r4 = androidx.camera.camera2.pipe.StreamId.m726equalsimpl0(r4, r7)
            if (r4 == 0) goto L65
            r8.add(r2)
            goto L65
        L80:
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            java.util.Iterator r7 = r8.iterator()
            r5 = r7
            r7 = r6
            r6 = r5
        L8c:
            boolean r8 = r6.hasNext()
            if (r8 == 0) goto Lad
            java.lang.Object r8 = r6.next()
            androidx.camera.camera2.pipe.internal.FrameState$ImageOutput r8 = (androidx.camera.camera2.pipe.internal.FrameState.ImageOutput) r8
            r0.L$0 = r7
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r8 = r8.await(r0)
            if (r8 != r1) goto La5
            return r1
        La5:
            androidx.camera.camera2.pipe.media.SharedOutputImage r8 = (androidx.camera.camera2.pipe.media.SharedOutputImage) r8
            if (r8 == 0) goto L8c
            r7.add(r8)
            goto L8c
        Lad:
            java.util.List r7 = (java.util.List) r7
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.internal.FrameImpl.mo435awaitImagesNYG5g8E(int, e02):java.lang.Object");
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        release();
    }

    public final void finalize() {
        if (release() && Log.INSTANCE.getERROR_LOGGABLE()) {
            android.util.Log.e(Log.TAG, "Failed to close " + this + "! This indicates a memory leak and could cause the camera to stall, or images to be lost.");
        }
    }

    @Override // androidx.camera.camera2.pipe.FrameReference
    /* JADX INFO: renamed from: getFrameId-OMxQvVY */
    public long mo471getFrameIdOMxQvVY() {
        return this.frameState.m937getFrameIdOMxQvVY();
    }

    @Override // androidx.camera.camera2.pipe.Frame
    public FrameInfo getFrameInfo() {
        if (this.closed.b()) {
            return null;
        }
        return this.frameState.getFrameInfoOutput().outputOrNull();
    }

    @Override // androidx.camera.camera2.pipe.FrameReference
    /* JADX INFO: renamed from: getFrameInfoStatus-U7r42EA */
    public int mo472getFrameInfoStatusU7r42EA() {
        return this.closed.b() ? OutputStatus.Companion.m523getUNAVAILABLEU7r42EA() : this.frameState.getFrameInfoOutput().m944getStatusU7r42EA();
    }

    @Override // androidx.camera.camera2.pipe.FrameReference
    /* JADX INFO: renamed from: getFrameNumber-Ugla2oM */
    public long mo473getFrameNumberUgla2oM() {
        return this.frameState.m938getFrameNumberUgla2oM();
    }

    @Override // androidx.camera.camera2.pipe.FrameReference
    /* JADX INFO: renamed from: getFrameTimestamp-LS1Wq50 */
    public long mo474getFrameTimestampLS1Wq50() {
        return this.frameState.m939getFrameTimestampLS1Wq50();
    }

    @Override // androidx.camera.camera2.pipe.Frame
    /* JADX INFO: renamed from: getImage-aKI5c8E */
    public OutputImage mo436getImageaKI5c8E(int i) {
        if (this.closed.b() || !getImageStreams().contains(StreamId.m723boximpl(i))) {
            return null;
        }
        List<FrameState.ImageOutput> imageOutputs = this.frameState.getImageOutputs();
        ArrayList arrayList = new ArrayList();
        for (Object obj : imageOutputs) {
            if (StreamId.m726equalsimpl0(((FrameState.ImageOutput) obj).m946getStreamIdptHMqGs(), i)) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            SharedOutputImage sharedOutputImageOutputOrNull = ((FrameState.ImageOutput) it.next()).outputOrNull();
            if (sharedOutputImageOutputOrNull != null) {
                return sharedOutputImageOutputOrNull;
            }
        }
        return null;
    }

    @Override // androidx.camera.camera2.pipe.Frame
    /* JADX INFO: renamed from: getImage-iYJqvbA */
    public OutputImage mo437getImageiYJqvbA(int i) {
        Object next;
        if (this.closed.b() || !this.outputStreams.contains(OutputId.m503boximpl(i))) {
            return null;
        }
        Iterator<T> it = this.frameState.getImageOutputs().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!OutputId.m506equalsimpl0(((FrameState.ImageOutput) next).m945getOutputId4LaLFng(), i));
        FrameState.ImageOutput imageOutput = (FrameState.ImageOutput) next;
        if (imageOutput != null) {
            return imageOutput.outputOrNull();
        }
        return null;
    }

    @Override // androidx.camera.camera2.pipe.FrameReference
    public Set<StreamId> getImageStreams() {
        return this.imageStreams;
    }

    @Override // androidx.camera.camera2.pipe.Frame
    /* JADX INFO: renamed from: getImages-aKI5c8E */
    public List<OutputImage> mo438getImagesaKI5c8E(int i) {
        boolean zB = this.closed.b();
        kx2 kx2Var = kx2.b;
        if (zB || !getImageStreams().contains(StreamId.m723boximpl(i))) {
            return kx2Var;
        }
        List<FrameState.ImageOutput> imageOutputs = this.frameState.getImageOutputs();
        ArrayList arrayList = new ArrayList();
        for (Object obj : imageOutputs) {
            if (StreamId.m726equalsimpl0(((FrameState.ImageOutput) obj).m946getStreamIdptHMqGs(), i)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            SharedOutputImage sharedOutputImageOutputOrNull = ((FrameState.ImageOutput) it.next()).outputOrNull();
            if (sharedOutputImageOutputOrNull != null) {
                arrayList2.add(sharedOutputImageOutputOrNull);
            }
        }
        return arrayList2;
    }

    @Override // androidx.camera.camera2.pipe.FrameReference
    public RequestMetadata getRequestMetadata() {
        return this.frameState.getRequestMetadata();
    }

    @Override // androidx.camera.camera2.pipe.FrameReference
    /* JADX INFO: renamed from: imageStatus-BWjvHWQ */
    public int mo475imageStatusBWjvHWQ(int i) {
        Object next;
        if (this.closed.b() || !this.outputStreams.contains(OutputId.m503boximpl(i))) {
            return OutputStatus.Companion.m523getUNAVAILABLEU7r42EA();
        }
        Iterator<T> it = this.frameState.getImageOutputs().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!OutputId.m506equalsimpl0(((FrameState.ImageOutput) next).m945getOutputId4LaLFng(), i));
        FrameState.ImageOutput imageOutput = (FrameState.ImageOutput) next;
        return imageOutput != null ? imageOutput.m944getStatusU7r42EA() : OutputStatus.Companion.m523getUNAVAILABLEU7r42EA();
    }

    @Override // androidx.camera.camera2.pipe.FrameReference
    /* JADX INFO: renamed from: imageStatus-Oo2lJfM */
    public int mo476imageStatusOo2lJfM(int i) {
        if (this.closed.b() || !getImageStreams().contains(StreamId.m723boximpl(i))) {
            return OutputStatus.Companion.m523getUNAVAILABLEU7r42EA();
        }
        List<FrameState.ImageOutput> imageOutputs = this.frameState.getImageOutputs();
        ArrayList arrayList = new ArrayList();
        for (Object obj : imageOutputs) {
            if (StreamId.m726equalsimpl0(((FrameState.ImageOutput) obj).m946getStreamIdptHMqGs(), i)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(OutputStatus.m510boximpl(((FrameState.ImageOutput) it.next()).m944getStatusU7r42EA()));
        }
        if (arrayList2.isEmpty()) {
            wg.c(StreamId.m728toStringimpl(i), "No matching outputs found with ", ". This is unexpected.");
            return 0;
        }
        if (arrayList2.size() == 1) {
            return ((OutputStatus) arrayList2.get(0)).m516unboximpl();
        }
        if (!arrayList2.isEmpty()) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                int iM516unboximpl = ((OutputStatus) it2.next()).m516unboximpl();
                OutputStatus.Companion companion = OutputStatus.Companion;
                if (OutputStatus.m513equalsimpl0(iM516unboximpl, companion.m522getPENDINGU7r42EA())) {
                    return companion.m522getPENDINGU7r42EA();
                }
            }
        }
        if (!arrayList2.isEmpty()) {
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                int iM516unboximpl2 = ((OutputStatus) it3.next()).m516unboximpl();
                OutputStatus.Companion companion2 = OutputStatus.Companion;
                if (OutputStatus.m513equalsimpl0(iM516unboximpl2, companion2.m517getAVAILABLEU7r42EA())) {
                    return companion2.m517getAVAILABLEU7r42EA();
                }
            }
        }
        if (!arrayList2.isEmpty()) {
            Iterator it4 = arrayList2.iterator();
            while (it4.hasNext()) {
                if (!OutputStatus.m513equalsimpl0(((OutputStatus) it4.next()).m516unboximpl(), ((OutputStatus) qn1.T(arrayList2)).m516unboximpl())) {
                    return OutputStatus.Companion.m523getUNAVAILABLEU7r42EA();
                }
            }
        }
        return ((OutputStatus) qn1.T(arrayList2)).m516unboximpl();
    }

    public String toString() {
        return this.frameState.toString();
    }

    @Override // androidx.camera.camera2.pipe.FrameReference
    public FrameImpl tryAcquire(Set<StreamId> set) {
        boolean z;
        if (this.closed.b() || !this.frameState.getFrameInfoOutput().increment()) {
            return null;
        }
        ir7 ir7Var = new ir7();
        Iterator<FrameState.ImageOutput> it = this.frameState.getImageOutputs().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = true;
                break;
            }
            FrameState.ImageOutput next = it.next();
            int iM946getStreamIdptHMqGs = next.m946getStreamIdptHMqGs();
            if (getImageStreams().contains(StreamId.m723boximpl(iM946getStreamIdptHMqGs)) && (set == null || set.contains(StreamId.m723boximpl(iM946getStreamIdptHMqGs)))) {
                if (!next.increment()) {
                    z = false;
                    break;
                }
                ir7Var.add(StreamId.m723boximpl(iM946getStreamIdptHMqGs));
            }
        }
        ir7 ir7VarD = l1.d(ir7Var);
        if (z) {
            return new FrameImpl(this.frameState, ir7VarD);
        }
        this.frameState.getFrameInfoOutput().decrement();
        for (FrameState.ImageOutput imageOutput : this.frameState.getImageOutputs()) {
            if (ir7VarD.b.containsKey(StreamId.m723boximpl(imageOutput.m946getStreamIdptHMqGs()))) {
                imageOutput.decrement();
            }
        }
        return null;
    }

    public /* synthetic */ FrameImpl(FrameState frameState, Set set, int i, jh2 jh2Var) {
        if ((i & 2) != 0) {
            List<FrameState.ImageOutput> imageOutputs = frameState.getImageOutputs();
            ArrayList arrayList = new ArrayList(kn1.q(imageOutputs, 10));
            Iterator<T> it = imageOutputs.iterator();
            while (it.hasNext()) {
                arrayList.add(StreamId.m723boximpl(((FrameState.ImageOutput) it.next()).m946getStreamIdptHMqGs()));
            }
            set = qn1.y0(arrayList);
        }
        this(frameState, set);
    }

    @Override // androidx.camera.camera2.pipe.FrameReference
    public /* bridge */ /* synthetic */ Frame tryAcquire(Set set) {
        return tryAcquire((Set<StreamId>) set);
    }
}
