.class public final Lw37$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lw37;


# direct methods
.method public constructor <init>(Lw37;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw37$a;->b:Lw37;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, Lw37$a;->b:Lw37;

    iget-boolean v0, p0, Lw37;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lw37;->g:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_0
    iget-object v0, p0, Lw37;->d:La98;

    invoke-virtual {v0}, La98;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lw37;->e:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lw37;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lw37$b;

    invoke-direct {v1, p0}, Lw37$b;-><init>(Lw37;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v4, v5, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lw37;->g:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lw37;->f:Z

    iput-object v1, p0, Lw37;->g:Ljava/util/concurrent/ScheduledFuture;

    iget-object p0, p0, Lw37;->c:Lez4$j;

    invoke-virtual {p0}, Lez4$j;->run()V

    return-void
.end method
