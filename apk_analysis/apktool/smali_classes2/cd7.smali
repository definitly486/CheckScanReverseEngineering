.class public final synthetic Lcd7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcd7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcd7;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/compose/foundation/style/StyleStateKey;

    check-cast p2, Landroidx/compose/foundation/style/StyleState;

    invoke-static {p1, p2}, Landroidx/compose/foundation/style/StyleStateKt;->b(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast p2, Landroidx/compose/ui/text/style/LineBreak;

    invoke-static {p1, p2}, Landroidx/compose/ui/text/Savers_androidKt;->g(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/style/LineBreak;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
