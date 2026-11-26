.class public final La69$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La69;->e(Lnu5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Ls59;

.field public final synthetic g:Lnu5;


# direct methods
.method public constructor <init>(Lnu5;Ls59;)V
    .locals 0

    iput-object p2, p0, La69$d;->f:Ls59;

    iput-object p1, p0, La69$d;->g:Lnu5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ls59$a$a;

    sget-object v1, Lj69;->REQUEST_FAILED:Lj69;

    invoke-direct {v0, v1}, Ls59$a$a;-><init>(Lj69;)V

    iget-object v1, p0, La69$d;->f:Ls59;

    iget-object p0, p0, La69$d;->g:Lnu5;

    invoke-virtual {v1, p0, v0}, Ls59;->c(Lnu5;Ls59$a;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
