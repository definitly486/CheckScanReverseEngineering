.class public Lcom/warefly/checkscan/presentation/gift/view/GiftView$$State$ShowGiftInfoCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/gift/view/GiftView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowGiftInfoCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/gift/view/GiftView;",
        ">;"
    }
.end annotation


# instance fields
.field public final info:Lhq3;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/gift/view/GiftView$$State;Lhq3;)V
    .locals 1

    const-string p1, "showGiftInfo"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/gift/view/GiftView$$State$ShowGiftInfoCommand;->info:Lhq3;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/gift/view/GiftView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/gift/view/GiftView$$State$ShowGiftInfoCommand;->info:Lhq3;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/gift/view/GiftView;->showGiftInfo(Lhq3;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/gift/view/GiftView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/gift/view/GiftView$$State$ShowGiftInfoCommand;->apply(Lcom/warefly/checkscan/presentation/gift/view/GiftView;)V

    return-void
.end method
