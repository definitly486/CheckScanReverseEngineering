.class public final Lco1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco1$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lmu0;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lmu0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco1$a$a;->b:Lmu0;

    iput p2, p0, Lco1$a$a;->c:I

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lco1$a$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lco1$a$a$a;

    iget v1, v0, Lco1$a$a$a;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lco1$a$a$a;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lco1$a$a$a;

    invoke-direct {v0, p0, p2}, Lco1$a$a$a;-><init>(Lco1$a$a;Le02;)V

    :goto_0
    iget-object p2, v0, Lco1$a$a$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lco1$a$a$a;->n:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p2, Lj44;

    iget v2, p0, Lco1$a$a;->c:I

    invoke-direct {p2, v2, p1}, Lj44;-><init>(ILjava/lang/Object;)V

    iput v4, v0, Lco1$a$a$a;->n:I

    iget-object p0, p0, Lco1$a$a;->b:Lmu0;

    invoke-interface {p0, p2, v0}, Lno7;->send(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    iput v3, v0, Lco1$a$a$a;->n:I

    invoke-static {v0}, Lh;->g(Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
