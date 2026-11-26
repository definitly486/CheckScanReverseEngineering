.class public final Lxg6;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lwg6;

.field public final synthetic g:Lti6;


# direct methods
.method public constructor <init>(Lwg6;Lti6;)V
    .locals 0

    iput-object p1, p0, Lxg6;->f:Lwg6;

    iput-object p2, p0, Lxg6;->g:Lti6;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lxg6;->f:Lwg6;

    iget-object p1, p1, Lwg6;->b:Lwg6$b;

    iget-object p0, p0, Lxg6;->g:Lti6;

    iget p0, p0, Lti6;->a:I

    invoke-interface {p1, p0}, Lwg6$b;->onProductClicked(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
