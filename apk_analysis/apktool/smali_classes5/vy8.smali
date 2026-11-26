.class public final Lvy8;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvy8$a;,
        Lvy8$b;,
        Lvy8$c;
    }
.end annotation


# static fields
.field public static final c:Lvy8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvy8;

    invoke-direct {v0}, Lhe7;-><init>()V

    sput-object v0, Lvy8;->c:Lvy8;

    return-void
.end method


# virtual methods
.method public final b()Lhe7$c;
    .locals 0

    new-instance p0, Lvy8$c;

    invoke-direct {p0}, Lvy8$c;-><init>()V

    return-object p0
.end method

.method public final c(Ljava/lang/Runnable;)Lcp2;
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    return-object p0
.end method

.method public final d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;
    .locals 0

    :try_start_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    :goto_0
    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    return-object p0
.end method
