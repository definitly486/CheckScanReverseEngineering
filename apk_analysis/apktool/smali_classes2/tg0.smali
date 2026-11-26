.class public final synthetic Ltg0;
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

    iput p2, p0, Ltg0;->b:I

    iput-object p1, p0, Ltg0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ltg0;->b:I

    iget-object p0, p0, Ltg0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/material3/internal/FloatProducer;

    invoke-static {p0}, Landroidx/compose/material3/TextFieldKt;->a(Landroidx/compose/material3/internal/FloatProducer;)Landroidx/compose/ui/unit/Dp;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/runtime/State;

    invoke-static {p0}, Landroidx/compose/material3/NavigationBarKt;->i(Landroidx/compose/runtime/State;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-static {p0}, Landroidx/compose/foundation/text/BasicTextKt;->p(Landroidx/compose/runtime/MutableState;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
