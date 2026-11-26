package androidx.camera.viewfinder.core.impl;

import android.os.Build;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.SurfaceView;
import defpackage.j59;
import defpackage.m96;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public interface SurfaceControlCompat {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class SurfaceControlStub implements SurfaceControlCompat {
        public static final SurfaceControlStub INSTANCE = new SurfaceControlStub();

        private SurfaceControlStub() {
        }

        @Override // androidx.camera.viewfinder.core.impl.SurfaceControlCompat
        public void detach() {
        }

        @Override // androidx.camera.viewfinder.core.impl.SurfaceControlCompat
        public Surface newSurface() {
            return null;
        }

        @Override // androidx.camera.viewfinder.core.impl.SurfaceControlCompat
        public void release() {
        }

        @Override // androidx.camera.viewfinder.core.impl.SurfaceControlCompat
        public boolean reparent(SurfaceControlCompat surfaceControlCompat) {
            surfaceControlCompat.getClass();
            return false;
        }

        @Override // androidx.camera.viewfinder.core.impl.SurfaceControlCompat
        public void setBufferSize(int i, int i2) {
        }
    }

    static SurfaceControlCompat create(SurfaceView surfaceView, int i, int i2, int i3, String str) {
        return Companion.create(surfaceView, i, i2, i3, str);
    }

    static SurfaceControlCompat wrap(SurfaceView surfaceView) {
        return Companion.wrap(surfaceView);
    }

    void detach();

    Surface newSurface();

    void release();

    boolean reparent(SurfaceControlCompat surfaceControlCompat);

    void setBufferSize(int i, int i2);

    static SurfaceControlCompat create(SurfaceControlCompat surfaceControlCompat, int i, int i2, String str) {
        return Companion.create(surfaceControlCompat, i, i2, str);
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final SurfaceControlCompat create(SurfaceView surfaceView, int i, int i2, int i3, String str) {
            surfaceView.getClass();
            str.getClass();
            return Build.VERSION.SDK_INT >= 29 ? new SurfaceControlApi29Impl(surfaceView, i, i2, i3, str) : SurfaceControlStub.INSTANCE;
        }

        public final SurfaceControlCompat wrap(SurfaceView surfaceView) {
            surfaceView.getClass();
            if (Build.VERSION.SDK_INT < 29) {
                return SurfaceControlStub.INSTANCE;
            }
            SurfaceControl surfaceControl = surfaceView.getSurfaceControl();
            surfaceControl.getClass();
            return new SurfaceControlApi29Impl(surfaceControl);
        }

        public final SurfaceControlCompat create(SurfaceControlCompat surfaceControlCompat, int i, int i2, String str) {
            surfaceControlCompat.getClass();
            str.getClass();
            if (Build.VERSION.SDK_INT >= 29) {
                return new SurfaceControlApi29Impl(surfaceControlCompat, i, i2, str);
            }
            return SurfaceControlStub.INSTANCE;
        }
    }

    public static final class SurfaceControlApi29Impl implements SurfaceControlCompat {
        private final SurfaceControl surfaceControl;

        /* JADX WARN: Illegal instructions before constructor call */
        public SurfaceControlApi29Impl(SurfaceView surfaceView, int i, int i2, int i3, String str) throws IOException {
            surfaceView.getClass();
            str.getClass();
            SurfaceControl surfaceControlBuild = new SurfaceControl.Builder().setName(str).setFormat(i).setBufferSize(i2, i3).setParent(surfaceView.getSurfaceControl()).build();
            surfaceControlBuild.getClass();
            this(surfaceControlBuild);
            initializeNewSurfaceControl();
        }

        private final void initializeNewSurfaceControl() throws IOException {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.setVisibility(this.surfaceControl, true).apply();
                j59 j59Var = j59.a;
                transaction.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    m96.c(transaction, th);
                    throw th2;
                }
            }
        }

        @Override // androidx.camera.viewfinder.core.impl.SurfaceControlCompat
        public void detach() throws IOException {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.reparent(this.surfaceControl, null).apply();
                j59 j59Var = j59.a;
                transaction.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    m96.c(transaction, th);
                    throw th2;
                }
            }
        }

        @Override // androidx.camera.viewfinder.core.impl.SurfaceControlCompat
        public Surface newSurface() {
            return new Surface(this.surfaceControl);
        }

        @Override // androidx.camera.viewfinder.core.impl.SurfaceControlCompat
        public void release() {
            this.surfaceControl.release();
        }

        @Override // androidx.camera.viewfinder.core.impl.SurfaceControlCompat
        public boolean reparent(SurfaceControlCompat surfaceControlCompat) throws IOException {
            surfaceControlCompat.getClass();
            if (!this.surfaceControl.isValid()) {
                return false;
            }
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.reparent(this.surfaceControl, ((SurfaceControlApi29Impl) surfaceControlCompat).surfaceControl).apply();
                j59 j59Var = j59.a;
                transaction.close();
                return true;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    m96.c(transaction, th);
                    throw th2;
                }
            }
        }

        @Override // androidx.camera.viewfinder.core.impl.SurfaceControlCompat
        public void setBufferSize(int i, int i2) throws IOException {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            try {
                transaction.setBufferSize(this.surfaceControl, i, i2).apply();
                j59 j59Var = j59.a;
                transaction.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    m96.c(transaction, th);
                    throw th2;
                }
            }
        }

        public SurfaceControlApi29Impl(SurfaceControl surfaceControl) {
            surfaceControl.getClass();
            this.surfaceControl = surfaceControl;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public SurfaceControlApi29Impl(SurfaceControlCompat surfaceControlCompat, int i, int i2, String str) throws IOException {
            surfaceControlCompat.getClass();
            str.getClass();
            SurfaceControl surfaceControlBuild = new SurfaceControl.Builder().setName(str).setBufferSize(i, i2).setParent(((SurfaceControlApi29Impl) surfaceControlCompat).surfaceControl).build();
            surfaceControlBuild.getClass();
            this(surfaceControlBuild);
            initializeNewSurfaceControl();
        }
    }
}
