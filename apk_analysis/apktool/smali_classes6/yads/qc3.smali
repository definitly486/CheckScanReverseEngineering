.class public final Lyads/qc3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/zc3;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Lyads/sc3;


# direct methods
.method public constructor <init>(Lyads/zc3;Ljava/lang/String;IILyads/sc3;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/qc3;->c:Lyads/zc3;

    iput-object p2, p0, Lyads/qc3;->d:Ljava/lang/String;

    iput p3, p0, Lyads/qc3;->e:I

    iput p4, p0, Lyads/qc3;->f:I

    iput-object p5, p0, Lyads/qc3;->g:Lyads/sc3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 7

    new-instance v0, Lyads/qc3;

    iget-object v1, p0, Lyads/qc3;->c:Lyads/zc3;

    iget-object v2, p0, Lyads/qc3;->d:Ljava/lang/String;

    iget v3, p0, Lyads/qc3;->e:I

    iget v4, p0, Lyads/qc3;->f:I

    iget-object v5, p0, Lyads/qc3;->g:Lyads/sc3;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lyads/qc3;-><init>(Lyads/zc3;Ljava/lang/String;IILyads/sc3;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/qc3;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/qc3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/qc3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/qc3;->b:I

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

    iget-object p1, p0, Lyads/qc3;->c:Lyads/zc3;

    iget-object v1, p0, Lyads/qc3;->d:Ljava/lang/String;

    iget v3, p0, Lyads/qc3;->e:I

    iget v4, p0, Lyads/qc3;->f:I

    iget-object v5, p0, Lyads/qc3;->g:Lyads/sc3;

    iput v2, p0, Lyads/qc3;->b:I

    new-instance v6, Lc31;

    invoke-static {p0}, Lzya;->b(Le02;)Le02;

    move-result-object p0

    invoke-direct {v6, v2, p0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v6}, Lc31;->u()V

    new-instance p0, Lyads/pc3;

    invoke-direct {p0, v5, v6, v1}, Lyads/pc3;-><init>(Lyads/sc3;Lc31;Ljava/lang/String;)V

    invoke-virtual {p1, v1, p0, v3, v4}, Lyads/zc3;->a(Ljava/lang/String;Lyads/yc3;II)Lyads/xc3;

    invoke-virtual {v6}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
