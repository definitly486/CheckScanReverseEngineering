.class public final synthetic Landroidx/browser/customtabs/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/browser/customtabs/EngagementSignalsCallback;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/customtabs/f;->b:Landroidx/browser/customtabs/EngagementSignalsCallback;

    iput-boolean p2, p0, Landroidx/browser/customtabs/f;->c:Z

    iput-object p3, p0, Landroidx/browser/customtabs/f;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Landroidx/browser/customtabs/f;->c:Z

    iget-object v1, p0, Landroidx/browser/customtabs/f;->d:Landroid/os/Bundle;

    iget-object p0, p0, Landroidx/browser/customtabs/f;->b:Landroidx/browser/customtabs/EngagementSignalsCallback;

    invoke-static {p0, v0, v1}, Landroidx/browser/customtabs/CustomTabsSession$1;->g(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V

    return-void
.end method
