.class public final Landroidx/browser/auth/AuthTabSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/auth/AuthTabSession$PendingSession;
    }
.end annotation


# instance fields
.field private final mCallback:Loz3;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mId:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Loz3;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/auth/AuthTabSession;->mCallback:Loz3;

    iput-object p2, p0, Landroidx/browser/auth/AuthTabSession;->mComponentName:Landroid/content/ComponentName;

    iput-object p3, p0, Landroidx/browser/auth/AuthTabSession;->mId:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroidx/browser/auth/AuthTabSession;->mCallback:Loz3;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroidx/browser/auth/AuthTabSession;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getId()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroidx/browser/auth/AuthTabSession;->mId:Landroid/app/PendingIntent;

    return-object p0
.end method
