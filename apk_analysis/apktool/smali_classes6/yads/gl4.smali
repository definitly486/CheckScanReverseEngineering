.class public final Lyads/gl4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/il4;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lyads/d9;

.field public final synthetic f:Lyads/ee4;

.field public final synthetic g:Lyads/jd0;


# direct methods
.method public constructor <init>(Lyads/il4;Landroid/content/Context;Lyads/d9;Lyads/ee4;Lyads/jd0;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/gl4;->c:Lyads/il4;

    iput-object p2, p0, Lyads/gl4;->d:Landroid/content/Context;

    iput-object p3, p0, Lyads/gl4;->e:Lyads/d9;

    iput-object p4, p0, Lyads/gl4;->f:Lyads/ee4;

    iput-object p5, p0, Lyads/gl4;->g:Lyads/jd0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 7

    new-instance v0, Lyads/gl4;

    iget-object v1, p0, Lyads/gl4;->c:Lyads/il4;

    iget-object v2, p0, Lyads/gl4;->d:Landroid/content/Context;

    iget-object v3, p0, Lyads/gl4;->e:Lyads/d9;

    iget-object v4, p0, Lyads/gl4;->f:Lyads/ee4;

    iget-object v5, p0, Lyads/gl4;->g:Lyads/jd0;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lyads/gl4;-><init>(Lyads/il4;Landroid/content/Context;Lyads/d9;Lyads/ee4;Lyads/jd0;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/gl4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/gl4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/gl4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/gl4;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lyads/gl4;->c:Lyads/il4;

    move p1, v2

    iget-object v2, p0, Lyads/gl4;->d:Landroid/content/Context;

    iget-object v3, p0, Lyads/gl4;->e:Lyads/d9;

    iget-object v4, p0, Lyads/gl4;->f:Lyads/ee4;

    iget-object v5, p0, Lyads/gl4;->g:Lyads/jd0;

    iput p1, p0, Lyads/gl4;->b:I

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lyads/il4;->a(Landroid/content/Context;Lyads/d9;Lyads/ee4;Lyads/jd0;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
