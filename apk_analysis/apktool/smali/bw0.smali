.class public final synthetic Lbw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Ldw0;

.field public final synthetic c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvSeeAllButtonBinding;


# direct methods
.method public synthetic constructor <init>(Ldw0;Lcom/warefly/checkscan/bonuses/databinding/ItemRvSeeAllButtonBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbw0;->b:Ldw0;

    iput-object p2, p0, Lbw0;->c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvSeeAllButtonBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lbw0;->b:Ldw0;

    iget-object p1, p1, Ldw0;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    iget-object p0, p0, Lbw0;->c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvSeeAllButtonBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSeeAllButtonBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Ldw0$a;->onButtonSeeAllClick(I)V

    return-void
.end method
