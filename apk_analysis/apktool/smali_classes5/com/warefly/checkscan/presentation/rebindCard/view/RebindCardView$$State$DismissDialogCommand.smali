.class public Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardView$$State$DismissDialogCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DismissDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardView$$State;)V
    .locals 1

    const-string p1, "dismissDialog"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardView;)V
    .locals 0

    .line 6
    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardView;->dismissDialog()V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardView$$State$DismissDialogCommand;->apply(Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardView;)V

    return-void
.end method
