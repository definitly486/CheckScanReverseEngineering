.class public final synthetic Lfh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p2, p0, Lfh0;->b:I

    iput-object p1, p0, Lfh0;->c:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lfh0;->b:I

    iget-object p0, p0, Lfh0;->c:Landroidx/compose/runtime/MutableState;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;->a(Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;D)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/BasicTextKt;->n(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
