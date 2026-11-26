.class public final Llu4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ldu4;",
        "Ldu4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lju4;


# direct methods
.method public constructor <init>(Lju4;)V
    .locals 0

    iput-object p1, p0, Llu4;->f:Lju4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ldu4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ldu4;->a()D

    move-result-wide v0

    invoke-virtual {p1}, Ldu4;->b()D

    move-result-wide v2

    iget-object p0, p0, Llu4;->f:Lju4;

    invoke-virtual {p0, v0, v1, v2, v3}, Lju4;->f(DD)V

    return-object p1
.end method
