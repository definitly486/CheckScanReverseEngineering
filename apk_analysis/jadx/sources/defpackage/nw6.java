package defpackage;

import java.io.IOException;
import org.jsoup.SerializationException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class nw6 {

    public static final class a extends nw6 {
        public final Appendable a;

        public a(Appendable appendable) {
            this.a = appendable;
        }

        @Override // defpackage.nw6
        public final nw6 a(char c) {
            try {
                this.a.append(c);
                return this;
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        }

        @Override // defpackage.nw6
        public final nw6 b(String str) {
            try {
                this.a.append(str);
                return this;
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        }

        @Override // defpackage.nw6
        public final nw6 c(char[] cArr, int i) {
            try {
                this.a.append(new String(cArr, 0, i));
                return this;
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        }
    }

    public static final class b extends nw6 {
        public final StringBuilder a;

        public b(StringBuilder sb) {
            this.a = sb;
        }

        @Override // defpackage.nw6
        public final nw6 a(char c) {
            this.a.append(c);
            return this;
        }

        @Override // defpackage.nw6
        public final nw6 b(String str) {
            this.a.append((CharSequence) str);
            return this;
        }

        @Override // defpackage.nw6
        public final nw6 c(char[] cArr, int i) {
            this.a.append(cArr, 0, i);
            return this;
        }

        public final String toString() {
            return this.a.toString();
        }
    }

    public static nw6 d(StringBuilder sb) {
        return sb != null ? new b(sb) : new a(sb);
    }

    public abstract nw6 a(char c);

    public abstract nw6 b(String str);

    public abstract nw6 c(char[] cArr, int i);
}
