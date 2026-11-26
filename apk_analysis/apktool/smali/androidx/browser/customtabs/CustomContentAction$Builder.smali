.class public final Landroidx/browser/customtabs/CustomContentAction$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomContentAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mId:I

.field private final mLabel:Ljava/lang/String;

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mTargetType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Invalid target type: "

    invoke-static {p4, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mId:I

    iput-object p2, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mLabel:Ljava/lang/String;

    iput-object p3, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iput p4, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mTargetType:I

    return-void

    :cond_2
    const-string p0, "Id cannot be set to negative numbers."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p0, "Label cannot be empty."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public build()Landroidx/browser/customtabs/CustomContentAction;
    .locals 6

    new-instance v0, Landroidx/browser/customtabs/CustomContentAction;

    iget v1, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mId:I

    iget-object v2, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mLabel:Ljava/lang/String;

    iget-object v3, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget v4, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mTargetType:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/browser/customtabs/CustomContentAction;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;ILandroidx/browser/customtabs/CustomContentAction$1;)V

    return-object v0
.end method
