package androidx.compose.ui.text.font;

import androidx.compose.runtime.State;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public interface TypefaceResult extends State<Object> {

    public static final class Async implements TypefaceResult, State<Object> {
        public static final int $stable = 0;
        private final AsyncFontListLoader current;

        public Async(AsyncFontListLoader asyncFontListLoader) {
            this.current = asyncFontListLoader;
        }

        @Override // androidx.compose.ui.text.font.TypefaceResult
        public boolean getCacheable() {
            return this.current.getCacheable$ui_text();
        }

        public final AsyncFontListLoader getCurrent$ui_text() {
            return this.current;
        }

        @Override // androidx.compose.runtime.State
        public Object getValue() {
            return this.current.getValue();
        }
    }

    boolean getCacheable();

    public static final class Immutable implements TypefaceResult {
        public static final int $stable = 0;
        private final boolean cacheable;
        private final Object value;

        public /* synthetic */ Immutable(Object obj, boolean z, int i, jh2 jh2Var) {
            this(obj, (i & 2) != 0 ? true : z);
        }

        @Override // androidx.compose.ui.text.font.TypefaceResult
        public boolean getCacheable() {
            return this.cacheable;
        }

        @Override // androidx.compose.runtime.State
        public Object getValue() {
            return this.value;
        }

        public Immutable(Object obj, boolean z) {
            this.value = obj;
            this.cacheable = z;
        }
    }
}
