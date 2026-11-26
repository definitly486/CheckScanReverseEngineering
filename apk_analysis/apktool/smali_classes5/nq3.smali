.class public final Lnq3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llq3;


# instance fields
.field public final a:Leq3;


# direct methods
.method public constructor <init>(Leq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnq3;->a:Leq3;

    return-void
.end method


# virtual methods
.method public final a(ILf02;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lmq3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lmq3;

    iget v1, v0, Lmq3;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lmq3;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmq3;

    invoke-direct {v0, p0, p2}, Lmq3;-><init>(Lnq3;Lf02;)V

    :goto_0
    iget-object p2, v0, Lmq3;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lmq3;->n:I

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

    iput v4, v0, Lmq3;->n:I

    iget-object p0, p0, Lnq3;->a:Leq3;

    invoke-interface {p0, p1, v0}, Leq3;->a(ILe02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Loq3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Loq3;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Loq3;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Loq3;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Loq3;->b()Loq3$a;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance p1, Lhq3$a;

    invoke-virtual {p0}, Loq3$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Loq3$a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lhq3$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, p1

    goto :goto_2

    :cond_4
    move-object v8, v3

    :goto_2
    invoke-virtual {p2}, Loq3;->c()Loq3$a;

    move-result-object p0

    if-eqz p0, :cond_5

    new-instance v3, Lhq3$a;

    invoke-virtual {p0}, Loq3$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Loq3$a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p1, p0}, Lhq3$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v9, v3

    new-instance v4, Lhq3;

    invoke-direct/range {v4 .. v9}, Lhq3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhq3$a;Lhq3$a;)V

    return-object v4
.end method
