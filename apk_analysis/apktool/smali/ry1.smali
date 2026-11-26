.class public final synthetic Lry1;
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
    iput p1, p0, Lry1;->b:I

    iput-object p2, p0, Lry1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lry1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ldb6;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, Lry1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lry1;->c:Ljava/lang/Object;

    iput-object p2, p0, Lry1;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lry1;->b:I

    iget-object v1, p0, Lry1;->d:Ljava/lang/Object;

    iget-object p0, p0, Lry1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/String;

    check-cast v1, Landroidx/work/impl/model/WorkSpecDao_Impl;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p0, v1, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->m(Ljava/lang/String;Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/sqlite/SQLiteConnection;)Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/lifecycle/MediatorLiveData;

    check-cast v1, Landroidx/arch/core/util/Function;

    invoke-static {p0, v1, p1}, Landroidx/lifecycle/Transformations;->c(Landroidx/lifecycle/MediatorLiveData;Landroidx/arch/core/util/Function;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lnl3;

    check-cast v1, Lnl3;

    invoke-static {p0, v1, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->d(Lnl3;Lnl3;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Ldb6;

    check-cast v1, Ljava/util/Map;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ldb6;->a:Lta6;

    invoke-virtual {p0}, Lnb6;->b()Lwd6;

    move-result-object p0

    sget-object v0, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance p1, Ljava/io/BufferedWriter;

    const/16 v0, 0x2000

    invoke-direct {p1, v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iget-object p0, p0, Lwd6;->a:Lcom/google/gson/Gson;

    new-instance v0, Lgb6;

    invoke-direct {v0}, Lgb6;-><init>()V

    iget-object v0, v0, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/gson/Gson;->m(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_3
    check-cast p0, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static {p0, v1, p1}, Landroidx/compose/material3/OverflowMeasurePolicy;->b(Ljava/util/ArrayList;Ljava/util/List;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lll3;

    check-cast v1, Landroidx/compose/foundation/contextmenu/ContextMenuState;

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-static {p0, v1, p1}, Landroidx/compose/foundation/contextmenu/ContextMenuAreaKt;->c(Lll3;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
