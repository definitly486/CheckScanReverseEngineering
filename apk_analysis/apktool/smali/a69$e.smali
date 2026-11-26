.class public final La69$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La69;->d(Lnu5;)V
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
.field public final synthetic f:Lnu5;

.field public final synthetic g:Ls59;


# direct methods
.method public constructor <init>(Lnu5;Ls59;)V
    .locals 0

    iput-object p1, p0, La69$e;->f:Lnu5;

    iput-object p2, p0, La69$e;->g:Ls59;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, La69$e;->f:Lnu5;

    invoke-interface {v0}, Lnu5;->b()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ls59$a$a;

    sget-object v2, Lj69;->NO_CONTENT:Lj69;

    invoke-direct {v1, v2}, Ls59$a$a;-><init>(Lj69;)V

    iget-object p0, p0, La69$e;->g:Ls59;

    invoke-virtual {p0, v0, v1}, Ls59;->c(Lnu5;Ls59$a;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
