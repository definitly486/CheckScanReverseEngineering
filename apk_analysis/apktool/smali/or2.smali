.class public final synthetic Lor2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lor2;->b:I

    iput-object p1, p0, Lor2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lor2;->b:I

    iget-object p0, p0, Lor2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->n0(Lyads/nq0;)Lyads/ti2;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/window/core/Version;

    invoke-static {p0}, Landroidx/window/core/Version;->a(Landroidx/window/core/Version;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;->z(Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->e(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

    invoke-static {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->C(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;

    invoke-static {p0}, Landroidx/camera/video/internal/muxer/Media3MuxerImpl;->d(Landroidx/camera/video/internal/muxer/Media3MuxerImpl;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-static {p0}, Landroidx/compose/material3/DragHandleKt;->d(Landroidx/compose/runtime/MutableState;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
