.class public final synthetic Lat0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 11
    iput p1, p0, Lat0;->b:I

    iput-object p2, p0, Lat0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lat0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/SheetState;Lll3;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lat0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lat0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lat0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lat0;->b:I

    iget-object v1, p0, Lat0;->c:Ljava/lang/Object;

    iget-object p0, p0, Lat0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/mv1;

    check-cast v1, Lyads/i05;

    check-cast p1, Lyads/hd3;

    invoke-static {p0, v1, p1}, Lyads/rg2;->a(Lyads/mv1;Lyads/i05;Lyads/hd3;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast v1, Landroidx/compose/material3/SheetState;

    check-cast p0, Lll3;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p0, p1}, Landroidx/compose/material3/ModalBottomSheetKt;->q(Landroidx/compose/material3/SheetState;Lll3;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ly22;

    check-cast v1, Landroidx/compose/material3/SheetState;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, v1, p1}, Landroidx/compose/material3/BottomSheetScaffoldKt;->i(Ly22;Landroidx/compose/material3/SheetState;F)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
