package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.core.AutoCloseables;
import androidx.camera.camera2.pipe.media.OutputImage;
import defpackage.aq5;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.oo5;
import defpackage.rk3;
import defpackage.sj0;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface Frame extends FrameReference, AutoCloseable {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final Request getRequest(Frame frame) {
            frame.getClass();
            return frame.getRequestMetadata().getRequest();
        }

        public final boolean isFrameInfoAvailable(FrameReference frameReference) {
            frameReference.getClass();
            return OutputStatus.m513equalsimpl0(frameReference.mo472getFrameInfoStatusU7r42EA(), OutputStatus.Companion.m517getAVAILABLEU7r42EA());
        }

        /* JADX INFO: renamed from: isImageAvailable-og7wgUk, reason: not valid java name */
        public final boolean m439isImageAvailableog7wgUk(FrameReference frameReference, int i) {
            frameReference.getClass();
            return OutputStatus.m513equalsimpl0(frameReference.mo475imageStatusBWjvHWQ(i), OutputStatus.Companion.m517getAVAILABLEU7r42EA());
        }

        /* JADX INFO: renamed from: isImageAvailable-vKMW96A, reason: not valid java name */
        public final boolean m440isImageAvailablevKMW96A(FrameReference frameReference, int i) {
            frameReference.getClass();
            return OutputStatus.m513equalsimpl0(frameReference.mo476imageStatusOo2lJfM(i), OutputStatus.Companion.m517getAVAILABLEU7r42EA());
        }

        public final void useEach(List<? extends Frame> list, nl3<? super Frame, j59> nl3Var) {
            list.getClass();
            nl3Var.getClass();
            AutoCloseables autoCloseables = AutoCloseables.INSTANCE;
            int i = 0;
            while (i < list.size()) {
                try {
                    Frame frame = list.get(i);
                    i++;
                    try {
                        nl3Var.invoke(frame);
                        j59 j59Var = j59.a;
                        aq5.c(frame, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            aq5.c(frame, th);
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

        public final void useEachIndexed(List<? extends Frame> list, bm3<? super Integer, ? super Frame, j59> bm3Var) {
            int i;
            Throwable th;
            list.getClass();
            bm3Var.getClass();
            AutoCloseables autoCloseables = AutoCloseables.INSTANCE;
            int i2 = 0;
            while (i2 < list.size()) {
                try {
                    Frame frame = list.get(i2);
                    i = i2 + 1;
                    try {
                        bm3Var.invoke(Integer.valueOf(i2), frame);
                        j59 j59Var = j59.a;
                        try {
                            aq5.c(frame, null);
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
                            aq5.c(frame, th5);
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
    }

    public static final class DefaultImpls {
        @Deprecated
        /* JADX INFO: renamed from: awaitImage-A9nWXxg, reason: not valid java name */
        public static Object m441awaitImageA9nWXxg(Frame frame, int i, e02<? super OutputImage> e02Var) {
            return Frame.super.mo433awaitImageA9nWXxg(i, e02Var);
        }

        @Deprecated
        /* JADX INFO: renamed from: awaitImage-NYG5g8E, reason: not valid java name */
        public static Object m442awaitImageNYG5g8E(Frame frame, int i, e02<? super OutputImage> e02Var) {
            return Frame.super.mo434awaitImageNYG5g8E(i, e02Var);
        }

        @Deprecated
        /* JADX INFO: renamed from: awaitImages-NYG5g8E, reason: not valid java name */
        public static Object m443awaitImagesNYG5g8E(Frame frame, int i, e02<? super List<? extends OutputImage>> e02Var) {
            return Frame.super.mo435awaitImagesNYG5g8E(i, e02Var);
        }

        @Deprecated
        /* JADX INFO: renamed from: getImage-aKI5c8E, reason: not valid java name */
        public static OutputImage m444getImageaKI5c8E(Frame frame, int i) {
            return Frame.super.mo436getImageaKI5c8E(i);
        }

        @Deprecated
        /* JADX INFO: renamed from: getImage-iYJqvbA, reason: not valid java name */
        public static OutputImage m445getImageiYJqvbA(Frame frame, int i) {
            return Frame.super.mo437getImageiYJqvbA(i);
        }

        @Deprecated
        /* JADX INFO: renamed from: getImages-aKI5c8E, reason: not valid java name */
        public static List<OutputImage> m446getImagesaKI5c8E(Frame frame, int i) {
            return Frame.super.mo438getImagesaKI5c8E(i);
        }

        @Deprecated
        /* JADX INFO: renamed from: imageStatus-BWjvHWQ, reason: not valid java name */
        public static int m447imageStatusBWjvHWQ(Frame frame, int i) {
            return Frame.super.mo475imageStatusBWjvHWQ(i);
        }
    }

    public interface Listener {
        void onFrameComplete();

        void onFrameInfoAvailable();

        /* JADX INFO: renamed from: onFrameStarted-cfZT-5Y, reason: not valid java name */
        void m448onFrameStartedcfZT5Y(long j, long j2);

        /* JADX INFO: renamed from: onImageAvailable-aKI5c8E, reason: not valid java name */
        default void m449onImageAvailableaKI5c8E(int i) {
        }

        void onImagesAvailable();
    }

    /* JADX INFO: renamed from: awaitImage-A9nWXxg$suspendImpl, reason: not valid java name */
    static Object m430awaitImageA9nWXxg$suspendImpl(Frame frame, int i, e02<? super OutputImage> e02Var) {
        throw new oo5("An operation is not implemented: Not yet implemented");
    }

    /* JADX INFO: renamed from: awaitImage-NYG5g8E$suspendImpl, reason: not valid java name */
    static /* synthetic */ Object m431awaitImageNYG5g8E$suspendImpl(Frame frame, int i, e02<? super OutputImage> e02Var) {
        return null;
    }

    /* JADX INFO: renamed from: awaitImages-NYG5g8E$suspendImpl, reason: not valid java name */
    static Object m432awaitImagesNYG5g8E$suspendImpl(Frame frame, int i, e02<? super List<? extends OutputImage>> e02Var) {
        throw new oo5("An operation is not implemented: Not yet implemented");
    }

    void addListener(Listener listener);

    Object awaitFrameInfo(e02<? super FrameInfo> e02Var);

    /* JADX INFO: renamed from: awaitImage-A9nWXxg, reason: not valid java name */
    default Object mo433awaitImageA9nWXxg(int i, e02<? super OutputImage> e02Var) {
        return m430awaitImageA9nWXxg$suspendImpl(this, i, e02Var);
    }

    /* JADX INFO: renamed from: awaitImage-NYG5g8E, reason: not valid java name */
    default Object mo434awaitImageNYG5g8E(int i, e02<? super OutputImage> e02Var) {
        return m431awaitImageNYG5g8E$suspendImpl(this, i, e02Var);
    }

    /* JADX INFO: renamed from: awaitImages-NYG5g8E, reason: not valid java name */
    default Object mo435awaitImagesNYG5g8E(int i, e02<? super List<? extends OutputImage>> e02Var) {
        return m432awaitImagesNYG5g8E$suspendImpl(this, i, e02Var);
    }

    FrameInfo getFrameInfo();

    /* JADX INFO: renamed from: getImage-aKI5c8E, reason: not valid java name */
    default OutputImage mo436getImageaKI5c8E(int i) {
        return null;
    }

    /* JADX INFO: renamed from: getImage-iYJqvbA, reason: not valid java name */
    default OutputImage mo437getImageiYJqvbA(int i) {
        throw new oo5("An operation is not implemented: Not yet implemented");
    }

    /* JADX INFO: renamed from: getImages-aKI5c8E, reason: not valid java name */
    default List<OutputImage> mo438getImagesaKI5c8E(int i) {
        throw new oo5("An operation is not implemented: Not yet implemented");
    }
}
