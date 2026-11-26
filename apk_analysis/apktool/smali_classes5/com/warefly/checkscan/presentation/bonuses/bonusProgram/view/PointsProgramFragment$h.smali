.class public final Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$h;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->showTerms(Ljava/util/List;)V
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
.field public final synthetic f:Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;

.field public final synthetic g:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;

.field public final synthetic h:Ljz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljz7<",
            "Ljo0;",
            "Lcom/warefly/checkscan/databinding/ItemRewardTermBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;Ljz7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;",
            "Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;",
            "Ljz7<",
            "Ljo0;",
            "Lcom/warefly/checkscan/databinding/ItemRewardTermBinding;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$h;->f:Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$h;->g:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$h;->h:Ljz7;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$h;->f:Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;->overlapShadow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$h;->g:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;

    iget-object v1, v0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->i:Ljava/util/List;

    if-eqz v1, :cond_0

    iput-object v1, v0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->h:Ljava/util/List;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$h;->h:Ljz7;

    invoke-virtual {p0, v1}, Ljz7;->b(Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const-string p0, "allTerms"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
