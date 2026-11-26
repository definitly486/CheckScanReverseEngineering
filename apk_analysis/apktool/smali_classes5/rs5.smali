.class public final Lrs5;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "La57<",
        "Lb57;",
        ">;",
        "Lus5;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lms5;


# direct methods
.method public constructor <init>(Lts5;Lms5;)V
    .locals 0

    iput-object p2, p0, Lrs5;->f:Lms5;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lrs5;->f:Lms5;

    invoke-static {p0, p1}, Lts5;->b(Lms5;La57;)Lus5;

    move-result-object p0

    return-object p0
.end method
