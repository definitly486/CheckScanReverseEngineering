.class public final synthetic Lqg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/foundation/text/TextLinkScope;

.field public final synthetic d:Lnl3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/TextLinkScope;Lnl3;I)V
    .locals 0

    iput p3, p0, Lqg0;->b:I

    iput-object p1, p0, Lqg0;->c:Landroidx/compose/foundation/text/TextLinkScope;

    iput-object p2, p0, Lqg0;->d:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lqg0;->b:I

    iget-object v1, p0, Lqg0;->d:Lnl3;

    iget-object p0, p0, Lqg0;->c:Landroidx/compose/foundation/text/TextLinkScope;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {p0, v1, p1}, Landroidx/compose/foundation/text/TextLinkScope;->c(Landroidx/compose/foundation/text/TextLinkScope;Lnl3;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {p0, v1, p1}, Landroidx/compose/foundation/text/BasicTextKt;->g(Landroidx/compose/foundation/text/TextLinkScope;Lnl3;Landroidx/compose/ui/text/TextLayoutResult;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
