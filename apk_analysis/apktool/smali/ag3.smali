.class public final synthetic Lag3;
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

    iput p2, p0, Lag3;->b:I

    iput-object p1, p0, Lag3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lag3;->b:I

    iget-object p0, p0, Lag3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/gf0;

    invoke-static {p0}, Lyads/gf0;->f(Lyads/gf0;)Lyads/m23;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/text/TextLinkScope;

    invoke-static {p0}, Landroidx/compose/foundation/text/TextLinkScope;->l(Landroidx/compose/foundation/text/TextLinkScope;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;

    invoke-static {p0}, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->b(Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
