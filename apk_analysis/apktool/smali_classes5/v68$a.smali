.class public final Lv68$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv68;->b(Ly68;)Lhd3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhd3<",
        "Lcu7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ly68;


# direct methods
.method public constructor <init>(Ly68;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv68$a;->b:Ly68;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-",
            "Lcu7;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lv68$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lv68$a$a;

    iget v1, v0, Lv68$a$a;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv68$a$a;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv68$a$a;

    invoke-direct {v0, p0, p2}, Lv68$a$a;-><init>(Lv68$a;Le02;)V

    :goto_0
    iget-object p2, v0, Lv68$a$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lv68$a$a;->m:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p2, Ln07;

    invoke-direct {p2}, Ln07;-><init>()V

    new-instance v2, Lv68$b;

    invoke-direct {v2, p2, p1}, Lv68$b;-><init>(Ln07;Lid3;)V

    iput v4, v0, Lv68$a$a;->m:I

    iget-object p0, p0, Lv68$a;->b:Ly68;

    invoke-interface {p0, v2, v0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {}, Lh8;->d()V

    return-object v3
.end method
