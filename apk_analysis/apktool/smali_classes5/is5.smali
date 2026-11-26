.class public final Lis5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhd3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lhs5;


# direct methods
.method public constructor <init>(Lhs5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lis5;->b:Lhs5;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lis5$a;

    invoke-direct {v0, p1}, Lis5$a;-><init>(Lid3;)V

    iget-object p0, p0, Lis5;->b:Lhs5;

    invoke-virtual {p0, v0, p2}, Lhs5;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
