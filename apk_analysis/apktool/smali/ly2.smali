.class public final synthetic Lly2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lly2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lly2;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lyads/v1;->b(Ljava/lang/ref/WeakReference;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    invoke-static {p1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    invoke-static {p1}, Landroidx/compose/animation/core/VectorConvertersKt;->j(Landroidx/compose/animation/core/AnimationVector1D;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->o(Ljava/lang/Object;)Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->c(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/datastore/core/CorruptionException;

    invoke-static {p1}, Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;->c(Landroidx/datastore/core/CorruptionException;)Lcom/google/firebase/sessions/settings/SessionConfigs;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lnb6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p1, Lnb6;->k:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
