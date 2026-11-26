.class public final Ls59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq59;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls59$a;,
        Ls59$b;,
        Ls59$c;
    }
.end annotation


# instance fields
.field public final a:Lsk8;

.field public final b:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcy8;

.field public final d:Ll69;

.field public final e:Lkz1;

.field public f:Ls59$c;

.field public g:Lnk2;

.field public h:Ls59$b;

.field public final i:Ljava/util/ArrayList;

.field public final j:La69;


# direct methods
.method public constructor <init>(Lsk8;Lhd3;Lcy8;Ll69;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls59;->a:Lsk8;

    iput-object p2, p0, Ls59;->b:Lhd3;

    iput-object p3, p0, Ls59;->c:Lcy8;

    iput-object p4, p0, Ls59;->d:Ll69;

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object p1

    sget-object p2, Lqo2;->a:Loi2;

    sget-object p2, Luy4;->a:Lhu3;

    invoke-static {p1, p2}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p1

    invoke-static {p1}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p1

    iput-object p1, p0, Ls59;->e:Lkz1;

    sget-object p1, Ls59$c$a;->a:Ls59$c$a;

    iput-object p1, p0, Ls59;->f:Ls59$c;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ls59;->i:Ljava/util/ArrayList;

    new-instance p1, La69;

    invoke-direct {p1, p0}, La69;-><init>(Ls59;)V

    iput-object p1, p0, Ls59;->j:La69;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ltj1$c;Ltj1;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lqo2;->a:Loi2;

    sget-object v0, Luy4;->a:Lhu3;

    invoke-virtual {v0}, Lhu3;->k0()Lgu3;

    move-result-object v0

    new-instance v1, Ld69;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ld69;-><init>(Ls59;Ljava/lang/String;Ljava/lang/String;Ltj1$c;Le02;)V

    invoke-static {v0, v1, p4}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lt59;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lt59;

    iget v1, v0, Lt59;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lt59;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lt59;

    invoke-direct {v0, p0, p2}, Lt59;-><init>(Ls59;Lf02;)V

    :goto_0
    iget-object p2, v0, Lt59;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lt59;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p2, Lv59;

    invoke-direct {p2, p0, p1, v3}, Lv59;-><init>(Ls59;Ljava/lang/String;Le02;)V

    iput v4, v0, Lt59;->n:I

    const-wide/16 p0, 0x7530

    invoke-static {p0, p1, p2, v0}, Lyv8;->c(JLbm3;Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lnu5;Ls59$a;)V
    .locals 3

    iget-object v0, p0, Ls59;->h:Ls59$b;

    if-eqz v0, :cond_2

    iget-object v1, v0, Ls59$b;->a:Lnu5;

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iput-object v2, p0, Ls59;->h:Ls59$b;

    iget-object p0, v0, Ls59$b;->b:Lc31;

    invoke-virtual {p0}, Lc31;->t()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lno5;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final d(Ls59$c$c;)V
    .locals 2

    iget-object v0, p0, Ls59;->f:Ls59$c;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Ls59$c$c;->f:Ls68;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lsb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iget-object v0, p1, Ls59$c$c;->e:Ls68;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lsb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iget-boolean v0, p1, Ls59$c$c;->h:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p1, Ls59$c$c;->h:Z

    iget-object p1, p0, Ls59;->c:Lcy8;

    iput-object v1, p1, Lcy8;->b:Lcy8$a;

    iget-object v0, p1, Lcy8;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_4
    iput-object v1, p1, Lcy8;->c:Landroid/app/AlertDialog;

    iput-object v1, p1, Lcy8;->d:Landroid/app/Activity;

    :goto_0
    sget-object p1, Ls59$c$a;->a:Ls59$c$a;

    iput-object p1, p0, Ls59;->f:Ls59$c;

    iget-object p0, p0, Ls59;->d:Ll69;

    sget-object p1, Li69;->CLOSED:Li69;

    invoke-interface {p0, p1}, Ll69;->a(Li69;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Lf02;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Ly59;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ly59;

    iget v1, v0, Ly59;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ly59;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Ly59;

    invoke-direct {v0, p0, p3}, Ly59;-><init>(Ls59;Lf02;)V

    :goto_0
    iget-object p3, v0, Ly59;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Ly59;->p:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    return-object p3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object p1, v0, Ly59;->l:Ljava/lang/String;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object p2, v0, Ly59;->m:Ljava/lang/String;

    iget-object p1, v0, Ly59;->l:Ljava/lang/String;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Ly59;->l:Ljava/lang/String;

    iput-object p2, v0, Ly59;->m:Ljava/lang/String;

    iput v6, v0, Ly59;->p:I

    invoke-static {}, Lcom/tapjoy/Tapjoy;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_5

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_5
    iget-object p3, p0, Ls59;->g:Lnk2;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lsb4;->isActive()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    move-object p3, v5

    :goto_1
    if-nez p3, :cond_8

    :cond_7
    new-instance p3, Lx59;

    invoke-direct {p3, p0, p1, v5}, Lx59;-><init>(Ls59;Ljava/lang/String;Le02;)V

    iget-object v2, p0, Ls59;->e:Lkz1;

    invoke-static {v2, v5, v5, p3, v3}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p3

    iput-object p3, p0, Ls59;->g:Lnk2;

    :cond_8
    invoke-virtual {p3, v0}, Lsb4;->u(Le02;)Ljava/lang/Object;

    move-result-object p3

    :goto_2
    if-ne p3, v1, :cond_9

    goto/16 :goto_7

    :cond_9
    :goto_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_a

    new-instance p0, Ls59$a$a;

    sget-object p1, Lj69;->CONNECT_FAILED:Lj69;

    invoke-direct {p0, p1}, Ls59$a$a;-><init>(Lj69;)V

    return-object p0

    :cond_a
    invoke-static {}, Lcom/tapjoy/Tapjoy;->getUserID()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_d

    iput-object p2, v0, Ly59;->l:Ljava/lang/String;

    iput-object v5, v0, Ly59;->m:Ljava/lang/String;

    iput v4, v0, Ly59;->p:I

    new-instance p3, Lc31;

    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object v2

    invoke-direct {p3, v6, v2}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p3}, Lc31;->u()V

    new-instance v2, Lgj4;

    invoke-direct {v2, v6, p0, p3}, Lgj4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lvk8;

    invoke-direct {v4, v2}, Lvk8;-><init>(Lgj4;)V

    invoke-static {p1, v4}, Lcom/tapjoy/Tapjoy;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    invoke-virtual {p3}, Lc31;->s()Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_b

    goto :goto_7

    :cond_b
    move-object p1, p2

    :goto_4
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_c

    new-instance p0, Ls59$a$a;

    sget-object p1, Lj69;->USER_ID_FAILED:Lj69;

    invoke-direct {p0, p1}, Ls59$a$a;-><init>(Lj69;)V

    return-object p0

    :cond_c
    move-object p2, p1

    :cond_d
    iput-object v5, v0, Ly59;->l:Ljava/lang/String;

    iput-object v5, v0, Ly59;->m:Ljava/lang/String;

    iput v3, v0, Ly59;->p:I

    new-instance p1, Lc31;

    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object p3

    invoke-direct {p1, v6, p3}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p1}, Lc31;->u()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lr07;

    invoke-direct {p3}, Lr07;-><init>()V

    new-instance v0, Luk8;

    iget-object v2, p0, Ls59;->j:La69;

    invoke-direct {v0, v2, p3}, Luk8;-><init>(Lou5;Lr07;)V

    invoke-static {p2, v0}, Lcom/tapjoy/Tapjoy;->getPlacement(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object p2

    if-nez p2, :cond_e

    goto :goto_5

    :cond_e
    new-instance v5, Lsk8$a;

    invoke-direct {v5, p2}, Lsk8$a;-><init>(Lcom/tapjoy/TJPlacement;)V

    iput-object v5, p3, Lr07;->b:Ljava/lang/Object;

    :goto_5
    if-nez v5, :cond_f

    new-instance p0, Ls59$a$a;

    sget-object p2, Lj69;->REQUEST_FAILED:Lj69;

    invoke-direct {p0, p2}, Ls59$a$a;-><init>(Lj69;)V

    invoke-virtual {p1, p0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    goto :goto_6

    :cond_f
    new-instance p2, Ls59$b;

    invoke-direct {p2, v5, p1}, Ls59$b;-><init>(Lnu5;Lc31;)V

    iput-object p2, p0, Ls59;->h:Ls59$b;

    iget-object p0, v5, Lsk8$a;->a:Lcom/tapjoy/TJPlacement;

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->requestContent()V

    :goto_6
    invoke-virtual {p1}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_10

    :goto_7
    return-object v1

    :cond_10
    return-object p0
.end method

.method public final f(Lll3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ls59$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ls59$d;-><init>(Lll3;Le02;)V

    const/4 p1, 0x3

    iget-object p0, p0, Ls59;->e:Lkz1;

    invoke-static {p0, v1, v1, v0, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ltj1$c;Lf02;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p4, Lg69;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lg69;

    iget v1, v0, Lg69;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg69;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg69;

    invoke-direct {v0, p0, p4}, Lg69;-><init>(Ls59;Lf02;)V

    :goto_0
    iget-object p4, v0, Lg69;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lg69;->o:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sget-object v6, Ls59$c$a;->a:Ls59$c$a;

    sget-object v7, Ls59$c$b;->a:Ls59$c$b;

    const/4 v8, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    return-object p4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget-object p1, v0, Lg69;->l:Ljava/lang/Object;

    check-cast p1, Ls59$a;

    :try_start_0
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_3
    iget-object p1, v0, Lg69;->l:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lnl3;

    :try_start_1
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_4
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p4, p0, Ls59;->f:Ls59$c;

    invoke-virtual {p4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    instance-of v2, p4, Ls59$c$c;

    if-eqz v2, :cond_7

    check-cast p4, Ls59$c$c;

    iget-boolean v2, p4, Ls59$c$c;->c:Z

    if-nez v2, :cond_6

    :goto_1
    sget-object p0, Lm69$a;->a:Lm69$a;

    return-object p0

    :cond_6
    invoke-virtual {p0, p4}, Ls59;->d(Ls59$c$c;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    :goto_2
    iput-object v7, p0, Ls59;->f:Ls59$c;

    :try_start_2
    new-instance p4, Lh69;

    invoke-direct {p4, p0, p1, p2, v8}, Lh69;-><init>(Ls59;Ljava/lang/String;Ljava/lang/String;Le02;)V

    iput-object p3, v0, Lg69;->l:Ljava/lang/Object;

    iput v5, v0, Lg69;->o:I

    const-wide/16 p1, 0x1f40

    invoke-static {p1, p2, p4, v0}, Lyv8;->c(JLbm3;Le02;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_8

    goto :goto_6

    :cond_8
    :goto_3
    check-cast p4, Ls59$a;

    if-nez p4, :cond_9

    new-instance p1, Ls59$a$a;

    sget-object p2, Lj69;->TIMEOUT:Lj69;

    invoke-direct {p1, p2}, Ls59$a$a;-><init>(Lj69;)V

    goto :goto_4

    :cond_9
    move-object p1, p4

    :goto_4
    instance-of p2, p1, Ls59$a$b;

    if-eqz p2, :cond_a

    iput-object p1, v0, Lg69;->l:Ljava/lang/Object;

    iput v4, v0, Lg69;->o:I

    invoke-interface {p3, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p2, v1, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    iput-object v8, p0, Ls59;->h:Ls59$b;

    iget-object p2, p0, Ls59;->f:Ls59$c;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    iput-object v6, p0, Ls59;->f:Ls59$c;

    :cond_b
    instance-of p2, p1, Ls59$a$b;

    if-eqz p2, :cond_d

    check-cast p1, Ls59$a$b;

    iget-object p1, p1, Ls59$a$b;->a:Lnu5;

    iput-object v8, v0, Lg69;->l:Ljava/lang/Object;

    iput v3, v0, Lg69;->o:I

    new-instance p2, Ls59$c$c;

    invoke-direct {p2, p1}, Ls59$c$c;-><init>(Lnu5;)V

    iput-object p2, p0, Ls59;->f:Ls59$c;

    new-instance p3, Lb69;

    invoke-direct {p3, p0, p1, p2, v8}, Lb69;-><init>(Ls59;Lnu5;Ls59$c$c;Le02;)V

    iget-object p0, p0, Ls59;->e:Lkz1;

    invoke-static {p0, v8, v8, p3, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    iput-object p0, p2, Ls59$c$c;->d:Ls68;

    invoke-interface {p1}, Lnu5;->a()V

    iget-object p0, p2, Ls59$c$c;->b:Lyp1;

    invoke-virtual {p0, v0}, Lsb4;->u(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c

    :goto_6
    return-object v1

    :cond_c
    return-object p0

    :cond_d
    instance-of p0, p1, Ls59$a$a;

    if-eqz p0, :cond_e

    new-instance p0, Lm69$b;

    check-cast p1, Ls59$a$a;

    iget-object p1, p1, Ls59$a$a;->a:Lj69;

    invoke-direct {p0, p1}, Lm69$b;-><init>(Lj69;)V

    return-object p0

    :cond_e
    invoke-static {}, Lme0;->e()V

    return-object v8

    :goto_7
    iput-object v8, p0, Ls59;->h:Ls59$b;

    iget-object p2, p0, Ls59;->f:Ls59$c;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    iput-object v6, p0, Ls59;->f:Ls59$c;

    :cond_f
    throw p1
.end method
