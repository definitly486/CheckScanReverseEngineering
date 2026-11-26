.class public final synthetic Ljf;
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

    iput p2, p0, Ljf;->b:I

    iput-object p1, p0, Ljf;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ljf;->b:I

    iget-object p0, p0, Ljf;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/x73;

    invoke-static {p0}, Lyads/x73;->b(Lyads/x73;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->q(Lyads/nq0;)Lyads/hh1;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/n32;

    invoke-static {p0}, Lyads/n32;->b(Lyads/n32;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/text/TextDelegate;

    invoke-static {p0}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->b(Landroidx/compose/foundation/text/TextDelegate;)Landroidx/compose/ui/unit/IntSize;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/runtime/Recomposer;

    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->a(Landroidx/compose/runtime/Recomposer;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    invoke-static {p0}, Landroidx/compose/foundation/text/CoreTextFieldKt;->h(Landroidx/compose/foundation/text/LegacyTextFieldState;)Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Li80;

    sget-object v0, Lu80;->a:Lu80$a;

    iget-object p0, p0, Li80;->b:Landroid/content/Context;

    sget-object v1, Lu80;->b:Lu80;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lu80;->b:Lu80;

    if-nez v1, :cond_0

    new-instance v1, Lu80;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lu80;->b:Lu80;

    const-string v2, "com.skydoves.balloon"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    return-object v1

    :pswitch_6
    check-cast p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    invoke-static {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->b(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Landroidx/compose/material3/internal/AnchoredDraggableState;

    invoke-static {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->c(Landroidx/compose/material3/internal/AnchoredDraggableState;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

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
