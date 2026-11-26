.class public final synthetic Lmc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageCapture$ScreenFlashListener;
.implements Lcom/google/common/collect/q$b;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lmc3;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmc3;->b:Ljava/lang/Object;

    check-cast p0, Li95;

    invoke-virtual {p0, p2}, Li95;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public onCompleted()V
    .locals 0

    iget-object p0, p0, Lmc3;->b:Ljava/lang/Object;

    check-cast p0, Lyp1;

    invoke-static {p0}, Landroidx/camera/camera2/impl/FlashControl;->b(Lyp1;)V

    return-void
.end method
