.class public final Lj24;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj24;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "MLKitImageUtils"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lj24;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj24;->a:Lj24;

    return-void
.end method
