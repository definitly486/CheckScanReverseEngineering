.class public final synthetic Landroidx/browser/customtabs/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/browser/customtabs/EngagementSignalsCallback;

.field public final synthetic c:I

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/customtabs/j;->b:Landroidx/browser/customtabs/EngagementSignalsCallback;

    iput p2, p0, Landroidx/browser/customtabs/j;->c:I

    iput-object p3, p0, Landroidx/browser/customtabs/j;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/browser/customtabs/j;->c:I

    iget-object v1, p0, Landroidx/browser/customtabs/j;->d:Landroid/os/Bundle;

    iget-object p0, p0, Landroidx/browser/customtabs/j;->b:Landroidx/browser/customtabs/EngagementSignalsCallback;

    invoke-static {p0, v0, v1}, Landroidx/browser/customtabs/CustomTabsSession$2;->f(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V

    return-void
.end method
