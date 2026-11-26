.class public final synthetic Ldy9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Ldy9;->b:I

    iput-object p2, p0, Ldy9;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldy9;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Ldy9;->b:I

    iget-object v1, p0, Ldy9;->d:Ljava/lang/Object;

    iget-object p0, p0, Ldy9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/p25;

    check-cast v1, Lyads/m4;

    invoke-static {p0, v1}, Lyads/p25;->a(Lyads/p25;Lyads/m4;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/my/tracker/obfuscated/i0;

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {p0, v1}, Lcom/my/tracker/obfuscated/i0;->o(Lcom/my/tracker/obfuscated/i0;Ljava/lang/Boolean;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
