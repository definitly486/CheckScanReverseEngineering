.class public final Lg59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lo22;

.field public final c:Ljava/lang/Object;

.field public final d:Lg59$a;


# direct methods
.method public constructor <init>(Lid3;Lo22;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-TT;>;",
            "Lo22;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg59;->b:Lo22;

    invoke-static {p2}, Llt8;->b(Lo22;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lg59;->c:Ljava/lang/Object;

    new-instance p2, Lg59$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lg59$a;-><init>(Lid3;Le02;)V

    iput-object p2, p0, Lg59;->d:Lg59$a;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 2
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

    iget-object v0, p0, Lg59;->c:Ljava/lang/Object;

    iget-object v1, p0, Lg59;->d:Lg59$a;

    iget-object p0, p0, Lg59;->b:Lo22;

    invoke-static {p0, p1, v0, v1, p2}, Lf91;->a(Lo22;Ljava/lang/Object;Ljava/lang/Object;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
