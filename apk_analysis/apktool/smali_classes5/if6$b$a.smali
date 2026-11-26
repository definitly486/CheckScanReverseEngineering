.class public final Lif6$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lif6$b;->collect(Lid3;Le02;)Ljava/lang/Object;
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
.field public final synthetic b:Lid3;


# direct methods
.method public constructor <init>(Lid3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lif6$b$a;->b:Lid3;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lif6$b$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lif6$b$a$a;

    iget v1, v0, Lif6$b$a$a;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lif6$b$a$a;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lif6$b$a$a;

    invoke-direct {v0, p0, p2}, Lif6$b$a$a;-><init>(Lif6$b$a;Le02;)V

    :goto_0
    iget-object p2, v0, Lif6$b$a$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lif6$b$a$a;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    check-cast p1, Lzl2$a;

    sget-object p1, Lj59;->a:Lj59;

    iput v3, v0, Lif6$b$a$a;->m:I

    iget-object p0, p0, Lif6$b$a;->b:Lid3;

    invoke-interface {p0, p1, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
