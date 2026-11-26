.class public final synthetic Lx1a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lx1a;->b:I

    iput-object p1, p0, Lx1a;->d:Ljava/lang/Object;

    iput p2, p0, Lx1a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lx1a;->b:I

    iget v1, p0, Lx1a;->c:I

    iget-object p0, p0, Lx1a;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/z1;

    const/4 v0, -0x2

    if-eq v1, v0, :cond_0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/z1;->u()V

    const-string p0, "InterstitialPresenterS4: Audiofocus loss, pausing"

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/my/tracker/obfuscated/m2;

    invoke-static {p0, v1}, Lcom/my/tracker/obfuscated/m2;->d(Lcom/my/tracker/obfuscated/m2;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
