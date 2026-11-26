.class public final Lfb;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;)V
    .locals 0

    iput-object p1, p0, Lfb;->b:Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lfb;->b:Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->o()Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->showHowToCopyLink()V

    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method
