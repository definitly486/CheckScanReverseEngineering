.class public final synthetic Lii3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lii3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lii3;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/pt1;->a(Ljava/lang/String;)Lyads/pt1;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lyads/ni1;->c(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/f81;->a(Ljava/lang/String;)Lyads/f81;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    invoke-static {p1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->j(Landroidx/compose/foundation/layout/WindowInsetsHolder;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-static {p1}, Landroidx/compose/animation/core/VectorConvertersKt;->p(Landroidx/compose/ui/geometry/Offset;)Landroidx/compose/animation/core/AnimationVector2D;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->S(Ljava/lang/Object;)Landroidx/compose/ui/unit/TextUnit;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    invoke-static {p1}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->e(Landroidx/compose/ui/text/font/TypefaceResult$Immutable;)Lj59;

    move-result-object p0

    return-object p0

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
