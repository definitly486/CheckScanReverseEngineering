package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.core.AutoCloseables;
import defpackage.a32;
import defpackage.ah;
import defpackage.aq5;
import defpackage.av0;
import defpackage.bj;
import defpackage.bm3;
import defpackage.c32;
import defpackage.dm3;
import defpackage.e02;
import defpackage.fm3;
import defpackage.il1;
import defpackage.j59;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.p07;
import defpackage.r57;
import defpackage.rk3;
import defpackage.sj0;
import defpackage.y22;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface FrameCapture extends AutoCloseable {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        private final Object useEachFrame$$forInline(List<? extends FrameCapture> list, nl3<? super Frame, j59> nl3Var, e02<? super j59> e02Var) {
            AutoCloseables autoCloseables = AutoCloseables.INSTANCE;
            p07 p07Var = new p07();
            while (p07Var.b < list.size()) {
                try {
                    FrameCapture frameCapture = list.get(p07Var.b);
                    try {
                        p07Var.b++;
                        FrameCapture frameCapture2 = frameCapture;
                        AutoCloseable autoCloseable = (AutoCloseable) frameCapture2.awaitFrame(null);
                        try {
                            bj.e(frameCapture2);
                            nl3Var.invoke((Frame) autoCloseable);
                            j59 j59Var = j59.a;
                            aq5.c(autoCloseable, null);
                            aq5.c(frameCapture, null);
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                aq5.c(autoCloseable, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            aq5.c(frameCapture, th3);
                            throw th4;
                        }
                    }
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        while (p07Var.b < list.size()) {
                            try {
                                int i = p07Var.b;
                                p07Var.b = i + 1;
                                rk3.d(list.get(i));
                                j59 j59Var2 = j59.a;
                            } catch (Throwable th7) {
                                sj0.c(th5, th7);
                                j59 j59Var3 = j59.a;
                            }
                        }
                        throw th6;
                    }
                }
            }
            while (p07Var.b < list.size()) {
                int i2 = p07Var.b;
                p07Var.b = i2 + 1;
                rk3.d(list.get(i2));
                j59 j59Var4 = j59.a;
            }
            return j59.a;
        }

        private final <R> Object useEachFrameAsync$$forInline(List<? extends FrameCapture> list, y22 y22Var, dm3<? super y22, ? super Frame, ? super e02<? super R>, ? extends Object> dm3Var, e02<? super List<? extends mk2<? extends R>>> e02Var) {
            AutoCloseables autoCloseables = AutoCloseables.INSTANCE;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(av0.a(y22Var, null, c32.UNDISPATCHED, new FrameCapture$Companion$useEachFrameAsync$$inlined$useEachFrameIndexedAsync$1(list.get(i), i, null, dm3Var), 1));
            }
            return arrayList;
        }

        private final Object useEachFrameIndexed$$forInline(List<? extends FrameCapture> list, bm3<? super Integer, ? super Frame, j59> bm3Var, e02<? super j59> e02Var) {
            AutoCloseables autoCloseables = AutoCloseables.INSTANCE;
            p07 p07Var = new p07();
            while (p07Var.b < list.size()) {
                try {
                    FrameCapture frameCapture = list.get(p07Var.b);
                    try {
                        int i = p07Var.b;
                        p07Var.b = i + 1;
                        FrameCapture frameCapture2 = frameCapture;
                        AutoCloseable autoCloseable = (AutoCloseable) frameCapture2.awaitFrame(null);
                        try {
                            bj.e(frameCapture2);
                            bm3Var.invoke(Integer.valueOf(i), (Frame) autoCloseable);
                            j59 j59Var = j59.a;
                            aq5.c(autoCloseable, null);
                            aq5.c(frameCapture, null);
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                aq5.c(autoCloseable, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            aq5.c(frameCapture, th3);
                            throw th4;
                        }
                    }
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        while (p07Var.b < list.size()) {
                            try {
                                int i2 = p07Var.b;
                                p07Var.b = i2 + 1;
                                rk3.d(list.get(i2));
                                j59 j59Var2 = j59.a;
                            } catch (Throwable th7) {
                                sj0.c(th5, th7);
                                j59 j59Var3 = j59.a;
                            }
                        }
                        throw th6;
                    }
                }
            }
            while (p07Var.b < list.size()) {
                int i3 = p07Var.b;
                p07Var.b = i3 + 1;
                rk3.d(list.get(i3));
                j59 j59Var4 = j59.a;
            }
            return j59.a;
        }

        private final <R> Object useEachFrameIndexedAsync$$forInline(List<? extends FrameCapture> list, y22 y22Var, fm3<? super y22, ? super Integer, ? super Frame, ? super e02<? super R>, ? extends Object> fm3Var, e02<? super List<? extends mk2<? extends R>>> e02Var) {
            AutoCloseables autoCloseables = AutoCloseables.INSTANCE;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(av0.a(y22Var, null, c32.UNDISPATCHED, new FrameCapture$Companion$useEachFrameIndexedAsync$$inlined$useEachIndexedAsync$1(list.get(i), i, null, fm3Var), 1));
            }
            return arrayList;
        }

        private final <R> Object useFrame$$forInline(FrameCapture frameCapture, nl3<? super Frame, ? extends R> nl3Var, e02<? super R> e02Var) throws Exception {
            try {
                AutoCloseable autoCloseable = (AutoCloseable) frameCapture.awaitFrame(null);
                try {
                    bj.e(frameCapture);
                    R rInvoke = nl3Var.invoke((Frame) autoCloseable);
                    aq5.c(autoCloseable, null);
                    aq5.c(frameCapture, null);
                    return rInvoke;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        aq5.c(autoCloseable, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    aq5.c(frameCapture, th3);
                    throw th4;
                }
            }
        }

        public final void useEach(List<? extends FrameCapture> list, nl3<? super FrameCapture, j59> nl3Var) {
            list.getClass();
            nl3Var.getClass();
            AutoCloseables autoCloseables = AutoCloseables.INSTANCE;
            int i = 0;
            while (i < list.size()) {
                try {
                    FrameCapture frameCapture = list.get(i);
                    i++;
                    try {
                        nl3Var.invoke(frameCapture);
                        j59 j59Var = j59.a;
                        aq5.c(frameCapture, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            aq5.c(frameCapture, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        while (i < list.size()) {
                            int i2 = i + 1;
                            try {
                                rk3.d(list.get(i));
                            } catch (Throwable th5) {
                                sj0.c(th3, th5);
                            }
                            i = i2;
                        }
                        throw th4;
                    }
                }
            }
            while (i < list.size()) {
                int i3 = i + 1;
                try {
                    rk3.d(list.get(i));
                } catch (Throwable unused) {
                }
                i = i3;
            }
        }

        /* JADX WARN: Code duplicated, block: B:21:0x005d A[Catch: all -> 0x00bc, TRY_LEAVE, TryCatch #8 {, blocks: (B:19:0x0055, B:21:0x005d), top: B:81:0x0055 }] */
        /* JADX WARN: Code duplicated, block: B:24:0x007f A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:25:0x0080  */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0080 -> B:70:0x0088). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        public final java.lang.Object useEachFrame(java.util.List<? extends androidx.camera.camera2.pipe.FrameCapture> r9, defpackage.nl3<? super androidx.camera.camera2.pipe.Frame, defpackage.j59> r10, defpackage.e02<? super defpackage.j59> r11) {
            /*
                Method dump skipped, instruction units count: 249
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.FrameCapture.Companion.useEachFrame(java.util.List, nl3, e02):java.lang.Object");
        }

        public final <R> Object useEachFrameAsync(List<? extends FrameCapture> list, y22 y22Var, dm3<? super y22, ? super Frame, ? super e02<? super R>, ? extends Object> dm3Var, e02<? super List<? extends mk2<? extends R>>> e02Var) {
            AutoCloseables autoCloseables = AutoCloseables.INSTANCE;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(av0.a(y22Var, null, c32.UNDISPATCHED, new FrameCapture$Companion$useEachFrameAsync$$inlined$useEachFrameIndexedAsync$1(list.get(i), i, null, dm3Var), 1));
            }
            return arrayList;
        }

        /* JADX WARN: Code duplicated, block: B:21:0x005a A[Catch: all -> 0x00b4, TRY_LEAVE, TryCatch #2 {all -> 0x00b4, blocks: (B:19:0x0052, B:21:0x005a), top: B:65:0x0052 }] */
        /* JADX WARN: Code duplicated, block: B:24:0x0080 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:25:0x0081  */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:26:0x0087). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        public final java.lang.Object useEachFrameIndexed(java.util.List<? extends androidx.camera.camera2.pipe.FrameCapture> r10, defpackage.bm3<? super java.lang.Integer, ? super androidx.camera.camera2.pipe.Frame, defpackage.j59> r11, defpackage.e02<? super defpackage.j59> r12) {
            /*
                Method dump skipped, instruction units count: 241
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.FrameCapture.Companion.useEachFrameIndexed(java.util.List, bm3, e02):java.lang.Object");
        }

        public final <R> Object useEachFrameIndexedAsync(List<? extends FrameCapture> list, y22 y22Var, fm3<? super y22, ? super Integer, ? super Frame, ? super e02<? super R>, ? extends Object> fm3Var, e02<? super List<? extends mk2<? extends R>>> e02Var) {
            AutoCloseables autoCloseables = AutoCloseables.INSTANCE;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(av0.a(y22Var, null, c32.UNDISPATCHED, new FrameCapture$Companion$useEachFrameIndexedAsync$$inlined$useEachIndexedAsync$1(list.get(i), i, null, fm3Var), 1));
            }
            return arrayList;
        }

        public final void useEachIndexed(List<? extends FrameCapture> list, bm3<? super Integer, ? super FrameCapture, j59> bm3Var) {
            int i;
            Throwable th;
            list.getClass();
            bm3Var.getClass();
            AutoCloseables autoCloseables = AutoCloseables.INSTANCE;
            int i2 = 0;
            while (i2 < list.size()) {
                try {
                    FrameCapture frameCapture = list.get(i2);
                    i = i2 + 1;
                    try {
                        bm3Var.invoke(Integer.valueOf(i2), frameCapture);
                        j59 j59Var = j59.a;
                        try {
                            aq5.c(frameCapture, null);
                            i2 = i;
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                while (i < list.size()) {
                                    int i3 = i + 1;
                                    try {
                                        rk3.d(list.get(i));
                                    } catch (Throwable th4) {
                                        sj0.c(th, th4);
                                    }
                                    i = i3;
                                }
                                throw th3;
                            }
                        }
                    } catch (Throwable th5) {
                        try {
                            throw th5;
                        } catch (Throwable th6) {
                            aq5.c(frameCapture, th5);
                            throw th6;
                        }
                    }
                } catch (Throwable th7) {
                    i = i2;
                    th = th7;
                }
            }
            while (i2 < list.size()) {
                int i4 = i2 + 1;
                try {
                    rk3.d(list.get(i2));
                } catch (Throwable unused) {
                }
                i2 = i4;
            }
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v0, types: [androidx.camera.camera2.pipe.FrameCapture, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.AutoCloseable] */
        /* JADX WARN: Type inference failed for: r5v2 */
        /* JADX WARN: Type inference failed for: r5v3, types: [androidx.camera.camera2.pipe.FrameCapture] */
        /* JADX WARN: Type inference failed for: r5v8 */
        /* JADX WARN: Type inference failed for: r5v9 */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.AutoCloseable] */
        /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.AutoCloseable] */
        /* JADX WARN: Type inference failed for: r6v7 */
        public final <R> Object useFrame(FrameCapture frameCapture, nl3<? super Frame, ? extends R> nl3Var, e02<? super R> e02Var) throws Exception {
            FrameCapture$Companion$useFrame$1 frameCapture$Companion$useFrame$1;
            nl3<? super Frame, ? extends R> nl3Var2;
            ?? r6;
            ?? r5;
            if (e02Var instanceof FrameCapture$Companion$useFrame$1) {
                frameCapture$Companion$useFrame$1 = (FrameCapture$Companion$useFrame$1) e02Var;
                int i = frameCapture$Companion$useFrame$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    frameCapture$Companion$useFrame$1.label = i - Integer.MIN_VALUE;
                } else {
                    frameCapture$Companion$useFrame$1 = new FrameCapture$Companion$useFrame$1(this, e02Var);
                }
            } else {
                frameCapture$Companion$useFrame$1 = new FrameCapture$Companion$useFrame$1(this, e02Var);
            }
            Object objAwaitFrame = frameCapture$Companion$useFrame$1.result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = frameCapture$Companion$useFrame$1.label;
            if (i2 == 0) {
                r57.b(objAwaitFrame);
                try {
                    frameCapture$Companion$useFrame$1.L$0 = nl3Var;
                    frameCapture$Companion$useFrame$1.L$1 = frameCapture;
                    frameCapture$Companion$useFrame$1.L$2 = frameCapture;
                    frameCapture$Companion$useFrame$1.label = 1;
                    objAwaitFrame = frameCapture.awaitFrame(frameCapture$Companion$useFrame$1);
                    if (objAwaitFrame == a32Var) {
                        return a32Var;
                    }
                    nl3Var2 = nl3Var;
                    r6 = frameCapture;
                    r5 = frameCapture;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                FrameCapture frameCapture2 = (FrameCapture) frameCapture$Companion$useFrame$1.L$2;
                r6 = (AutoCloseable) frameCapture$Companion$useFrame$1.L$1;
                nl3Var2 = (nl3) frameCapture$Companion$useFrame$1.L$0;
                try {
                    r57.b(objAwaitFrame);
                    r5 = frameCapture2;
                    r6 = r6;
                } catch (Throwable th2) {
                    th = th2;
                    frameCapture = r6;
                    try {
                        throw th;
                    } catch (Throwable th3) {
                        aq5.c(frameCapture, th);
                        throw th3;
                    }
                }
            }
            AutoCloseable autoCloseable = (AutoCloseable) objAwaitFrame;
            try {
                il1.d(r5);
                R rInvoke = nl3Var2.invoke((Frame) autoCloseable);
                aq5.c(autoCloseable, null);
                aq5.c(r6, null);
                return rInvoke;
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    aq5.c(autoCloseable, th4);
                    throw th5;
                }
            }
        }
    }

    void addListener(Frame.Listener listener);

    Object awaitFrame(e02<? super Frame> e02Var);

    Frame getFrame();

    Request getRequest();

    /* JADX INFO: renamed from: getStatus-U7r42EA, reason: not valid java name */
    int mo450getStatusU7r42EA();
}
