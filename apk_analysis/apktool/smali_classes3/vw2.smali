.class public final synthetic Lvw2;
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

    iput p1, p0, Lvw2;->b:I

    iput-object p2, p0, Lvw2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lvw2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lvw2;->b:I

    iget-object v1, p0, Lvw2;->d:Ljava/lang/Object;

    iget-object p0, p0, Lvw2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/w66;

    check-cast v1, Lyads/e76;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lyads/w66;->a(Lyads/w66;Lyads/e76;Ljava/lang/String;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;

    check-cast v1, Landroidx/window/embedding/EmbeddingCompat;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, v1, p1}, Landroidx/window/embedding/EmbeddingCompat;->a(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingCompat;Ljava/util/List;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
