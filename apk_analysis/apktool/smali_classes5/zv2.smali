.class public final Lzv2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lhl3$a;",
        "Lhl3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Loz6;


# direct methods
.method public constructor <init>(Loz6;)V
    .locals 0

    iput-object p1, p0, Lzv2;->f:Loz6;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lhl3$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lhl3;

    iget-object p0, p0, Lzv2;->f:Loz6;

    invoke-direct {v0, p0, p1}, Lhl3;-><init>(Loz6;Lhl3$a;)V

    return-object v0
.end method
