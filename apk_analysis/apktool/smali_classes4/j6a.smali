.class public final Lj6a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxa;


# static fields
.field public static final synthetic b:Lj6a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj6a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj6a;->b:Lj6a;

    return-void
.end method


# virtual methods
.method public synthetic zza()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zze()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
