.class public final Lif6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lif6;-><init>(Ljf6;Lc4;Lzl2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhd3<",
        "Lzl2$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lhd3;


# direct methods
.method public constructor <init>(Lzs7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lif6$a;->b:Lhd3;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lif6$a$a;

    invoke-direct {v0, p1}, Lif6$a$a;-><init>(Lid3;)V

    iget-object p0, p0, Lif6$a;->b:Lhd3;

    invoke-interface {p0, v0, p2}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
