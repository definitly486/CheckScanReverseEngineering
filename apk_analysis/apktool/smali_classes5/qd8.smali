.class public final Lqd8;
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
.field public final synthetic f:Lrd8;

.field public final synthetic g:Lsd8;


# direct methods
.method public constructor <init>(Lrd8;Lsd8;)V
    .locals 0

    iput-object p1, p0, Lqd8;->f:Lrd8;

    iput-object p2, p0, Lqd8;->g:Lsd8;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lqd8;->f:Lrd8;

    iget-object p1, p1, Lrd8;->b:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    iget-object p0, p0, Lqd8;->g:Lsd8;

    iget-object p0, p0, Lsd8;->b:Lod8;

    iget-object p0, p0, Lod8;->b:Ljava/lang/String;

    invoke-interface {p1, p0}, Lhf8$a;->onQuestionActionClicked(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
