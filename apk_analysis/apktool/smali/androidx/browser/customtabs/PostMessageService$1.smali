.class Landroidx/browser/customtabs/PostMessageService$1;
.super Lvz3$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/PostMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/customtabs/PostMessageService;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/PostMessageService;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/customtabs/PostMessageService$1;->this$0:Landroidx/browser/customtabs/PostMessageService;

    invoke-direct {p0}, Lvz3$a;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onMessageChannelReady(Lqz3;Landroid/os/Bundle;)V
    .locals 0

    invoke-interface {p1, p2}, Lqz3;->onMessageChannelReady(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostMessage(Lqz3;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-interface {p1, p2, p3}, Lqz3;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
