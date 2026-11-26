.class public final Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;->showGiftInfo(Lhq3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;

.field public final synthetic g:Lhq3$a;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;Lhq3$a;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$c;->f:Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$c;->g:Lhq3$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$c;->f:Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;

    iget-object p1, p1, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;->presenter:Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$c;->g:Lhq3$a;

    iget-object p0, p0, Lhq3$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;->onActionClicked(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
