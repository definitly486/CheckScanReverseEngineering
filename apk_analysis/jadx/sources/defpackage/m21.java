package defpackage;

import com.google.firebase.inappmessaging.CommonTypesProto;
import com.google.firebase.inappmessaging.MessagesProto;
import com.google.protobuf.o;
import com.google.protobuf.q;
import com.google.protobuf.w;
import com.google.protobuf.x;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class m21 extends o<m21, a> implements ha5 {
    public static final int CONTENT_FIELD_NUMBER = 3;
    public static final int DATA_BUNDLE_FIELD_NUMBER = 8;
    private static final m21 DEFAULT_INSTANCE;
    public static final int EXPERIMENTAL_PAYLOAD_FIELD_NUMBER = 2;
    public static final int IS_TEST_CAMPAIGN_FIELD_NUMBER = 7;
    private static volatile x36<m21> PARSER = null;
    public static final int PRIORITY_FIELD_NUMBER = 4;
    public static final int TRIGGERING_CONDITIONS_FIELD_NUMBER = 5;
    public static final int VANILLA_PAYLOAD_FIELD_NUMBER = 1;
    private int bitField0_;
    private MessagesProto.Content content_;
    private boolean isTestCampaign_;
    private Object payload_;
    private CommonTypesProto.Priority priority_;
    private int payloadCase_ = 0;
    private x<String, String> dataBundle_ = x.c;
    private q.j<CommonTypesProto.TriggeringCondition> triggeringConditions_ = o.emptyProtobufList();

    public static final class a extends o.a<m21, a> implements ha5 {
    }

    public static final class b {
        public static final w<String, String> a;

        static {
            ui9 ui9Var = ui9.STRING;
            a = new w<>(ui9Var, ui9Var, "");
        }
    }

    public enum c {
        VANILLA_PAYLOAD(1),
        EXPERIMENTAL_PAYLOAD(2),
        PAYLOAD_NOT_SET(0);

        private final int value;

        c(int i) {
            this.value = i;
        }
    }

    static {
        m21 m21Var = new m21();
        DEFAULT_INSTANCE = m21Var;
        o.registerDefaultInstance(m21.class, m21Var);
    }

    public final Map<String, String> b() {
        return Collections.unmodifiableMap(this.dataBundle_);
    }

    public final l21 c() {
        return this.payloadCase_ == 2 ? (l21) this.payload_ : l21.e();
    }

    public final boolean d() {
        return this.isTestCampaign_;
    }

    @Override // com.google.protobuf.o
    public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
        x36 bVar;
        switch (k21.a[fVar.ordinal()]) {
            case 1:
                return new m21();
            case 2:
                return new a(DEFAULT_INSTANCE);
            case 3:
                return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0007\u0001\u0001\u0001\b\u0007\u0001\u0001\u0000\u0001<\u0000\u0002<\u0000\u0003ဉ\u0000\u0004ဉ\u0001\u0005\u001b\u0007\u0007\b2", new Object[]{"payload_", "payloadCase_", "bitField0_", n21.class, l21.class, "content_", "priority_", "triggeringConditions_", CommonTypesProto.TriggeringCondition.class, "isTestCampaign_", "dataBundle_", b.a});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x36<m21> x36Var = PARSER;
                if (x36Var != null) {
                    return x36Var;
                }
                synchronized (m21.class) {
                    try {
                        bVar = PARSER;
                        if (bVar == null) {
                            bVar = new o.b(DEFAULT_INSTANCE);
                            PARSER = bVar;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return bVar;
            case 6:
                return (byte) 1;
            default:
                ud.d();
            case 7:
                return null;
        }
    }

    public final c e() {
        int i = this.payloadCase_;
        if (i == 0) {
            return c.PAYLOAD_NOT_SET;
        }
        if (i == 1) {
            return c.VANILLA_PAYLOAD;
        }
        if (i != 2) {
            return null;
        }
        return c.EXPERIMENTAL_PAYLOAD;
    }

    public final CommonTypesProto.Priority f() {
        CommonTypesProto.Priority priority = this.priority_;
        return priority == null ? CommonTypesProto.Priority.getDefaultInstance() : priority;
    }

    public final q.j g() {
        return this.triggeringConditions_;
    }

    public final MessagesProto.Content getContent() {
        MessagesProto.Content content = this.content_;
        return content == null ? MessagesProto.Content.getDefaultInstance() : content;
    }

    public final n21 h() {
        return this.payloadCase_ == 1 ? (n21) this.payload_ : n21.e();
    }
}
