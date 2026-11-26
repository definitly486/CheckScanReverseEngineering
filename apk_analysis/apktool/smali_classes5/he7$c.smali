.class public abstract Lhe7$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhe7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhe7$c$a;
    }
.end annotation


# virtual methods
.method public a(Ljava/lang/Runnable;)Lcp2;
    .locals 3

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lhe7$c;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p0

    return-object p0
.end method

.method public abstract b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;
.end method

.method public final c(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcp2;
    .locals 14

    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    new-instance v3, Lkp7;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v11, Lkp7;

    invoke-direct {v11, v3}, Lkp7;-><init>(Lkp7;)V

    move-wide/from16 v4, p4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4}, Lhe7;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long v6, v4, v9

    new-instance v4, Lhe7$c$a;

    move-object v5, p0

    move-object v8, p1

    invoke-direct/range {v4 .. v13}, Lhe7$c$a;-><init>(Lhe7$c;JLjava/lang/Runnable;JLkp7;J)V

    invoke-virtual {p0, v4, v0, v1, v2}, Lhe7$c;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p0

    sget-object p1, Lhx2;->INSTANCE:Lhx2;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {v3, p0}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-object v11
.end method
