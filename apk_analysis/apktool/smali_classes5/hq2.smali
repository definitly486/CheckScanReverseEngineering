.class public final synthetic Lhq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhq2;->b:Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;

    iput p2, p0, Lhq2;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    sget p1, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;->q:I

    iget-object p1, p0, Lhq2;->b:Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;

    invoke-virtual {p1}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getDotsClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getPager()Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget p0, p0, Lhq2;->c:I

    if-ge p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->getPager()Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;->b(I)V

    :cond_1
    return-void
.end method
