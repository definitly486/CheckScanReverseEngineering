.class public final synthetic Lxd8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lzd8;

.field public final synthetic c:Lae8;


# direct methods
.method public synthetic constructor <init>(Lzd8;Lae8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxd8;->b:Lzd8;

    iput-object p2, p0, Lxd8;->c:Lae8;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lxd8;->b:Lzd8;

    iget-object p1, p1, Lzd8;->b:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    iget-object p0, p0, Lxd8;->c:Lae8;

    iget v0, p0, Lae8;->a:I

    iget p0, p0, Lae8;->b:I

    invoke-interface {p1, v0, p0}, Lzd8$a;->onChildQuestionClicked(II)V

    return-void
.end method
