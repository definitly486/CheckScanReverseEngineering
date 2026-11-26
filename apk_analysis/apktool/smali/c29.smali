.class public final synthetic Lc29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lc29;->b:I

    iput-object p2, p0, Lc29;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc29;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lc29;->b:I

    iget-object v1, p0, Lc29;->d:Ljava/lang/Object;

    iget-object p0, p0, Lc29;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/content/Context;

    check-cast v1, Lyads/gf0;

    invoke-static {p0, v1}, Lyads/gf0;->e(Landroid/content/Context;Lyads/gf0;)Lyads/uf5;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    check-cast v1, Landroidx/compose/foundation/text/input/internal/CodepointTransformation;

    invoke-static {p0, v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->a(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
