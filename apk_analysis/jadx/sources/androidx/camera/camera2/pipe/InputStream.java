package androidx.camera.camera2.pipe;

import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public interface InputStream {
    /* JADX INFO: renamed from: getFormat-8FPWQzE, reason: not valid java name */
    int mo479getFormat8FPWQzE();

    /* JADX INFO: renamed from: getId-m1bwn9M, reason: not valid java name */
    int mo480getIdm1bwn9M();

    int getMaxImages();

    public static final class Config {
        private final int maxImages;
        private final CameraStream.Config stream;
        private int streamFormat;

        private Config(CameraStream.Config config, int i, int i2) {
            config.getClass();
            this.stream = config;
            this.maxImages = i;
            this.streamFormat = i2;
        }

        public final int getMaxImages() {
            return this.maxImages;
        }

        public final CameraStream.Config getStream() {
            return this.stream;
        }

        /* JADX INFO: renamed from: getStreamFormat-8FPWQzE, reason: not valid java name */
        public final int m481getStreamFormat8FPWQzE() {
            return this.streamFormat;
        }

        /* JADX INFO: renamed from: setStreamFormat-hNQ4ISI, reason: not valid java name */
        public final void m482setStreamFormathNQ4ISI(int i) {
            this.streamFormat = i;
        }

        public /* synthetic */ Config(CameraStream.Config config, int i, int i2, jh2 jh2Var) {
            this(config, i, i2);
        }
    }
}
