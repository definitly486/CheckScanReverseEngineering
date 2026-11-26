.class public interface abstract Lyz3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyz3$a;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$support$customtabs$trusted$ITrustedWebActivityService"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lyz3;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract areNotificationsEnabled(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract cancelNotification(Landroid/os/Bundle;)V
.end method

.method public abstract extraCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;)Landroid/os/Bundle;
.end method

.method public abstract getActiveNotifications()Landroid/os/Bundle;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract getSmallIconBitmap()Landroid/os/Bundle;
.end method

.method public abstract getSmallIconId()I
.end method

.method public abstract notifyNotificationWithChannel(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method
