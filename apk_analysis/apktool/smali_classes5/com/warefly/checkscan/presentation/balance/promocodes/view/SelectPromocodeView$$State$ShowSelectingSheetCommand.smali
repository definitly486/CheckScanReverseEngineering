.class public Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView$$State$ShowSelectingSheetCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSelectingSheetCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;",
        ">;"
    }
.end annotation


# instance fields
.field public final selectPromocodeSheet:Lkm7;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView$$State;Lkm7;)V
    .locals 1

    const-string p1, "showSelectingSheet"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView$$State$ShowSelectingSheetCommand;->selectPromocodeSheet:Lkm7;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView$$State$ShowSelectingSheetCommand;->selectPromocodeSheet:Lkm7;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;->showSelectingSheet(Lkm7;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView$$State$ShowSelectingSheetCommand;->apply(Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;)V

    return-void
.end method
