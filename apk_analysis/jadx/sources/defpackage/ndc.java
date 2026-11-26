package defpackage;

import com.google.android.gms.internal.common.zzp;
import com.google.android.gms.internal.common.zzr;
import com.google.android.gms.internal.common.zzw;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class ndc implements Iterator {
    public String b;
    public final CharSequence d;
    public final boolean e;
    public final /* synthetic */ zzp h;
    public int c = 2;
    public int f = 0;
    public int g = Integer.MAX_VALUE;

    public ndc(zzw zzwVar, CharSequence charSequence, zzp zzpVar) {
        this.h = zzpVar;
        this.e = zzwVar.b;
        this.d = charSequence;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i;
        zzr.zza(this.c != 4);
        int i2 = this.c;
        int i3 = i2 - 1;
        String string = null;
        if (i2 == 0) {
            throw null;
        }
        if (i3 == 0) {
            return true;
        }
        if (i3 != 2) {
            this.c = 4;
            int i4 = this.f;
            while (true) {
                int length = this.f;
                if (length == -1) {
                    this.c = 3;
                    break;
                }
                CharSequence charSequence = this.d;
                int length2 = charSequence.length();
                zzr.zzc(length, length2, FirebaseAnalytics.Param.INDEX);
                while (true) {
                    if (length >= length2) {
                        length = -1;
                        break;
                    }
                    if (this.h.zza(charSequence.charAt(length))) {
                        break;
                    }
                    length++;
                }
                if (length == -1) {
                    length = charSequence.length();
                    this.f = -1;
                    i = -1;
                } else {
                    i = length + 1;
                    this.f = i;
                }
                if (i == i4) {
                    int i5 = i + 1;
                    this.f = i5;
                    if (i5 > charSequence.length()) {
                        this.f = -1;
                    }
                } else {
                    if (i4 < length) {
                        charSequence.charAt(i4);
                    }
                    if (i4 < length) {
                        charSequence.charAt(length - 1);
                    }
                    if (!this.e || i4 != length) {
                        int i6 = this.g;
                        if (i6 == 1) {
                            length = charSequence.length();
                            this.f = -1;
                            if (length > i4) {
                                charSequence.charAt(length - 1);
                            }
                        } else {
                            this.g = i6 - 1;
                        }
                        string = charSequence.subSequence(i4, length).toString();
                        break;
                    }
                    i4 = this.f;
                }
            }
            this.b = string;
            if (this.c != 3) {
                this.c = 1;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            qz0.e();
            return null;
        }
        this.c = 2;
        String str = this.b;
        this.b = null;
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
