.class public final Lge3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhd3<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lhd3;

.field public final synthetic c:Lfm3;


# direct methods
.method public constructor <init>(Lhd3;Lfm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lge3;->b:Lhd3;

    iput-object p2, p0, Lge3;->c:Lfm3;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lge3$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lge3$a;

    iget v1, v0, Lge3$a;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lge3$a;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lge3$a;

    invoke-direct {v0, p0, p2}, Lge3$a;-><init>(Lge3;Le02;)V

    :goto_0
    iget-object p2, v0, Lge3$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lge3$a;->m:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-wide v7, v0, Lge3$a;->s:J

    iget p1, v0, Lge3$a;->q:I

    iget-object v2, v0, Lge3$a;->p:Ljava/lang/Throwable;

    iget-object v9, v0, Lge3$a;->o:Lid3;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget p1, v0, Lge3$a;->r:I

    iget-wide v7, v0, Lge3$a;->s:J

    iget v2, v0, Lge3$a;->q:I

    iget-object v9, v0, Lge3$a;->o:Lid3;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    move-object v12, p2

    move p2, p1

    move p1, v2

    move-object v2, v12

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    const-wide/16 v7, 0x0

    move p2, v3

    :goto_1
    iput-object p1, v0, Lge3$a;->o:Lid3;

    iput-object v6, v0, Lge3$a;->p:Ljava/lang/Throwable;

    iput p2, v0, Lge3$a;->q:I

    iput-wide v7, v0, Lge3$a;->s:J

    iput v3, v0, Lge3$a;->r:I

    iput v5, v0, Lge3$a;->m:I

    iget-object v2, p0, Lge3;->b:Lhd3;

    invoke-static {v2, p1, v0}, Lhe3;->a(Lhd3;Lid3;Lf02;)Ljava/io/Serializable;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v9, p1

    move p1, p2

    move p2, v3

    :goto_2
    check-cast v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_6

    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v7, v8}, Ljava/lang/Long;-><init>(J)V

    iput-object v9, v0, Lge3$a;->o:Lid3;

    iput-object v2, v0, Lge3$a;->p:Ljava/lang/Throwable;

    iput p1, v0, Lge3$a;->q:I

    iput-wide v7, v0, Lge3$a;->s:J

    iput p2, v0, Lge3$a;->r:I

    iput v4, v0, Lge3$a;->m:I

    iget-object p2, p0, Lge3;->c:Lfm3;

    invoke-interface {p2, v9, v2, v10, v0}, Lfm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    :goto_3
    return-object v1

    :cond_5
    :goto_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    const-wide/16 v10, 0x1

    add-long/2addr v7, v10

    move p2, v5

    :cond_6
    move-object v2, v0

    move v0, p1

    move-object p1, v9

    goto :goto_5

    :cond_7
    throw v2

    :goto_5
    if-nez p2, :cond_8

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_8
    move p2, v0

    move-object v0, v2

    goto :goto_1
.end method
