.class public Landroidx/browser/auth/AuthTabSession$PendingSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/auth/AuthTabSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingSession"
.end annotation


# instance fields
.field private final mCallback:Landroidx/browser/auth/AuthTabCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mId:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/browser/auth/AuthTabCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/auth/AuthTabSession$PendingSession;->mId:Landroid/app/PendingIntent;

    iput-object p2, p0, Landroidx/browser/auth/AuthTabSession$PendingSession;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/browser/auth/AuthTabSession$PendingSession;->mCallback:Landroidx/browser/auth/AuthTabCallback;

    return-void
.end method


# virtual methods
.method public getCallback()Landroidx/browser/auth/AuthTabCallback;
    .locals 0

    iget-object p0, p0, Landroidx/browser/auth/AuthTabSession$PendingSession;->mCallback:Landroidx/browser/auth/AuthTabCallback;

    return-object p0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/browser/auth/AuthTabSession$PendingSession;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public getId()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroidx/browser/auth/AuthTabSession$PendingSession;->mId:Landroid/app/PendingIntent;

    return-object p0
.end method
