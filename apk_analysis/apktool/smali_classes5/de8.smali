.class public final Lde8;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lee8;",
        "Lcom/warefly/checkscan/support/databinding/ItemSupportChildTextBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;)V
    .locals 1

    sget-object v0, Lbe8;->c:Lbe8;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lde8;->b:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lee8;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lcom/warefly/checkscan/support/databinding/ItemSupportChildTextBinding;

    check-cast p2, Lee8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/warefly/checkscan/support/databinding/ItemSupportChildTextBinding;->tvText:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lee8;->b:Ljava/lang/String;

    new-instance v0, Lce8;

    const-string v5, "onQuestionTextLinkClicked(Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lde8;->b:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    const-class v3, Lsv6;

    const-string v4, "onQuestionTextLinkClicked"

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1, p2, v0}, Lat8;->a(Landroid/widget/TextView;Ljava/lang/String;Lnl3;)V

    return-void
.end method
