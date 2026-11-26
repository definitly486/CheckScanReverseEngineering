.class public abstract Lyads/bq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/fw3;

.field public final c:Lyads/aw3;

.field public final d:Lyads/uz4;

.field public final e:Lyads/cl0;

.field public final f:Ly22;

.field public final g:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/fw3;Lyads/aw3;Lyads/uz4;Lyads/cl0;Ly22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bq;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/bq;->b:Lyads/fw3;

    iput-object p3, p0, Lyads/bq;->c:Lyads/aw3;

    iput-object p4, p0, Lyads/bq;->d:Lyads/uz4;

    iput-object p5, p0, Lyads/bq;->e:Lyads/cl0;

    iput-object p6, p0, Lyads/bq;->f:Ly22;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lyads/bq;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static final a(Lyads/bq;Lyads/n8;Ljava/lang/Object;Lf02;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p3, Lyads/aq;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lyads/aq;

    iget v1, v0, Lyads/aq;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/aq;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/aq;

    invoke-direct {v0, p0, p3}, Lyads/aq;-><init>(Lyads/bq;Lf02;)V

    :goto_0
    iget-object p3, v0, Lyads/aq;->c:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/aq;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p2, v0, Lyads/aq;->b:Ljava/lang/Object;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lyads/bq;->e:Lyads/cl0;

    iput-object p2, v0, Lyads/aq;->b:Ljava/lang/Object;

    iput v3, v0, Lyads/aq;->e:I

    const-wide/16 v2, 0x7530

    invoke-virtual {p3, p1, v2, v3, v0}, Lyads/cl0;->a(Lyads/n8;JLf02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    invoke-virtual {p0, p3, p2}, Lyads/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public abstract a(Lyads/n8;)Ljava/lang/Object;
.end method

.method public final a(Lyads/n8;Le02;)Ljava/lang/Object;
    .locals 2

    .line 92
    new-instance v0, Lc31;

    invoke-static {p2}, Lzya;->b(Le02;)Le02;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lc31;-><init>(ILe02;)V

    .line 93
    invoke-virtual {v0}, Lc31;->u()V

    .line 94
    new-instance p2, Lyads/yp;

    invoke-direct {p2, v0}, Lyads/yp;-><init>(Lc31;)V

    invoke-virtual {p0, p2}, Lyads/bq;->a(Lyads/yp;)Ljava/lang/Object;

    move-result-object p2

    .line 95
    invoke-virtual {p0, p1, p2}, Lyads/bq;->a(Lyads/n8;Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v0}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    .line 97
    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method

.method public abstract a(Lyads/yp;)Ljava/lang/Object;
.end method

.method public abstract a(Lyads/zp;)Ljava/lang/Object;
.end method

.method public final a()V
    .locals 2

    .line 87
    iget-object v0, p0, Lyads/bq;->b:Lyads/fw3;

    invoke-virtual {v0}, Lyads/fw3;->a()V

    .line 88
    iget-object v0, p0, Lyads/bq;->c:Lyads/aw3;

    invoke-virtual {v0}, Lyads/aw3;->a()V

    .line 89
    iget-object v0, p0, Lyads/bq;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 90
    invoke-virtual {p0, v1}, Lyads/bq;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p0, p0, Lyads/bq;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lyads/bq;->c(Ljava/lang/Object;)V

    .line 81
    iget-object p0, p0, Lyads/bq;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public final a(Lyads/n8;Ljava/lang/Object;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lyads/bq;->b:Lyads/fw3;

    invoke-virtual {v0}, Lyads/fw3;->a()V

    .line 83
    iget-object v0, p0, Lyads/bq;->f:Ly22;

    sget-object v1, Lqo2;->a:Loi2;

    .line 84
    sget-object v1, Luy4;->a:Lhu3;

    .line 85
    invoke-virtual {v1}, Lhu3;->k0()Lgu3;

    move-result-object v1

    new-instance v2, Lyads/xp;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lyads/xp;-><init>(Lyads/bq;Lyads/n8;Ljava/lang/Object;Le02;)V

    const/4 p0, 0x2

    .line 86
    invoke-static {v0, v1, v3, v2, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public abstract a(Lyads/n8;Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract c(Ljava/lang/Object;)V
.end method

.method public abstract d(Ljava/lang/Object;)V
.end method
