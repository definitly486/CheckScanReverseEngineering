package androidx.core.os;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BufferFillPolicy {
    public static final Companion Companion = new Companion(null);
    public static final BufferFillPolicy DISCARD = new Discard();
    public static final BufferFillPolicy RING_BUFFER = new RingBuffer();
    private final int value;

    public static final class Discard extends BufferFillPolicy {
        public Discard() {
            super(1, null);
        }
    }

    public static final class RingBuffer extends BufferFillPolicy {
        public RingBuffer() {
            super(2, null);
        }
    }

    private BufferFillPolicy(int i) {
        this.value = i;
    }

    public final int getValue$core() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ BufferFillPolicy(int i, jh2 jh2Var) {
        this(i);
    }
}
