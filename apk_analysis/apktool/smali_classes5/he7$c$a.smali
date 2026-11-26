.class public final Lhe7$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhe7$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/Runnable;

.field public final c:Lkp7;

.field public final d:J

.field public e:J

.field public f:J

.field public g:J

.field public final synthetic h:Lhe7$c;


# direct methods
.method public constructor <init>(Lhe7$c;JLjava/lang/Runnable;JLkp7;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhe7$c$a;->h:Lhe7$c;

    iput-object p4, p0, Lhe7$c$a;->b:Ljava/lang/Runnable;

    iput-object p7, p0, Lhe7$c$a;->c:Lkp7;

    iput-wide p8, p0, Lhe7$c$a;->d:J

    iput-wide p5, p0, Lhe7$c$a;->f:J

    iput-wide p2, p0, Lhe7$c$a;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lhe7$c$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lhe7$c$a;->c:Lkp7;

    invoke-virtual {v0}, Lkp7;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lhe7$c$a;->h:Lhe7$c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2}, Lhe7;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    sget-wide v5, Lhe7;->b:J

    add-long v7, v3, v5

    iget-wide v9, p0, Lhe7$c$a;->f:J

    cmp-long v7, v7, v9

    const-wide/16 v11, 0x1

    iget-wide v13, p0, Lhe7$c$a;->d:J

    if-ltz v7, :cond_1

    add-long/2addr v9, v13

    add-long/2addr v9, v5

    cmp-long v5, v3, v9

    if-ltz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Lhe7$c$a;->g:J

    iget-wide v7, p0, Lhe7$c$a;->e:J

    add-long/2addr v7, v11

    iput-wide v7, p0, Lhe7$c$a;->e:J

    mul-long/2addr v7, v13

    add-long/2addr v7, v5

    goto :goto_1

    :cond_1
    :goto_0
    add-long v7, v3, v13

    iget-wide v5, p0, Lhe7$c$a;->e:J

    add-long/2addr v5, v11

    iput-wide v5, p0, Lhe7$c$a;->e:J

    mul-long/2addr v13, v5

    sub-long v5, v7, v13

    iput-wide v5, p0, Lhe7$c$a;->g:J

    :goto_1
    iput-wide v3, p0, Lhe7$c$a;->f:J

    sub-long/2addr v7, v3

    invoke-virtual {v1, p0, v7, v8, v2}, Lhe7$c;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p0

    invoke-static {v0, p0}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    :cond_2
    return-void
.end method
