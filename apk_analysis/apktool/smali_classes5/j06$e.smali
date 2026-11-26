.class public final Lj06$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj06$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj06;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Lj06$f;

.field public final b:Ln91;


# direct methods
.method public constructor <init>(Lj06$f;Ln91;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj06$e;->a:Lj06$f;

    iput-object p2, p0, Lj06$e;->b:Ln91;

    return-void
.end method


# virtual methods
.method public final a(Lj06$d;J)V
    .locals 10

    iget-object v0, p0, Lj06$e;->a:Lj06$f;

    iget-object v1, v0, Lj06$f;->f:Lj06$f$b;

    iget v1, v1, Lj06$f$b;->d:I

    invoke-static {p1, v1}, Lj06;->f(Lj06$d;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lj06$f;->f:Lj06$f$b;

    iget v4, v3, Lj06$f$b;->c:I

    if-lt v2, v4, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj06$c;

    invoke-virtual {p1}, Lj06$d;->a()D

    move-result-wide v4

    iget v6, v0, Lj06$f;->d:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lj06$c;->c()J

    move-result-wide v4

    iget v6, v3, Lj06$f$b;->d:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    goto :goto_0

    :cond_3
    iget v4, v3, Lj06$f$b;->a:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    iget-object v6, v2, Lj06$c;->c:Lj06$c$a;

    iget-object v6, v6, Lj06$c$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-virtual {v2}, Lj06$c;->c()J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v6, v8

    cmpl-double v4, v6, v4

    if-lez v4, :cond_1

    sget-object v4, Ln91$a;->DEBUG:Ln91$a;

    iget-object v5, v2, Lj06$c;->c:Lj06$c$a;

    iget-object v5, v5, Lj06$c$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {v2}, Lj06$c;->c()J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lj06$e;->b:Ln91;

    const-string v7, "FailurePercentage algorithm detected outlier: {0}, failureRate={1}"

    invoke-virtual {v6, v4, v7, v5}, Ln91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    iget v5, v3, Lj06$f$b;->b:I

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, p2, p3}, Lj06$c;->b(J)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
