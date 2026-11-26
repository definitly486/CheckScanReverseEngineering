.class public final Lola;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/internal/zan;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lola;->a:Landroid/os/Handler;

    return-void
.end method
