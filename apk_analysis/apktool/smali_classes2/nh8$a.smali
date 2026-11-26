.class public final Lnh8$a;
.super Lpp3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnh8;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnh8;


# direct methods
.method public constructor <init>(Lnh8;)V
    .locals 0

    iput-object p1, p0, Lnh8$a;->a:Lnh8;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "ru.vk.store.sdk.install.referrer.GetInstallReferrerCallback"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method
