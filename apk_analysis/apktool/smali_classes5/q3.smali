.class public final synthetic Lq3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Lcom/google/common/collect/q$b;
.implements Landroidx/compose/ui/graphics/colorspace/DoubleFunction;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lyads/ci4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lq3;->b:I

    iput-object p1, p0, Lq3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lq3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/s;

    check-cast p2, Ljava/util/Collection;

    check-cast p0, Lcom/google/common/collect/r;

    check-cast p2, Ljava/util/List;

    new-instance v0, Lig5;

    invoke-direct {v0, p0, p1}, Lig5;-><init>(Lcom/google/common/collect/r;Ljava/lang/Object;)V

    invoke-static {p2, v0}, Lyr4;->c(Ljava/util/List;Llm3;)Ljava/util/AbstractList;

    move-result-object p0

    return-object p0
.end method

.method public a(Lyads/dh4;)Z
    .locals 0

    .line 20
    iget-object p0, p0, Lq3;->c:Ljava/lang/Object;

    check-cast p0, Lyads/ae4;

    invoke-static {p0, p1}, Lyads/ae4;->b(Lyads/ae4;Lyads/dh4;)Z

    move-result p0

    return p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lq3;->b:I

    iget-object p0, p0, Lq3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb36;

    return-object p0

    :pswitch_0
    check-cast p0, Lr61;

    invoke-virtual {p0, p1}, Lr61;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll17;

    return-object p0

    :pswitch_1
    check-cast p0, Lg4;

    invoke-virtual {p0, p1}, Lg4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(D)D
    .locals 0

    iget-object p0, p0, Lq3;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->d(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public onActivityResult(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lq3;->c:Ljava/lang/Object;

    check-cast p0, Lvf9;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lvf9;->b:Landroid/webkit/PermissionRequest;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-object v0, p0, Lvf9;->b:Landroid/webkit/PermissionRequest;

    invoke-virtual {p0, p1}, Lvf9;->a(Landroid/webkit/PermissionRequest;)V

    :cond_0
    iget-object p1, p0, Lvf9;->d:Landroid/webkit/GeolocationPermissions$Callback;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lvf9;->c:Ljava/lang/String;

    iput-object v0, p0, Lvf9;->d:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object v0, p0, Lvf9;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lvf9;->b(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    :cond_1
    return-void
.end method
