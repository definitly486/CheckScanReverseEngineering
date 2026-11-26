.class public final Lfn9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lfn9;


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lfn9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lfn9;->b:Lfn9;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    return-void
.end method
