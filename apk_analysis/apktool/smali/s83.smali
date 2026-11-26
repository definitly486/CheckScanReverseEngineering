.class public final Ls83;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lvw;


# direct methods
.method public constructor <init>(Lvw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls83;->a:Lvw;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/io/Serializable;
    .locals 4

    instance-of v0, p1, Lr83;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lr83;

    iget v1, v0, Lr83;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr83;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr83;

    invoke-direct {v0, p0, p1}, Lr83;-><init>(Ls83;Lf02;)V

    :goto_0
    iget-object p1, v0, Lr83;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lr83;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v3, v0, Lr83;->n:I

    iget-object p0, p0, Ls83;->a:Lvw;

    invoke-interface {p0, v0}, Lvw;->f(Lr83;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lp99;

    sget-object p0, Lub$a;->USER:Lub$a;

    new-instance v0, Lub;

    invoke-virtual {p1}, Lp99;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_4

    move-object v1, v2

    :cond_4
    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lub;-><init>(Lub$a;Ljava/lang/String;Z)V

    new-instance v1, Lb36;

    invoke-direct {v1, p0, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lub$a;->SMS:Lub$a;

    new-instance v0, Lub;

    invoke-virtual {p1}, Lp99;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, p1

    :goto_2
    invoke-direct {v0, p0, v2, v3}, Lub;-><init>(Lub$a;Ljava/lang/String;Z)V

    new-instance p1, Lb36;

    invoke-direct {p1, p0, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, p1}, [Lb36;

    move-result-object p0

    invoke-static {p0}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    return-object p0
.end method
