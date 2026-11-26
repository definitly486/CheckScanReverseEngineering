.class public final synthetic Lto3;
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

    iput p1, p0, Lto3;->b:I

    iput-object p2, p0, Lto3;->c:Ljava/lang/Object;

    iput-object p3, p0, Lto3;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lto3;->b:I

    iget-object v1, p0, Lto3;->d:Ljava/lang/Object;

    iget-object p0, p0, Lto3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/gf0;

    check-cast v1, Landroid/content/Context;

    invoke-static {p0, v1}, Lyads/gf0;->a(Lyads/gf0;Landroid/content/Context;)Lyads/v50;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroid/content/Context;

    check-cast v1, Lyads/cp;

    invoke-static {p0, v1}, Lyads/cp;->a(Landroid/content/Context;Lyads/cp;)Lyads/wg5;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    check-cast v1, Landroidx/compose/runtime/MovableContentStateReference;

    invoke-static {p0, v1}, Landroidx/compose/runtime/GapComposer;->c(Landroidx/compose/runtime/GapComposer;Landroidx/compose/runtime/MovableContentStateReference;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
