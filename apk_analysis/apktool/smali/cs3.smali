.class public final synthetic Lcs3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Les3;

.field public final synthetic c:Lsv7$c;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Les3;Lsv7$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcs3;->b:Les3;

    iput-object p2, p0, Lcs3;->c:Lsv7$c;

    iput p3, p0, Lcs3;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcs3;->b:Les3;

    iget-object p1, p1, Les3;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    iget-object v0, p0, Lcs3;->c:Lsv7$c;

    iget v0, v0, Lsv7$c;->c:I

    iget p0, p0, Lcs3;->d:I

    invoke-interface {p1, p0, v0}, Les3$a;->onGroupShopRectangleFavoriteClick(II)V

    return-void
.end method
