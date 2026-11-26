.class public final Lsj1;
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
.field public final synthetic f:Ln07;


# direct methods
.method public constructor <init>(Ln07;)V
    .locals 0

    iput-object p1, p0, Lsj1;->f:Ln07;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lsj1;->f:Ln07;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln07;->b:Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
