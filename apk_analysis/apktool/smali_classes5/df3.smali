.class public final Ldf3;
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

.field public final synthetic c:Lbm3;


# direct methods
.method public constructor <init>(Lhd3;Lbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf3;->b:Lhd3;

    iput-object p2, p0, Ldf3;->c:Lbm3;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ldf3$a;

    iget-object v1, p0, Ldf3;->c:Lbm3;

    invoke-direct {v0, p1, v1}, Ldf3$a;-><init>(Lid3;Lbm3;)V

    iget-object p0, p0, Ldf3;->b:Lhd3;

    invoke-interface {p0, v0, p2}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
