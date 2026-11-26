.class public final Landroidx/browser/customtabs/CustomContentAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/customtabs/CustomContentAction$Builder;
    }
.end annotation


# static fields
.field static final KEY_ID:Ljava/lang/String; = "androidx.browser.customtabs.customcontentaction.ID"

.field static final KEY_LABEL:Ljava/lang/String; = "androidx.browser.customtabs.customcontentaction.LABEL"

.field static final KEY_PENDING_INTENT:Ljava/lang/String; = "androidx.browser.customtabs.customcontentaction.PENDING_INTENT"

.field static final KEY_TARGET_TYPE:Ljava/lang/String; = "androidx.browser.customtabs.customcontentaction.TARGET_TYPE"


# instance fields
.field private final mId:I

.field private final mLabel:Ljava/lang/String;

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mTargetType:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/browser/customtabs/CustomContentAction;->mId:I

    iput-object p2, p0, Landroidx/browser/customtabs/CustomContentAction;->mLabel:Ljava/lang/String;

    iput-object p3, p0, Landroidx/browser/customtabs/CustomContentAction;->mPendingIntent:Landroid/app/PendingIntent;

    iput p4, p0, Landroidx/browser/customtabs/CustomContentAction;->mTargetType:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;ILandroidx/browser/customtabs/CustomContentAction$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/browser/customtabs/CustomContentAction;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/browser/customtabs/CustomContentAction;
    .locals 6

    const-string v0, "androidx.browser.customtabs.customcontentaction.ID"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "androidx.browser.customtabs.customcontentaction.LABEL"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    const-string v5, "androidx.browser.customtabs.customcontentaction.PENDING_INTENT"

    if-lt v3, v4, :cond_0

    const-class v3, Landroid/app/PendingIntent;

    invoke-virtual {p0, v5, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    :goto_0
    if-eqz v3, :cond_3

    const-string v4, "androidx.browser.customtabs.customcontentaction.TARGET_TYPE"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v4, 0x1

    if-eq p0, v4, :cond_2

    const/4 v4, 0x2

    if-ne p0, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "Invalid target type: "

    invoke-static {p0, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_2
    :goto_1
    new-instance v2, Landroidx/browser/customtabs/CustomContentAction;

    invoke-direct {v2, v0, v1, v3, p0}, Landroidx/browser/customtabs/CustomContentAction;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;I)V

    return-object v2

    :cond_3
    const-string p0, "Bundle is missing required key: androidx.browser.customtabs.customcontentaction.PENDING_INTENT"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_4
    const-string p0, "Bundle is missing required key: androidx.browser.customtabs.customcontentaction.LABEL"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_5
    const-string p0, "Bundle is missing required key: androidx.browser.customtabs.customcontentaction.ID"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Landroidx/browser/customtabs/CustomContentAction;->mId:I

    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/browser/customtabs/CustomContentAction;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroidx/browser/customtabs/CustomContentAction;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getTargetType()I
    .locals 0

    iget p0, p0, Landroidx/browser/customtabs/CustomContentAction;->mTargetType:I

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "androidx.browser.customtabs.customcontentaction.ID"

    iget v2, p0, Landroidx/browser/customtabs/CustomContentAction;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "androidx.browser.customtabs.customcontentaction.LABEL"

    iget-object v2, p0, Landroidx/browser/customtabs/CustomContentAction;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "androidx.browser.customtabs.customcontentaction.PENDING_INTENT"

    iget-object v2, p0, Landroidx/browser/customtabs/CustomContentAction;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "androidx.browser.customtabs.customcontentaction.TARGET_TYPE"

    iget p0, p0, Landroidx/browser/customtabs/CustomContentAction;->mTargetType:I

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
