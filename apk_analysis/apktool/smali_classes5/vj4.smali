.class public final Lvj4;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lwj4;",
        "Lcom/warefly/checkscan/subscriptionLanding/databinding/ItemLandingSubtitleBinding;",
        ">;"
    }
.end annotation


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lwj4;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/subscriptionLanding/databinding/ItemLandingSubtitleBinding;

    check-cast p2, Lwj4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/subscriptionLanding/databinding/ItemLandingSubtitleBinding;->tvSubtitle:Landroid/widget/TextView;

    iget-object p1, p2, Lwj4;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
