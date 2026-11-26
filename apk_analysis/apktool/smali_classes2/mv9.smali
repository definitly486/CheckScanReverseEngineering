.class public final Lmv9;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lx2a;


# direct methods
.method public constructor <init>(Lx2a;)V
    .locals 0

    iput-object p1, p0, Lmv9;->f:Lx2a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmv9;->f:Lx2a;

    iget-object p0, p0, Lx2a;->a:Ld49;

    invoke-virtual {p0}, Ld49;->a()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
