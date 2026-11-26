.class public final synthetic Lfr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lfr2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lfr2;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProviderKt;->a()Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->B()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Lokhttp3/OkHttpClient;

    invoke-direct {p0}, Lokhttp3/OkHttpClient;-><init>()V

    new-instance v0, Lky0;

    invoke-direct {v0, p0}, Lky0;-><init>(Lokhttp3/OkHttpClient;)V

    return-object v0

    :pswitch_2
    invoke-static {}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->d()Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
