.class public final Laf3$b;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2"
    f = "Share.kt"
    l = {
        0xdf
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laf3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laf3$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lcu7;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic o:Lvg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvg5<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic p:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhd3;Lvg5;Ljava/lang/Object;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhd3<",
            "Ljava/lang/Object;",
            ">;",
            "Lvg5<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Le02<",
            "-",
            "Laf3$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Laf3$b;->n:Lhd3;

    iput-object p2, p0, Laf3$b;->o:Lvg5;

    iput-object p3, p0, Laf3$b;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Laf3$b;

    iget-object v1, p0, Laf3$b;->o:Lvg5;

    iget-object v2, p0, Laf3$b;->p:Ljava/lang/Object;

    iget-object p0, p0, Laf3$b;->n:Lhd3;

    invoke-direct {v0, p0, v1, v2, p2}, Laf3$b;-><init>(Lhd3;Lvg5;Ljava/lang/Object;Le02;)V

    iput-object p1, v0, Laf3$b;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcu7;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Laf3$b;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Laf3$b;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Laf3$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Laf3$b;->m:Ljava/lang/Object;

    check-cast v0, Lcu7;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, p0, Laf3$b;->l:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p1, Laf3$b$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    iget-object v0, p0, Laf3$b;->o:Lvg5;

    if-eq p1, v4, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    sget-object p1, Lbt7;->b:Lbh8;

    iget-object p0, p0, Laf3$b;->p:Ljava/lang/Object;

    if-ne p0, p1, :cond_2

    invoke-interface {v0}, Lvg5;->b()V

    goto :goto_0

    :cond_2
    invoke-interface {v0, p0}, Lvg5;->e(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_4
    iput-object v3, p0, Laf3$b;->m:Ljava/lang/Object;

    iput v4, p0, Laf3$b;->l:I

    iget-object p1, p0, Laf3$b;->n:Lhd3;

    invoke-interface {p1, v0, p0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
