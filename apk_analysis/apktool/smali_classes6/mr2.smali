.class public final synthetic Lmr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lmr2;->b:I

    iput-object p1, p0, Lmr2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmr2;->b:I

    iget-object p0, p0, Lmr2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/List;

    check-cast p1, Lyads/u13;

    invoke-static {p0, p1}, Lyads/yu3;->b(Ljava/util/List;Lyads/u13;)Lyads/s13;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroid/widget/TextView;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lyads/kw5;->a(Landroid/widget/TextView;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/monetization/ads/mediation/interstitial/c;

    check-cast p1, Lyads/q74;

    invoke-static {p0, p1}, Lcom/monetization/ads/mediation/interstitial/c;->a(Lcom/monetization/ads/mediation/interstitial/c;Lyads/q74;)Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter$MediatedInterstitialAdapterListener;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;->c(Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;Ljava/util/List;)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/gestures/DragGestureNode;

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerType;

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode;->a(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/PointerType;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
