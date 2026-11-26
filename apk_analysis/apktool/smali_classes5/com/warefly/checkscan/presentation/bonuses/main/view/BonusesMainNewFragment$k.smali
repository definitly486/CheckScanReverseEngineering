.class public final Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$k;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$k;->h:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$k;->h:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->changePosSpecialByUser(I)V

    :cond_0
    return-void
.end method
