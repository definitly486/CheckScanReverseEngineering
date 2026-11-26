.class public final synthetic Leh4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Leh4;->b:I

    iput-object p1, p0, Leh4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Leh4;->b:I

    iget-object p0, p0, Leh4;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/za2;

    invoke-static {p0}, Lyads/za2;->a(Lyads/za2;)Lyads/q10;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/vy2;

    invoke-static {p0}, Lyads/vy2;->a(Lyads/vy2;)Lyads/e85;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->I(Lyads/nq0;)Lyads/ib2;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/work/impl/utils/PreferenceUtils;

    invoke-virtual {p0}, Landroidx/work/impl/utils/PreferenceUtils;->getLastCancelAllTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;->s(Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/runtime/State;

    invoke-static {p0}, Landroidx/compose/material3/NavigationItemKt;->e(Landroidx/compose/runtime/State;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/navigation/NavDeepLink;

    invoke-static {p0}, Landroidx/navigation/NavDeepLink;->g(Landroidx/navigation/NavDeepLink;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    invoke-static {p0}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->a(Landroidx/compose/foundation/pager/PagerState;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lr07;

    invoke-static {p0}, Landroidx/compose/material3/LabelKt;->b(Lr07;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
