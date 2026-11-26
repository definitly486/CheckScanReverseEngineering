.class public interface abstract Lrz3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrz3$b;,
        Lrz3$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$support$customtabs$ICustomTabsService"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrz3;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract isEngagementSignalsApiAvailable(Lqz3;Landroid/os/Bundle;)Z
.end method

.method public abstract mayLaunchUrl(Lqz3;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqz3;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract newAuthTabSession(Loz3;Landroid/os/Bundle;)Z
.end method

.method public abstract newSession(Lqz3;)Z
.end method

.method public abstract newSessionWithExtras(Lqz3;Landroid/os/Bundle;)Z
.end method

.method public abstract postMessage(Lqz3;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract prefetch(Lqz3;Landroid/net/Uri;Landroid/os/Bundle;)V
.end method

.method public abstract prefetchWithMultipleUrls(Lqz3;Ljava/util/List;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqz3;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract receiveFile(Lqz3;Landroid/net/Uri;ILandroid/os/Bundle;)Z
.end method

.method public abstract requestPostMessageChannel(Lqz3;Landroid/net/Uri;)Z
.end method

.method public abstract requestPostMessageChannelWithExtras(Lqz3;Landroid/net/Uri;Landroid/os/Bundle;)Z
.end method

.method public abstract setEngagementSignalsCallback(Lqz3;Landroid/os/IBinder;Landroid/os/Bundle;)Z
.end method

.method public abstract updateVisuals(Lqz3;Landroid/os/Bundle;)Z
.end method

.method public abstract validateRelationship(Lqz3;ILandroid/net/Uri;Landroid/os/Bundle;)Z
.end method

.method public abstract warmup(J)Z
.end method
