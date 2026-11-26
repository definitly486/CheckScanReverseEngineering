.class public final synthetic Lhh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lhh0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lhh0;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->M()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    invoke-static {}, Landroidx/compose/foundation/text/BasicText_androidKt;->c()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
