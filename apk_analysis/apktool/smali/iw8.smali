.class public final synthetic Liw8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Llw8;

.field public final synthetic c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;


# direct methods
.method public synthetic constructor <init>(Llw8;Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liw8;->b:Llw8;

    iput-object p2, p0, Liw8;->c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Liw8;->b:Llw8;

    iget-object p1, p1, Llw8;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    iget-object p0, p0, Liw8;->c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lsq0;

    invoke-interface {p1, p0}, Lrw8;->onHelperTitleWithYellowButtonClick(Lsq0;)V

    return-void
.end method
