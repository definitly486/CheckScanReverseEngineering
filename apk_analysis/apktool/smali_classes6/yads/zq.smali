.class public final Lyads/zq;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public b:I

.field public synthetic c:Lyads/n8;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lyads/ar;


# direct methods
.method public constructor <init>(Lyads/ar;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/zq;->e:Lyads/ar;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lyads/n8;

    check-cast p3, Le02;

    new-instance v0, Lyads/zq;

    iget-object p0, p0, Lyads/zq;->e:Lyads/ar;

    invoke-direct {v0, p0, p3}, Lyads/zq;-><init>(Lyads/ar;Le02;)V

    iput-object p1, v0, Lyads/zq;->c:Lyads/n8;

    iput-object p2, v0, Lyads/zq;->d:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lyads/zq;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/zq;->b:I

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

    iget-object p1, p0, Lyads/zq;->c:Lyads/n8;

    iget-object v1, p0, Lyads/zq;->d:Ljava/lang/Object;

    iget-object v3, p0, Lyads/zq;->e:Lyads/ar;

    const/4 v4, 0x0

    iput-object v4, p0, Lyads/zq;->c:Lyads/n8;

    iput v2, p0, Lyads/zq;->b:I

    invoke-virtual {v3, p1, v1, p0}, Lyads/ar;->a(Lyads/n8;Ljava/lang/Object;Lyads/zq;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
