.class public final Lrv2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Throwable;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Luv2;


# direct methods
.method public constructor <init>(Luv2;)V
    .locals 0

    iput-object p1, p0, Lrv2;->f:Luv2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lrv2;->f:Luv2;

    iget p1, p0, Luv2;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Luv2;->d:I

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
