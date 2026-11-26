.class public final Laj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltd2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laj0$a;,
        Laj0$b;
    }
.end annotation


# instance fields
.field public final a:Lh24;

.field public final b:Lzz5;

.field public final c:Lio7;

.field public final d:Lk23;


# direct methods
.method public constructor <init>(Lh24;Lzz5;Lio7;Lk23;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laj0;->a:Lh24;

    iput-object p2, p0, Laj0;->b:Lzz5;

    iput-object p3, p0, Laj0;->c:Lio7;

    iput-object p4, p0, Laj0;->d:Lk23;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lbj0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lbj0;

    iget v1, v0, Lbj0;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lbj0;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lbj0;

    invoke-direct {v0, p0, p1}, Lbj0;-><init>(Laj0;Lf02;)V

    :goto_0
    iget-object p1, v0, Lbj0;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lbj0;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lbj0;->l:Leo7;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object v2, v0, Lbj0;->l:Leo7;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Laj0;->c:Lio7;

    iput-object p1, v0, Lbj0;->l:Leo7;

    iput v5, v0, Lbj0;->o:I

    invoke-virtual {p1, v0}, Lgo7;->a(Lf02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    :try_start_1
    new-instance v2, Lzi0;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lzi0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, v0, Lbj0;->l:Leo7;

    iput v4, v0, Lbj0;->o:I

    sget-object p0, Lgx2;->b:Lgx2;

    new-instance v4, Lx94;

    invoke-direct {v4, v2, v3}, Lx94;-><init>(Lll3;Le02;)V

    invoke-static {p0, v4, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_3
    :try_start_2
    check-cast p1, Lqd2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p0}, Leo7;->release()V

    return-object p1

    :goto_4
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_5
    invoke-interface {p0}, Leo7;->release()V

    throw p1
.end method
