.class public final synthetic Lc86;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llm3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lc86;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lc86;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {p1}, Landroidx/media3/common/Tracks$Group;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ld86$i;

    iget-object p0, p1, Ld86$i;->b:Lio/grpc/d;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
