.class public final synthetic Lrh0;
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

    iput p2, p0, Lrh0;->b:I

    iput-object p1, p0, Lrh0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lrh0;->b:I

    iget-object p0, p0, Lrh0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, [Lbm3;

    check-cast p1, Lyads/n8;

    invoke-static {p0, p1}, Lyads/yl0;->a([Lbm3;Lyads/n8;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/kv1;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lyads/rg2;->a(Lyads/kv1;Z)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lxo9;

    invoke-static {p0, p1}, Lyads/bt0;->d(Lll3;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    check-cast p1, Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->d(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->c(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Ljava/lang/String;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-static {p0, p1}, Landroidx/compose/material3/NavigationDrawerKt;->s(Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;

    invoke-static {p0, p1}, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->c(Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    check-cast p1, Landroidx/compose/ui/text/input/ImeAction;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->c(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/ImeAction;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Landroidx/compose/foundation/BasicTooltipState;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {p0, p1}, Landroidx/compose/foundation/BasicTooltipKt;->a(Landroidx/compose/foundation/BasicTooltipState;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

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
