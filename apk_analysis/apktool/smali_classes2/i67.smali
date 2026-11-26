.class public final synthetic Li67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Li67;->b:I

    iput-object p3, p0, Li67;->d:Ljava/lang/Object;

    iput-object p4, p0, Li67;->e:Ljava/lang/Object;

    iput-object p5, p0, Li67;->f:Ljava/lang/Object;

    iput p1, p0, Li67;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Li67;->b:I

    iget-object v1, p0, Li67;->f:Ljava/lang/Object;

    iget-object v2, p0, Li67;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/Modifier;

    iget-object v0, p0, Li67;->e:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroidx/compose/material3/TimePickerColors;

    move-object v3, v1

    check-cast v3, Landroidx/compose/material3/TimePickerState;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v7, p0, Li67;->c:I

    invoke-static/range {v3 .. v8}, Landroidx/compose/material3/TimePickerKt;->i(Landroidx/compose/material3/TimePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerColors;Landroidx/compose/runtime/Composer;II)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    move-object v0, v2

    check-cast v0, Landroidx/compose/runtime/retain/RetainedValuesStoreRegistry;

    move-object v2, v1

    check-cast v2, Lbm3;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Li67;->e:Ljava/lang/Object;

    iget v3, p0, Li67;->c:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/retain/RetainedValuesStoreRegistry;->b(Landroidx/compose/runtime/retain/RetainedValuesStoreRegistry;Ljava/lang/Object;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
