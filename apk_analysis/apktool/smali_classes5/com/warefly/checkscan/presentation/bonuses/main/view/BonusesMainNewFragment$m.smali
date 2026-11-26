.class public final Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$m;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Landroidx/transition/Slide;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$m;->f:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroidx/transition/Slide;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroidx/transition/Slide;-><init>(I)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$m;->f:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->n()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->includeSearch:Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    return-object v0
.end method
