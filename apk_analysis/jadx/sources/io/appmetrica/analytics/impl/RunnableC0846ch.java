package io.appmetrica.analytics.impl;

import androidx.compose.material3.internal.CalendarModelKt;
import defpackage.b36;
import defpackage.n05;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;
import java.util.Map;
import kotlin.KotlinVersion;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ch, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC0846ch implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        TimePassedChecker timePassedChecker = new TimePassedChecker();
        SystemTimeProvider systemTimeProvider = new SystemTimeProvider();
        C1102mf c1102mfY = Fa.I.y();
        if (timePassedChecker.didTimePassMillis(c1102mfY.f(), CalendarModelKt.MillisecondsIn24Hours, "[ReportKotlinVersionTask]")) {
            KotlinVersion kotlinVersion = KotlinVersion.CURRENT;
            b36 b36Var = new b36("major", Integer.valueOf(kotlinVersion.getMajor()));
            b36 b36Var2 = new b36("minor", Integer.valueOf(kotlinVersion.getMinor()));
            b36 b36Var3 = new b36("patch", Integer.valueOf(kotlinVersion.getPatch()));
            StringBuilder sb = new StringBuilder();
            sb.append(kotlinVersion.getMajor());
            sb.append('.');
            sb.append(kotlinVersion.getMinor());
            sb.append('.');
            sb.append(kotlinVersion.getPatch());
            Map mapE = n05.e(b36Var, b36Var2, b36Var3, new b36("version", sb.toString()));
            C0900ek c0900ek = Bj.a;
            c0900ek.getClass();
            c0900ek.a(new C0875dk("kotlin_version", mapE));
            c1102mfY.a(systemTimeProvider.currentTimeMillis());
        }
    }
}
