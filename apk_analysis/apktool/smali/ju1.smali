.class public final synthetic Lju1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lju1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lju1;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lyads/wq0;->d()Lyads/f14;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProviderKt;->b()Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Landroidx/activity/ImmLeaksCleaner;->a()Landroidx/activity/ImmLeaksCleaner$Cleaner;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->s()Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Landroidx/compose/runtime/tooling/CompositionErrorContextKt;->a()Landroidx/compose/runtime/tooling/CompositionErrorContext;

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
