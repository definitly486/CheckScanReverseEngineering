.class public final synthetic Lkg4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lkg4;->b:I

    iput-object p1, p0, Lkg4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lkg4;->b:I

    iget-object p0, p0, Lkg4;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/foundation/text/selection/Selection;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionContainerKt;->f(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/text/selection/Selection;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroid/content/Context;

    check-cast p1, Ltc5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Landroid/app/Application;

    const-class v1, Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v6, Llg4;

    invoke-direct {v6, p0}, Llg4;-><init>(Landroid/content/Context;)V

    sget-object v7, Lcg4;->Singleton:Lcg4;

    new-instance v2, Lgi0;

    const-class p0, Landroid/app/Application;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v4

    sget-object v3, Lbf7;->e:Lba8;

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    new-instance p0, Lm08;

    invoke-direct {p0, v2}, Ld64;-><init>(Lgi0;)V

    invoke-virtual {p1, p0}, Ltc5;->a(Ld64;)V

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    iget-object v1, v2, Lgi0;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Loe4;->a(Lne4;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Ltc5;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v5, Lmg4;

    invoke-direct {v5, p0}, Lmg4;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcg4;->Singleton:Lcg4;

    move-object p0, v1

    new-instance v1, Lgi0;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    sget-object v2, Lbf7;->e:Lba8;

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v1, p1}, Lu4;->d(Lgi0;Ltc5;)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
