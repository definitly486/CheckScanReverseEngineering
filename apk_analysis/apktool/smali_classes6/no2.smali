.class public final synthetic Lno2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lno2;->b:I

    iput-object p1, p0, Lno2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lno2;->b:I

    iget-object p0, p0, Lno2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/zp4;

    invoke-static {p0}, Lyads/zp4;->a(Lyads/zp4;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/my/tracker/obfuscated/a;

    invoke-static {p0}, Lcom/my/tracker/obfuscated/a;->d(Lcom/my/tracker/obfuscated/a;)V

    return-void

    :pswitch_1
    check-cast p0, Lf18$a;

    invoke-virtual {p0}, Lf18$a;->invoke()Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
