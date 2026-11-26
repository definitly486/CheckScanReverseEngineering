.class public final Lcn7;
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
.field public final synthetic f:Len7;

.field public final synthetic g:Lzn7;


# direct methods
.method public constructor <init>(Len7;Lzn7;)V
    .locals 0

    iput-object p1, p0, Lcn7;->f:Len7;

    iput-object p2, p0, Lcn7;->g:Lzn7;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcn7;->f:Len7;

    iget-object p1, p1, Len7;->b:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    iget-object p0, p0, Lcn7;->g:Lzn7;

    iget p0, p0, Lzn7;->a:I

    invoke-interface {p1, p0}, Lco7;->onSelectionClicked(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
