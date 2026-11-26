.class public final synthetic Lbj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lbj2;->b:I

    iput-object p1, p0, Lbj2;->c:Ljava/lang/Object;

    iput-object p2, p0, Lbj2;->d:Ljava/lang/Object;

    iput-object p3, p0, Lbj2;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lbj2;->b:I

    iget-object v1, p0, Lbj2;->e:Ljava/lang/Object;

    iget-object v2, p0, Lbj2;->d:Ljava/lang/Object;

    iget-object p0, p0, Lbj2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/tracker/obfuscated/i0;

    check-cast v2, Lcom/my/tracker/obfuscated/i0$c;

    check-cast v1, Ljava/util/List;

    invoke-static {p0, v2, v1}, Lcom/my/tracker/obfuscated/i0;->d(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/i0$c;Ljava/util/List;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    check-cast v2, Ljava/lang/Runnable;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {p0, v2, v1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->m(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
