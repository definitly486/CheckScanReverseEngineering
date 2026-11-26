.class public final synthetic Ljy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljy2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Ljy2;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/ni1;->f(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    invoke-static {p1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->k(Landroidx/compose/foundation/layout/WindowInsetsHolder;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    invoke-static {p1}, Landroidx/compose/animation/core/VectorConvertersKt;->m(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->T(Ljava/lang/Object;)Landroidx/compose/ui/unit/TextUnitType;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lal1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ltc4;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltc4;-><init>(I)V

    new-instance v0, Lvc4;

    invoke-direct {v0, p0}, Lvc4;-><init>(Lll3;)V

    const-string p0, "JsonPrimitive"

    invoke-virtual {p1, p0, v0}, Lal1;->a(Ljava/lang/String;Lmp7;)V

    new-instance p0, Lqy1;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lqy1;-><init>(I)V

    new-instance v1, Lvc4;

    invoke-direct {v1, p0}, Lvc4;-><init>(Lll3;)V

    const-string p0, "JsonNull"

    invoke-virtual {p1, p0, v1}, Lal1;->a(Ljava/lang/String;Lmp7;)V

    new-instance p0, Lru2;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lru2;-><init>(I)V

    new-instance v1, Lvc4;

    invoke-direct {v1, p0}, Lvc4;-><init>(Lll3;)V

    const-string p0, "JsonLiteral"

    invoke-virtual {p1, p0, v1}, Lal1;->a(Ljava/lang/String;Lmp7;)V

    new-instance p0, Lsu2;

    invoke-direct {p0, v0}, Lsu2;-><init>(I)V

    new-instance v1, Lvc4;

    invoke-direct {v1, p0}, Lvc4;-><init>(Lll3;)V

    const-string p0, "JsonObject"

    invoke-virtual {p1, p0, v1}, Lal1;->a(Ljava/lang/String;Lmp7;)V

    new-instance p0, Ltu2;

    invoke-direct {p0, v0}, Ltu2;-><init>(I)V

    new-instance v0, Lvc4;

    invoke-direct {v0, p0}, Lvc4;-><init>(Lll3;)V

    const-string p0, "JsonArray"

    invoke-virtual {p1, p0, v0}, Lal1;->a(Ljava/lang/String;Lmp7;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
