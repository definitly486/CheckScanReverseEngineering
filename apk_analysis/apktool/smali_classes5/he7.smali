.class public abstract Lhe7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhe7$a;,
        Lhe7$b;,
        Lhe7$c;
    }
.end annotation


# static fields
.field public static final a:Z

.field public static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "rx2.scheduler.use-nanotime"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lhe7;->a:Z

    const-string v0, "rx2.scheduler.drift-tolerance"

    const-wide/16 v1, 0xf

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lhe7;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    sget-boolean v0, Lhe7;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public abstract b()Lhe7$c;
.end method

.method public c(Ljava/lang/Runnable;)Lcp2;
    .locals 3

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lhe7;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;
    .locals 1

    invoke-virtual {p0}, Lhe7;->b()Lhe7$c;

    move-result-object p0

    new-instance v0, Lhe7$a;

    invoke-direct {v0, p1, p0}, Lhe7$a;-><init>(Ljava/lang/Runnable;Lhe7$c;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lhe7$c;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    return-object v0
.end method

.method public e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcp2;
    .locals 1

    invoke-virtual {p0}, Lhe7;->b()Lhe7$c;

    move-result-object p0

    move-object v0, p1

    new-instance p1, Lhe7$b;

    invoke-direct {p1, v0, p0}, Lhe7$b;-><init>(Ljava/lang/Runnable;Lhe7$c;)V

    invoke-virtual/range {p0 .. p6}, Lhe7$c;->c(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p0

    sget-object p2, Lhx2;->INSTANCE:Lhx2;

    if-ne p0, p2, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method
