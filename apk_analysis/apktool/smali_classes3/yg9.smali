.class public final synthetic Lyg9;
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

    iput p1, p0, Lyg9;->b:I

    iput-object p2, p0, Lyg9;->c:Ljava/lang/Object;

    iput-object p3, p0, Lyg9;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lyg9;->b:I

    iget-object v1, p0, Lyg9;->d:Ljava/lang/Object;

    iget-object p0, p0, Lyg9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/ja5;

    check-cast v1, Landroid/app/Activity;

    invoke-static {p0, v1}, Lyads/ja5;->a(Lyads/ja5;Landroid/app/Activity;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    check-cast v1, Landroidx/webkit/WebViewStartUpResult;

    invoke-static {p0, v1}, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->f(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroidx/webkit/WebViewStartUpResult;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
