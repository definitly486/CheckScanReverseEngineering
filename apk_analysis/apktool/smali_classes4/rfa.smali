.class public final Lrfa;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lqfa;


# direct methods
.method public constructor <init>(Lqfa;)V
    .locals 0

    iput-object p1, p0, Lrfa;->b:Lqfa;

    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 0

    iget-object p0, p0, Lrfa;->b:Lqfa;

    iget-object p1, p0, Lqfa;->e:Lqfa$b;

    invoke-virtual {p2, p1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p1

    iput-object p1, p0, Lqfa;->d:Landroidx/browser/customtabs/CustomTabsSession;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
