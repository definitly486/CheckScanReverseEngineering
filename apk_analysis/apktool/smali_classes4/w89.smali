.class public final synthetic Lw89;
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

    iput p1, p0, Lw89;->b:I

    iput-object p2, p0, Lw89;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw89;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lw89;->b:I

    iget-object v1, p0, Lw89;->d:Ljava/lang/Object;

    iget-object p0, p0, Lw89;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nm;

    check-cast v1, Lyads/ji0;

    invoke-virtual {p0, v1}, Lyads/nm;->d(Lyads/ji0;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/my/tracker/obfuscated/d;

    check-cast v1, Landroid/content/Intent;

    invoke-static {p0, v1}, Lcom/my/tracker/obfuscated/d;->a(Lcom/my/tracker/obfuscated/d;Landroid/content/Intent;)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/webkit/WebView;

    check-cast v1, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
