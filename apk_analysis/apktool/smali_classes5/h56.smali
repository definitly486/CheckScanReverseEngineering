.class public final Lh56;
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
.field public final synthetic f:Li56;

.field public final synthetic g:Lj56;


# direct methods
.method public constructor <init>(Li56;Lj56;)V
    .locals 0

    iput-object p1, p0, Lh56;->f:Li56;

    iput-object p2, p0, Lh56;->g:Lj56;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lh56;->f:Li56;

    iget-object p1, p1, Li56;->b:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    iget-object p0, p0, Lh56;->g:Lj56;

    invoke-interface {p1, p0}, Lm66$a;->onChipClicked(Lj56;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
