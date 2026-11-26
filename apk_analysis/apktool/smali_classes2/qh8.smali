.class public final synthetic Lqh8;
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

    iput p1, p0, Lqh8;->b:I

    iput-object p2, p0, Lqh8;->c:Ljava/lang/Object;

    iput-object p3, p0, Lqh8;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lqh8;->b:I

    iget-object v1, p0, Lqh8;->d:Ljava/lang/Object;

    iget-object p0, p0, Lqh8;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/work/Data;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p0, v1, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->R(Landroidx/work/Data;Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/ui/graphics/Shape;

    check-cast v1, Landroidx/compose/ui/graphics/ColorProducer;

    check-cast p1, Landroidx/compose/ui/draw/CacheDrawScope;

    invoke-static {p0, v1, p1}, Landroidx/compose/material3/internal/TextFieldImplKt;->h(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/tapjoy/TJAdUnitJSBridge;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, p1}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
