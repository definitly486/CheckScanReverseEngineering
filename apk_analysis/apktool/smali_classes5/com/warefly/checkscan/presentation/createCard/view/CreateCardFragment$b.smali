.class public final Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$b;->f:Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$b;->f:Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;

    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentKt;->clearFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const-string p1, "UPRID_RESULT_KEY"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of p2, p1, Lv89;

    if-eqz p2, :cond_0

    check-cast p1, Lv89;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->o()Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;

    move-result-object p0

    invoke-interface {p1, p0}, Lv89;->c(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
