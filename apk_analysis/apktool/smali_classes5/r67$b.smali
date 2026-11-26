.class public final Lr67$b;
.super Lio/grpc/l$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lio/grpc/l$d;

.field public final synthetic b:Lr67;


# direct methods
.method public constructor <init>(Lr67;Lio/grpc/l$d;)V
    .locals 0

    iput-object p1, p0, Lr67$b;->b:Lr67;

    invoke-direct {p0}, Lio/grpc/l$d;-><init>()V

    iput-object p2, p0, Lr67$b;->a:Lio/grpc/l$d;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/l$e;)Lh88;
    .locals 9

    iget-object v0, p0, Lr67$b;->a:Lio/grpc/l$d;

    invoke-virtual {v0, p1}, Lio/grpc/l$d;->a(Lio/grpc/l$e;)Lh88;

    move-result-object p1

    invoke-virtual {p1}, Lh88;->f()Z

    move-result v0

    iget-object p0, p0, Lr67$b;->b:Lr67;

    iget-object v1, p0, Lr67;->c:Lk00;

    if-eqz v0, :cond_0

    iget-object p0, v1, Lk00;->b:Lch8;

    invoke-virtual {p0}, Lch8;->d()V

    new-instance v0, Lj00;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj00;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-object p1

    :cond_0
    new-instance v4, Lr67$a;

    invoke-direct {v4, p0}, Lr67$a;-><init>(Lr67;)V

    iget-object p0, v1, Lk00;->b:Lch8;

    invoke-virtual {p0}, Lch8;->d()V

    iget-object p0, v1, Lk00;->d:Lw33;

    if-nez p0, :cond_1

    iget-object p0, v1, Lk00;->c:Lw33$a;

    invoke-virtual {p0}, Lw33$a;->a()Lw33;

    move-result-object p0

    iput-object p0, v1, Lk00;->d:Lw33;

    :cond_1
    iget-object v0, v1, Lk00;->e:Lch8$c;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lch8$c;->a:Lch8$b;

    iget-boolean v2, v0, Lch8$b;->d:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lch8$b;->c:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lw33;->a()J

    move-result-wide v5

    iget-object v3, v1, Lk00;->b:Lch8;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, v1, Lk00;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual/range {v3 .. v8}, Lch8;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lch8$c;

    move-result-object p0

    iput-object p0, v1, Lk00;->e:Lch8$c;

    sget-object p0, Lk00;->f:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "Scheduling DNS resolution backoff for {0}ns"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method
