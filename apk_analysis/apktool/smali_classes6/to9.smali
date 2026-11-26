.class public final synthetic Lto9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lws6;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lto9;->a:I

    iput-object p1, p0, Lto9;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lto9;->a:I

    iget-object p0, p0, Lto9;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->V(Lyads/nq0;)Lyads/lq0;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/bo1;

    invoke-static {p0}, Lyads/bo1;->e(Lyads/bo1;)Lyads/mt1;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
