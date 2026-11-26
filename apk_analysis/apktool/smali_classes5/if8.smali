.class public final Lif8;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
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
.field public final synthetic f:Lhf8;

.field public final synthetic g:Ljf8;


# direct methods
.method public constructor <init>(Lhf8;Ljf8;)V
    .locals 0

    iput-object p1, p0, Lif8;->f:Lhf8;

    iput-object p2, p0, Lif8;->g:Ljf8;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lif8;->f:Lhf8;

    iget-object p1, p1, Lhf8;->b:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    iget-object p0, p0, Lif8;->g:Ljf8;

    iget-object v0, p0, Ljf8;->a:Lff8;

    iget v0, v0, Lff8;->a:I

    iget-boolean p0, p0, Ljf8;->b:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, v0, p0}, Lhf8$a;->onQuestionCollapseClicked(IZ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
