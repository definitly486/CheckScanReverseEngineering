.class public final Lyads/bz4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/fz4;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lyads/n70;

.field public final synthetic f:Lyads/sl5;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:J


# direct methods
.method public constructor <init>(JLandroid/content/Context;Ljava/util/List;Le02;Lyads/n70;Lyads/fz4;Lyads/sl5;)V
    .locals 0

    iput-object p7, p0, Lyads/bz4;->c:Lyads/fz4;

    iput-object p3, p0, Lyads/bz4;->d:Landroid/content/Context;

    iput-object p6, p0, Lyads/bz4;->e:Lyads/n70;

    iput-object p8, p0, Lyads/bz4;->f:Lyads/sl5;

    iput-object p4, p0, Lyads/bz4;->g:Ljava/util/List;

    iput-wide p1, p0, Lyads/bz4;->h:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 9

    new-instance v0, Lyads/bz4;

    iget-object v7, p0, Lyads/bz4;->c:Lyads/fz4;

    iget-object v3, p0, Lyads/bz4;->d:Landroid/content/Context;

    iget-object v6, p0, Lyads/bz4;->e:Lyads/n70;

    iget-object v8, p0, Lyads/bz4;->f:Lyads/sl5;

    iget-object v4, p0, Lyads/bz4;->g:Ljava/util/List;

    iget-wide v1, p0, Lyads/bz4;->h:J

    move-object v5, p2

    invoke-direct/range {v0 .. v8}, Lyads/bz4;-><init>(JLandroid/content/Context;Ljava/util/List;Le02;Lyads/n70;Lyads/fz4;Lyads/sl5;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/bz4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/bz4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/bz4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/bz4;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lyads/bz4;->c:Lyads/fz4;

    move p1, v2

    iget-object v2, p0, Lyads/bz4;->d:Landroid/content/Context;

    iget-object v3, p0, Lyads/bz4;->e:Lyads/n70;

    iget-object v4, p0, Lyads/bz4;->f:Lyads/sl5;

    iget-object v5, p0, Lyads/bz4;->g:Ljava/util/List;

    iget-wide v6, p0, Lyads/bz4;->h:J

    iput p1, p0, Lyads/bz4;->b:I

    move-object v8, p0

    invoke-static/range {v1 .. v8}, Lyads/fz4;->a(Lyads/fz4;Landroid/content/Context;Lyads/n70;Lyads/sl5;Ljava/util/List;JLf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
