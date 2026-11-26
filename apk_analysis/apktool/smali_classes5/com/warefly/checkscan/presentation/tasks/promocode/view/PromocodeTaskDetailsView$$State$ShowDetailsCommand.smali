.class public Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView$$State$ShowDetailsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowDetailsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final details:Ltq6;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView$$State;Ltq6;)V
    .locals 1

    const-string p1, "showDetails"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView$$State$ShowDetailsCommand;->details:Ltq6;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView$$State$ShowDetailsCommand;->details:Ltq6;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView;->showDetails(Ltq6;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView$$State$ShowDetailsCommand;->apply(Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView;)V

    return-void
.end method
