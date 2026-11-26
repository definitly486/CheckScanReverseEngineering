.class public final synthetic Lfc9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lfc9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lfc9;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/ni1;->e(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    invoke-static {p1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder;)Landroidx/compose/foundation/layout/ValueInsets;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/unit/IntOffset;

    invoke-static {p1}, Landroidx/compose/animation/core/VectorConvertersKt;->k(Landroidx/compose/ui/unit/IntOffset;)Landroidx/compose/animation/core/AnimationVector2D;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
