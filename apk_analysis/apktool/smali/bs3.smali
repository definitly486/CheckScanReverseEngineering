.class public final synthetic Lbs3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Les3;

.field public final synthetic c:Lsv7$c;


# direct methods
.method public synthetic constructor <init>(Les3;Lsv7$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbs3;->b:Les3;

    iput-object p2, p0, Lbs3;->c:Lsv7$c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lbs3;->b:Les3;

    iget-object p1, p1, Les3;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    iget-object p0, p0, Lbs3;->c:Lsv7$c;

    iget p0, p0, Lsv7$c;->c:I

    invoke-interface {p1, p0}, Les3$a;->onGroupShopRectangleItemClick(I)V

    return-void
.end method
