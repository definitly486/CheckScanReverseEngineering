package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.b8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC0811b8 {
    public final Context a;
    public final ProtobufStateStorage b;
    public final AbstractC0863d8 c;
    public final InterfaceC1111mo d;
    public final Ym e;
    public final InterfaceC1028jj f;
    public final InterfaceC0977hj g;
    public final N6 h;
    public InterfaceC0837c8 i;

    public AbstractC0811b8(Context context, ProtobufStateStorage protobufStateStorage, AbstractC0863d8 abstractC0863d8, InterfaceC1111mo interfaceC1111mo, Ym ym, InterfaceC1028jj interfaceC1028jj, InterfaceC0977hj interfaceC0977hj, N6 n6, InterfaceC0837c8 interfaceC0837c8) {
        this.a = context;
        this.b = protobufStateStorage;
        this.c = abstractC0863d8;
        this.d = interfaceC1111mo;
        this.e = ym;
        this.f = interfaceC1028jj;
        this.g = interfaceC0977hj;
        this.h = n6;
        this.i = interfaceC0837c8;
    }

    public final InterfaceC0940g8 a(InterfaceC0940g8 interfaceC0940g8) {
        InterfaceC0940g8 interfaceC0940g8C;
        this.h.a(this.a);
        synchronized (this) {
            b(interfaceC0940g8);
            interfaceC0940g8C = c();
        }
        return interfaceC0940g8C;
    }

    public final synchronized boolean b(InterfaceC0940g8 interfaceC0940g8) {
        try {
            boolean z = false;
            if (interfaceC0940g8.a() == EnumC0914f8.c) {
                return false;
            }
            if (interfaceC0940g8.equals(this.i.b())) {
                return false;
            }
            List listA = (List) this.d.invoke(this.i.a(), interfaceC0940g8);
            boolean z2 = listA != null;
            if (listA == null) {
                listA = this.i.a();
            }
            if (this.c.a(interfaceC0940g8, this.i.b())) {
                z = true;
            } else {
                interfaceC0940g8 = (InterfaceC0940g8) this.i.b();
            }
            if (z || z2) {
                InterfaceC0837c8 interfaceC0837c8 = this.i;
                InterfaceC0837c8 interfaceC0837c9 = (InterfaceC0837c8) this.e.invoke(interfaceC0940g8, listA);
                this.i = interfaceC0837c9;
                this.b.save(interfaceC0837c9);
                AbstractC1287tj.a("Update distribution data: %s -> %s", interfaceC0837c8, this.i);
            }
            return z;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized InterfaceC0940g8 c() {
        try {
            if (!this.g.a()) {
                InterfaceC0940g8 interfaceC0940g8 = (InterfaceC0940g8) this.f.invoke();
                this.g.b();
                if (interfaceC0940g8 != null) {
                    b(interfaceC0940g8);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (InterfaceC0940g8) this.i.b();
    }

    public final synchronized InterfaceC0837c8 a() {
        return this.i;
    }

    public final InterfaceC0940g8 b() {
        this.h.a(this.a);
        return c();
    }
}
