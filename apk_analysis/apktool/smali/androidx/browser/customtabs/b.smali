.class public final synthetic Landroidx/browser/customtabs/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/browser/auth/AuthTabCallback;

.field public final synthetic c:I

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroidx/browser/auth/AuthTabCallback;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/customtabs/b;->b:Landroidx/browser/auth/AuthTabCallback;

    iput p2, p0, Landroidx/browser/customtabs/b;->c:I

    iput-object p3, p0, Landroidx/browser/customtabs/b;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/browser/customtabs/b;->c:I

    iget-object v1, p0, Landroidx/browser/customtabs/b;->d:Landroid/os/Bundle;

    iget-object p0, p0, Landroidx/browser/customtabs/b;->b:Landroidx/browser/auth/AuthTabCallback;

    invoke-static {p0, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient$2;->g(Landroidx/browser/auth/AuthTabCallback;ILandroid/os/Bundle;)V

    return-void
.end method
