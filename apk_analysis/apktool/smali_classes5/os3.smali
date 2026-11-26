.class public final Los3;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lga3;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Lga3;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxg1;)V
    .locals 0

    iput-object p1, p0, Los3;->f:Lnl3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lga3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Los3;->f:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
