package defpackage;

import java.io.File;
import java.util.ArrayDeque;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class y93 implements zo7<File> {
    public final File a;
    public final ba3 b;

    public static abstract class a extends c {
    }

    public final class b extends r0<File> {
        public final ArrayDeque<c> d;

        public final class a extends a {
            public boolean b;
            public File[] c;
            public int d;
            public boolean e;

            @Override // y93.c
            public final File a() {
                boolean z = this.e;
                File file = this.a;
                if (!z && this.c == null) {
                    File[] fileArrListFiles = file.listFiles();
                    this.c = fileArrListFiles;
                    if (fileArrListFiles == null) {
                        this.e = true;
                    }
                }
                File[] fileArr = this.c;
                if (fileArr == null || this.d >= fileArr.length) {
                    if (this.b) {
                        return null;
                    }
                    this.b = true;
                    return file;
                }
                fileArr.getClass();
                int i = this.d;
                this.d = i + 1;
                return fileArr[i];
            }
        }

        /* JADX INFO: renamed from: y93$b$b, reason: collision with other inner class name */
        public final class C0361b extends c {
            public boolean b;

            @Override // y93.c
            public final File a() {
                if (this.b) {
                    return null;
                }
                this.b = true;
                return this.a;
            }
        }

        public final class c extends a {
            public boolean b;
            public File[] c;
            public int d;

            @Override // y93.c
            public final File a() {
                boolean z = this.b;
                File file = this.a;
                if (!z) {
                    this.b = true;
                    return file;
                }
                File[] fileArrListFiles = this.c;
                if (fileArrListFiles != null && this.d >= fileArrListFiles.length) {
                    return null;
                }
                if (fileArrListFiles == null) {
                    fileArrListFiles = file.listFiles();
                    this.c = fileArrListFiles;
                    if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                        return null;
                    }
                }
                fileArrListFiles.getClass();
                int i = this.d;
                this.d = i + 1;
                return fileArrListFiles[i];
            }
        }

        public static final /* synthetic */ class d {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[ba3.values().length];
                try {
                    iArr[ba3.TOP_DOWN.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ba3.BOTTOM_UP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        public b() {
            ArrayDeque<c> arrayDeque = new ArrayDeque<>();
            this.d = arrayDeque;
            File file = y93.this.a;
            if (file.isDirectory()) {
                arrayDeque.push(a(file));
            } else if (!file.isFile()) {
                done();
            } else {
                file.getClass();
                arrayDeque.push(new C0361b(file));
            }
        }

        public final a a(File file) {
            int i = d.a[y93.this.b.ordinal()];
            if (i == 1) {
                file.getClass();
                return new c(file);
            }
            if (i == 2) {
                file.getClass();
                return new a(file);
            }
            me0.e();
            return null;
        }

        @Override // defpackage.r0
        public final void computeNext() {
            File file;
            while (true) {
                ArrayDeque<c> arrayDeque = this.d;
                c cVarPeek = arrayDeque.peek();
                if (cVarPeek == null) {
                    file = null;
                    break;
                }
                File fileA = cVarPeek.a();
                if (fileA == null) {
                    arrayDeque.pop();
                } else {
                    if (fileA.equals(cVarPeek.a) || !fileA.isDirectory() || arrayDeque.size() >= Integer.MAX_VALUE) {
                        file = fileA;
                        break;
                    }
                    arrayDeque.push(a(fileA));
                }
            }
            if (file != null) {
                setNext(file);
            } else {
                done();
            }
        }
    }

    public static abstract class c {
        public final File a;

        public c(File file) {
            file.getClass();
            this.a = file;
        }

        public abstract File a();
    }

    public y93(File file, ba3 ba3Var) {
        this.a = file;
        this.b = ba3Var;
    }

    @Override // defpackage.zo7
    public final Iterator<File> iterator() {
        return new b();
    }
}
