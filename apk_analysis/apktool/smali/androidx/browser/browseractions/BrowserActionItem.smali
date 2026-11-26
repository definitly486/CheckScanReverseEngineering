.class public Landroidx/browser/browseractions/BrowserActionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mAction:Landroid/app/PendingIntent;

.field private mIconId:I

.field private mIconUri:Landroid/net/Uri;

.field private mRunnableAction:Ljava/lang/Runnable;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Landroidx/browser/browseractions/BrowserActionItem;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Landroidx/browser/browseractions/BrowserActionItem;->mTitle:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Landroidx/browser/browseractions/BrowserActionItem;->mAction:Landroid/app/PendingIntent;

    .line 18
    iput p3, p0, Landroidx/browser/browseractions/BrowserActionItem;->mIconId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Landroidx/browser/browseractions/BrowserActionItem;->mTitle:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Landroidx/browser/browseractions/BrowserActionItem;->mAction:Landroid/app/PendingIntent;

    .line 14
    iput-object p3, p0, Landroidx/browser/browseractions/BrowserActionItem;->mIconUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/browseractions/BrowserActionItem;->mTitle:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/browser/browseractions/BrowserActionItem;->mAction:Landroid/app/PendingIntent;

    iput-object p2, p0, Landroidx/browser/browseractions/BrowserActionItem;->mRunnableAction:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getAction()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroidx/browser/browseractions/BrowserActionItem;->mAction:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Can\'t call getAction on BrowserActionItem with null action."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconId()I
    .locals 0

    iget p0, p0, Landroidx/browser/browseractions/BrowserActionItem;->mIconId:I

    return p0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/browser/browseractions/BrowserActionItem;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getRunnableAction()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroidx/browser/browseractions/BrowserActionItem;->mRunnableAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/browser/browseractions/BrowserActionItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method
