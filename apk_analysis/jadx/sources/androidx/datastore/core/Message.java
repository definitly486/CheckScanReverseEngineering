package androidx.datastore.core;

import defpackage.bm3;
import defpackage.e02;
import defpackage.jh2;
import defpackage.o22;
import defpackage.xp1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Message<T> {

    public static final class Read<T> extends Message<T> {
        private final State<T> lastState;

        public Read(State<T> state) {
            super(null);
            this.lastState = state;
        }

        @Override // androidx.datastore.core.Message
        public State<T> getLastState() {
            return this.lastState;
        }
    }

    public static final class Update<T> extends Message<T> {
        private final xp1<T> ack;
        private final o22 callerContext;
        private final State<T> lastState;
        private final bm3<T, e02<? super T>, Object> transform;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Update(bm3<? super T, ? super e02<? super T>, ? extends Object> bm3Var, xp1<T> xp1Var, State<T> state, o22 o22Var) {
            super(null);
            bm3Var.getClass();
            xp1Var.getClass();
            o22Var.getClass();
            this.transform = bm3Var;
            this.ack = xp1Var;
            this.lastState = state;
            this.callerContext = o22Var;
        }

        public final xp1<T> getAck() {
            return this.ack;
        }

        public final o22 getCallerContext() {
            return this.callerContext;
        }

        @Override // androidx.datastore.core.Message
        public State<T> getLastState() {
            return this.lastState;
        }

        public final bm3<T, e02<? super T>, Object> getTransform() {
            return this.transform;
        }
    }

    public /* synthetic */ Message(jh2 jh2Var) {
        this();
    }

    public abstract State<T> getLastState();

    private Message() {
    }
}
