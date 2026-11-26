package defpackage;

import android.graphics.Color;

/* JADX INFO: loaded from: classes4.dex */
public final class id2 {
    public final b a;
    public final long b;
    public final int c;
    public final float d;
    public final int e;

    public static class a {
        public final float d;
        public long b = -1;
        public int c = -1;
        public final int e = Color.parseColor("#00000000");
        public final b a = b.EVENT_MOVE;

        public a(float f) {
            this.d = f;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final /* synthetic */ b[] $VALUES;
        public static final b EVENT_COLOR_CHANGE;
        public static final b EVENT_EFFECT;
        public static final b EVENT_HIDE;
        public static final b EVENT_MOVE;
        public static final b EVENT_SHOW;

        static {
            b bVar = new b("EVENT_MOVE", 0);
            EVENT_MOVE = bVar;
            b bVar2 = new b("EVENT_SHOW", 1);
            EVENT_SHOW = bVar2;
            b bVar3 = new b("EVENT_HIDE", 2);
            EVENT_HIDE = bVar3;
            b bVar4 = new b("EVENT_EFFECT", 3);
            EVENT_EFFECT = bVar4;
            b bVar5 = new b("EVENT_COLOR_CHANGE", 4);
            EVENT_COLOR_CHANGE = bVar5;
            $VALUES = new b[]{bVar, bVar2, bVar3, bVar4, bVar5};
        }

        public b() {
            throw null;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }
    }

    public id2(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
    }
}
