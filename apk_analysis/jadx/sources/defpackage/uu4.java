package defpackage;

import com.google.firebase.encoders.proto.ProtoEnum;

/* JADX INFO: loaded from: classes.dex */
public final class uu4 {
    public final long a;
    public final a b;

    public enum a implements ProtoEnum {
        REASON_UNKNOWN(0),
        MESSAGE_TOO_OLD(1),
        CACHE_FULL(2),
        PAYLOAD_TOO_BIG(3),
        MAX_RETRIES_REACHED(4),
        INVALID_PAYLOD(5),
        SERVER_ERROR(6);

        private final int number_;

        a(int i) {
            this.number_ = i;
        }

        @Override // com.google.firebase.encoders.proto.ProtoEnum
        public final int getNumber() {
            return this.number_;
        }
    }

    public uu4(long j, a aVar) {
        this.a = j;
        this.b = aVar;
    }
}
