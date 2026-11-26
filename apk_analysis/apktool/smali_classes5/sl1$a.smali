.class public final Lsl1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Z

.field public final c:Z

.field public final d:J

.field public volatile e:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile f:Z

.field public final synthetic g:Lsl1;


# direct methods
.method public constructor <init>(Lsl1;Lxc2;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsl1$a;->g:Lsl1;

    iput-boolean p3, p0, Lsl1$a;->b:Z

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lsl1$a;->c:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lsl1$a;->d:J

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lsl1$a;->c:Z

    invoke-virtual {p2}, Lxc2;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lsl1$a;->d:J

    return-void
.end method


# virtual methods
.method public final a()Lh88;
    .locals 10

    iget-wide v0, p0, Lsl1$a;->d:J

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x3b9aca00

    div-long/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    rem-long/2addr v6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lsl1$a;->b:Z

    if-eqz v5, :cond_0

    const-string v5, "Context"

    goto :goto_0

    :cond_0
    const-string v5, "CallOptions"

    :goto_0
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " deadline exceeded after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-gez v0, :cond_1

    const/16 v0, 0x2d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, ".%09d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s. "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsl1$a;->g:Lsl1;

    iget-object v1, p0, Lsl1;->h:Lio/grpc/b;

    sget-object v2, Lio/grpc/c;->o:Lio/grpc/b$b;

    invoke-virtual {v1, v2}, Lio/grpc/b;->a(Lio/grpc/b$b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    sget-wide v5, Lsl1;->p:D

    div-double/2addr v1, v5

    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Name resolution delay %.9f seconds."

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsl1;->i:Lcm1;

    if-eqz v0, :cond_3

    new-instance v0, Ly54;

    invoke-direct {v0}, Ly54;-><init>()V

    iget-object p0, p0, Lsl1;->i:Lcm1;

    invoke-interface {p0, v0}, Lcm1;->l(Ly54;)V

    const-string p0, " "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    sget-object p0, Lh88;->h:Lh88;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsl1$a;->f:Z

    iget-object v0, p0, Lsl1$a;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object p0, p0, Lsl1$a;->g:Lsl1;

    iget-object p0, p0, Lsl1;->e:Lky1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lsl1$a;->g:Lsl1;

    iget-object v0, v0, Lsl1;->i:Lcm1;

    invoke-virtual {p0}, Lsl1$a;->a()Lh88;

    move-result-object p0

    invoke-interface {v0, p0}, Lcm1;->j(Lh88;)V

    return-void
.end method
