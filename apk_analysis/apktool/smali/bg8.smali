.class public final synthetic Lbg8;
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

    iput p1, p0, Lbg8;->b:I

    iput-object p2, p0, Lbg8;->c:Ljava/lang/Object;

    iput-object p3, p0, Lbg8;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lbg8;->b:I

    iget-object v1, p0, Lbg8;->d:Ljava/lang/Object;

    iget-object p0, p0, Lbg8;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/bo6;

    check-cast v1, Lyads/tm6;

    invoke-static {p0, v1}, Lyads/bo6;->a(Lyads/bo6;Lyads/tm6;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;

    check-cast v1, Ljava/util/List;

    invoke-static {p0, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->b(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Ljava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
