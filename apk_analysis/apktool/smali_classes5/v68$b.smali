.class public final Lv68$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


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
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln07;

.field public final synthetic c:Lid3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid3<",
            "Lcu7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln07;Lid3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln07;",
            "Lid3<",
            "-",
            "Lcu7;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv68$b;->b:Ln07;

    iput-object p2, p0, Lv68$b;->c:Lid3;

    return-void
.end method


# virtual methods
.method public final c(ILe02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lv68$b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lv68$b$a;

    iget v1, v0, Lv68$b$a;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv68$b$a;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv68$b$a;

    invoke-direct {v0, p0, p2}, Lv68$b$a;-><init>(Lv68$b;Le02;)V

    :goto_0
    iget-object p2, v0, Lv68$b$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lv68$b$a;->n:I

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

    if-lez p1, :cond_4

    iget-object p1, p0, Lv68$b;->b:Ln07;

    iget-boolean p2, p1, Ln07;->b:Z

    if-nez p2, :cond_4

    iput-boolean v3, p1, Ln07;->b:Z

    sget-object p1, Lcu7;->START:Lcu7;

    iput v3, v0, Lv68$b$a;->n:I

    iget-object p0, p0, Lv68$b;->c:Lid3;

    invoke-interface {p0, p1, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final bridge synthetic emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lv68$b;->c(ILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
